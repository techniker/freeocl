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
#ifndef __FREEOCL_PROGRAM_H__
#define __FREEOCL_PROGRAM_H__

#include "freeocl.h"
#include <string>

struct _cl_program : public FreeOCL::icd_table, public FreeOCL::ref_counter, public FreeOCL::mutex, public FreeOCL::valid_flag
{
	_cl_program();
	~_cl_program();

	cl_context context;
	std::string source_code;

	std::vector<cl_device_id> devices;

	void *handle;
	std::string binary_file;
	cl_build_status build_status;
	std::string build_options;
	std::string build_log;
};

#endif