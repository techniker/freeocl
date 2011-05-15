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
#ifndef __FREEOCL_OPENCL_C_PREINCLUDE_SYNC_H__
#define __FREEOCL_OPENCL_C_PREINCLUDE_SYNC_H__

enum cl_mem_fence_flags
{
	CLK_LOCAL_MEM_FENCE,
	CLK_GLOBAL_MEM_FENCE
};

// Built-in synchronization functions
inline void barrier(cl_mem_fence_flags /*flags*/)
{
#pragma omp barrier
}

#endif