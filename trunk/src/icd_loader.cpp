/*
	FreeOCL - a free OpenCL implementation for CPU
	Copyright (C) 2011  Roland Brochard

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU Lesser General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU Lesser General Public License for more details.

	You should have received a copy of the GNU Lesser General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>
*/
#include "icd_loader.h"
#include "platform.h"
#include <cstdio>
#include <fstream>
#include <dlfcn.h>
#include <cstdlib>

namespace FreeOCL
{
	icd_loader icd_loader_instance;

	std::string icd_loader::run_command(const std::string &cmd)
	{
		std::string result;
		FILE *file = popen(cmd.c_str(), "r");
		if (!file)
			return result;

		int c;
		while((c = fgetc(file)) != -1 && !feof(file))
			result += (char)c;
		pclose(file);

		return result;
	}

	std::string icd_loader::trim(const std::string &s)
	{
		if (s.empty())
			return s;
		const size_t start = s.find_first_not_of(" \t\n\r");
		const size_t end = s.find_last_not_of(" \t\n\r");
		if (start == end)
			return std::string();
		return s.substr(start, end - start + 1);
	}

	std::deque<std::string> icd_loader::split(const std::string &s, const std::string &sep)
	{
		std::deque<std::string> result;

		size_t pos = s.find_first_not_of(sep, 0);
		if (pos != -1)
			do
			{
				const size_t next = s.find_first_of(sep, pos);
				result.push_back(s.substr(pos, next - pos));
				if (next != std::string::npos)
					pos = s.find_first_not_of(sep, next);
				else
					pos = std::string::npos;
			} while(pos != std::string::npos);

		return result;
	}

	icd_loader::icd_loader()
	{
		// Get the list of all *.icd files in /etc/OpenCL/vendors/
		std::deque<std::string> files = split(trim(run_command("ls -1 /etc/OpenCL/vendors/*.icd 2>/dev/null")), "\n");
		// For each file
		for(std::deque<std::string>::const_iterator i = files.begin() ; i != files.end() ; ++i)
		{
			std::ifstream file(i->c_str(), std::ios_base::in);
			if (!file.is_open())
				continue;
			// Read the corresponding library name
			std::string lib;
			file >> lib;
			// And load it
			load(lib);
			file.close();
		}
	}

	icd_loader::~icd_loader()
	{

	}

	void icd_loader::load(const std::string &lib)
	{
#define FAIL()	return

		void *handle = dlopen(lib.c_str(), RTLD_NOW | RTLD_LOCAL);

		// If dlopens fails, stop here
		if (!handle)
			FAIL();
		typedef cl_int (*fn_clIcdGetPlatformIDsKHR) (cl_uint, cl_platform_id *, cl_uint *);
		typedef cl_int (*fn_clGetPlatformInfo) (cl_platform_id, cl_platform_info, size_t, void *, size_t *);
		typedef void* (*fn_clGetExtensionFunctionAddress) (const char *funcname);
		fn_clIcdGetPlatformIDsKHR __clIcdGetPlatformIDsKHR = (fn_clIcdGetPlatformIDsKHR) dlsym(handle, "clIcdGetPlatformIDsKHR");
		fn_clGetPlatformInfo __clGetPlatformInfo = (fn_clGetPlatformInfo) dlsym(handle, "clGetPlatformInfo");
		fn_clGetExtensionFunctionAddress __clGetExtensionFunctionAddress = (fn_clGetExtensionFunctionAddress) dlsym(handle, "clGetExtensionFunctionAddress");

		// If we don't find all the required functions but if we have
		// the one which can let us query them, let's do it this way
		if (__clGetExtensionFunctionAddress)
		{
			if (!__clIcdGetPlatformIDsKHR)
				__clIcdGetPlatformIDsKHR = (fn_clIcdGetPlatformIDsKHR) __clGetExtensionFunctionAddress("clIcdGetPlatformIDsKHR");
			if (!__clGetPlatformInfo)
				__clGetPlatformInfo = (fn_clGetPlatformInfo) __clGetExtensionFunctionAddress("clGetPlatformInfo");
		}

		// If any of these function is missing we must stop
		if (!__clGetExtensionFunctionAddress
			|| !__clGetPlatformInfo
			|| !__clIcdGetPlatformIDsKHR)
			FAIL();

		cl_uint n;
		cl_int err;
		err = __clIcdGetPlatformIDsKHR(0, NULL, &n);
		if (err != CL_SUCCESS)
			FAIL();

		if (n == 0)		// If this ICD is useless
			FAIL();

		std::vector<cl_platform_id> platforms;
		platforms.resize(n);
		err = __clIcdGetPlatformIDsKHR(n, &(platforms.front()), NULL);
		if (err != CL_SUCCESS)
			FAIL();

		icd_lib icdlib;
		icdlib.handle = handle;
		icdlib.lib = lib;
		icdlib.__clGetExtensionFunctionAddress = __clGetExtensionFunctionAddress;

		// Check those platforms for the cl_khr_icd extension
		for(size_t i = 0 ; i < n ; ++i)
		{
			size_t size;
			err = __clGetPlatformInfo(platforms[i], CL_PLATFORM_EXTENSIONS, 0, NULL, &size);
			if (err != CL_SUCCESS || size == 0)
				continue;
			char *s = (char*)malloc(size);
			if (s == NULL)
				continue;

			err = __clGetPlatformInfo(platforms[i], CL_PLATFORM_EXTENSIONS, size, s, NULL);
			if (err != CL_SUCCESS)
				continue;
			const bool bICDsupported = strstr(s, "cl_khr_icd") != NULL;
			free(s);

			if (!bICDsupported)
				continue;

			err = __clGetPlatformInfo(platforms[i], CL_PLATFORM_ICD_SUFFIX_KHR, 0, NULL, &size);
			if (err != CL_SUCCESS || size == 0)
				continue;

			std::string vendor_icd_extension_suffix;
			vendor_icd_extension_suffix.resize(size);
			err = __clGetPlatformInfo(platforms[i], CL_PLATFORM_ICD_SUFFIX_KHR, size, &(*vendor_icd_extension_suffix.begin()), NULL);
			if (err != CL_SUCCESS)
				continue;

			cl_uint nb_devices;
			err = platforms[i]->dispatch->clGetDeviceIDs(platforms[i], CL_DEVICE_TYPE_ALL, 0, NULL, &nb_devices);
			if (err != CL_SUCCESS || nb_devices == 0)		// We need the device list to check for valid devices
				continue;
			std::vector<cl_device_id> devices;
			devices.resize(nb_devices);
			err = platforms[i]->dispatch->clGetDeviceIDs(platforms[i], CL_DEVICE_TYPE_ALL, nb_devices, &(devices.front()), NULL);
			if (err != CL_SUCCESS)
				continue;

			icdlib.platforms.push_back(std::make_pair(platforms[i], vendor_icd_extension_suffix));
			v_platforms.push_back(platforms[i]);
			valid_platforms.insert(platforms[i]);
			valid_devices.insert(devices.begin(), devices.end());
		}

		// All returned platforms were invalid
		if (icdlib.platforms.empty())
			FAIL();

		libs.push_back(icdlib);
	}
}
