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
#include <ucontext.h>

typedef struct
{
	__size_t group_id[3];
	__char *local_memory;
	__char *scheduler;
	__char *threads;
	__size_t thread_num;
} __FreeOCL_lts_t;

// Built-in synchronization functions
void _Z7barrieri(__FreeOCL_lts_t *lts, int flags)
{
	// If there is only a single thread, there is no need for sync
	if (!lts->threads)
		return;

	const __size_t thread_num = lts->thread_num;
	ucontext_t *next = ((ucontext_t*)(lts->threads))[thread_num].uc_link;
	if (next == (ucontext_t*)(lts->scheduler))
		next = &((ucontext_t*)(lts->threads))[0];
	swapcontext(&(((ucontext_t*)(lts->threads))[thread_num]), next);
	lts->thread_num = thread_num;
}
