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

typedef struct
{
	__size_t group_id[3];
	__char *local_memory;
	__char *scheduler;
	__char *threads;
	__size_t thread_num;
} __FreeOCL_lts_t;

void _Z7barrieri(__FreeOCL_lts_t *lts, int flags);

typedef __uint event_t;

//// Built-in async memory copy functions
//template<typename gentype>
//static inline event_t async_work_group_copy (gentype *dst,
//											 const gentype *src,
//											 __size_t num_gentypes,
//											 event_t event)
//{
//	if (FreeOCL::thread_num == 0)
//	{
//		if (event != 0)
//			barrier(0);
//		memcpy(dst, src, sizeof(gentype) * num_gentypes);
//	}
//	return 0;
//}

//template<typename gentype>
//static inline event_t async_work_group_strided_copy (gentype *dst,
//													 const gentype *src,
//													 __size_t num_gentypes,
//													 __size_t src_stride,
//													 event_t event)
//{
//	if (FreeOCL::thread_num == 0)
//	{
//		if (event != 0)
//			barrier(0);
//		for(size_t i = 0 ; i < num_gentypes ; ++i, src += src_stride)
//			dst[i] = *src;
//	}
//	return 0;
//}

void _Z17wait_group_eventsiu2ev (__FreeOCL_lts_t *lts,
						__int num_events,
						event_t *event_list)
{
	_Z7barrieri(lts, 0);
}
