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
#ifndef __FREEOCL_OPENCL_C_PREINCLUDE_WORKITEM_H__
#define __FREEOCL_OPENCL_C_PREINCLUDE_WORKITEM_H__
#include "FreeOCL/config.h"
#ifdef FREEOCL_USE_OPENMP
#include <omp.h>
#endif

namespace FreeOCL
{
	static uint dim;
	static size_t global_size[3];
	static size_t global_offset[3];
	static size_t local_size[3];
	static size_t group_id[3];
	static size_t num_groups[3];
	static size_t thread_num;
#ifdef FREEOCL_USE_OPENMP
#pragma omp threadprivate(thread_num)
#pragma omp threadprivate(group_id)
#endif
}

// Built-in work-item functions
inline uint get_work_dim()
{
	return FreeOCL::dim;
}

inline size_t get_global_size(uint dimindx)
{
	return dimindx < FreeOCL::dim ? FreeOCL::global_size[dimindx] : 1;
}

inline size_t get_local_id(uint dimindx);
inline size_t get_global_id(uint dimindx)
{
	return dimindx < FreeOCL::dim ? FreeOCL::group_id[dimindx] * FreeOCL::local_size[dimindx] + get_local_id(dimindx) + FreeOCL::global_offset[dimindx] : 0;
}

inline size_t get_local_size(uint dimindx)
{
	return dimindx < FreeOCL::dim ? FreeOCL::local_size[dimindx] : 1;
}
inline size_t get_thread_num();
inline size_t get_local_id(uint dimindx)
{
	switch(dimindx)
	{
	case 0:
		return get_thread_num() % FreeOCL::local_size[0];
	case 1:
		return (get_thread_num() / FreeOCL::local_size[0]) % FreeOCL::local_size[1];
	case 2:
		return (get_thread_num() / FreeOCL::local_size[0]) / FreeOCL::local_size[1];
	default:
		return -1;
	}
}

inline size_t get_num_groups(uint dimindx)
{
	return dimindx < FreeOCL::dim ? FreeOCL::num_groups[dimindx] : 1;
}

inline size_t get_group_id(uint dimindx)
{
	return FreeOCL::group_id[dimindx];
}

inline size_t get_global_offset(uint dimindx)
{
	return dimindx < FreeOCL::dim ? FreeOCL::global_offset[dimindx] : 0;
}

inline size_t get_thread_num()
{
	return FreeOCL::thread_num;
}
#endif
