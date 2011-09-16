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
#ifndef __FREEOCL_FREEOCL_H__
#define __FREEOCL_FREEOCL_H__

#include "../config.h"
#if defined(__APPLE__) || defined(__MACOSX)
#include <OpenCL/cl.hpp>
#else
#include <CL/cl.hpp>
#endif
#include <string>
#include <unordered_set>
#include "mutex.h"
#include "dispatch.h"
#include <iostream>
#include <deque>

#ifdef DEBUG_UTILS
#define MSG(X)	std::cout << #X << std::endl
#define CRASH()	(*((int*)NULL) = 0)
#else
#define MSG(X)
#define CRASH()
#endif

namespace FreeOCL
{
	extern cl_platform_id platform;
	extern cl_device_id device;
	extern std::unordered_set<cl_context> valid_contexts;
	extern std::unordered_set<cl_command_queue> valid_command_queues;
	extern std::unordered_set<cl_mem> valid_mems;
	extern std::unordered_set<cl_event> valid_events;
	extern std::unordered_set<cl_kernel> valid_kernels;
	extern std::unordered_set<cl_program> valid_programs;
	extern std::unordered_set<cl_sampler> valid_samplers;
	extern mutex global_mutex;
	extern _cl_icd_dispatch dispatch;

	bool is_valid(cl_context);
	bool is_valid(cl_command_queue);
	bool is_valid(cl_mem);
	bool is_valid(cl_event);
	bool is_valid(cl_program);
	bool is_valid(cl_kernel);
	bool is_valid(cl_device_id);
	bool is_valid(cl_platform_id);
	bool is_valid(cl_sampler);

	bool copy_memory_within_limits(const void *src, const size_t size, const size_t maxSize, void *dst, size_t *s);

	std::string run_command(const std::string &cmd, int *ret = NULL);
	long int parse_int(const std::string &s);
	std::string trim(const std::string &s);
	std::deque<std::string> split(const std::string &s, const std::string &sep);
	bool contains_word(const std::string &s, const std::string &w);

	u_int64_t usec_timer();

	struct icd_table
	{
		struct _cl_icd_dispatch *dispatch;

		inline icd_table() : dispatch(&FreeOCL::dispatch)	{}
	};

	struct ref_counter
	{
		inline ref_counter() : ref_count(1)	{}		// Implicit retain

		inline const cl_uint &get_ref_count() const	{	return ref_count;	}
		inline void retain()	{	++ref_count;	}
		inline void release()	{	--ref_count;	}

	private:
		cl_uint ref_count;
	};

	struct valid_flag
	{
		enum { bHasValidationFlag = true };

		inline valid_flag() : bValid(true)	{}
		inline bool valid() const	{	return bValid;	}
		inline void invalidate() const	{	bValid = false;	}
	private:
		mutable volatile bool bValid;
	};

	struct context_resource
	{
		context_resource(cl_context context)
			: context(context)
		{}

		~context_resource();

		const cl_context context;
	};
}

#endif
