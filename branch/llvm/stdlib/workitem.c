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

#include "types.h"

extern __size_t __FreeOCL_dim;
extern __size_t __FreeOCL_global_size[3];
extern __size_t __FreeOCL_global_offset[3];
extern __size_t __FreeOCL_local_size[3];
extern __size_t __FreeOCL_num_groups[3];

typedef struct
{
	__size_t group_id[3];
	__char *local_memory;
	__char *scheduler;
	__char *threads;
	__size_t thread_num;
} __FreeOCL_lts_t;

// Built-in work-item functions
__uint get_work_dim()
{
	return __FreeOCL_dim;
}

__size_t get_global_size(__uint dimindx)
{
	return dimindx < __FreeOCL_dim ? __FreeOCL_global_size[dimindx] : 1;
}

__size_t get_local_id(const __FreeOCL_lts_t *lts, __uint dimindx);
__size_t _Z13get_global_idj(const __FreeOCL_lts_t *lts, __uint dimindx)
{
	return dimindx < __FreeOCL_dim ? lts->group_id[dimindx] * __FreeOCL_local_size[dimindx] + get_local_id(lts, dimindx) + __FreeOCL_global_offset[dimindx] : 0;
}

__size_t get_local_size(__uint dimindx)
{
	return dimindx < __FreeOCL_dim ? __FreeOCL_local_size[dimindx] : 1;
}

__size_t get_thread_num(const __FreeOCL_lts_t *lts);
__size_t get_local_id(const __FreeOCL_lts_t *lts, __uint dimindx)
{
	switch(dimindx)
	{
	case 0:
		return get_thread_num(lts) % __FreeOCL_local_size[0];
	case 1:
		return (get_thread_num(lts) / __FreeOCL_local_size[0]) % __FreeOCL_local_size[1];
	case 2:
		return (get_thread_num(lts) / __FreeOCL_local_size[0]) / __FreeOCL_local_size[1];
	default:
		return -1;
	}
}

__size_t get_num_groups(__uint dimindx)
{
	return dimindx < __FreeOCL_dim ? __FreeOCL_num_groups[dimindx] : 1;
}

__size_t get_group_id(const __FreeOCL_lts_t *lts, __uint dimindx)
{
	return lts->group_id[dimindx];
}

__size_t get_global_offset(__uint dimindx)
{
	return dimindx < __FreeOCL_dim ? __FreeOCL_global_offset[dimindx] : 0;
}

__size_t get_thread_num(const __FreeOCL_lts_t *lts)
{
	return lts->thread_num;
}

