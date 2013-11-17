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
#include "threadpool.h"
#include <FreeOCL/config.h>
#include <sched.h>
#include <atomic_ops.h>
#include <utils/time.h>
#include <iostream>
#ifdef __SSE__
#include <xmmintrin.h>
#endif

namespace FreeOCL
{
	threadpool::threadpool()
	{

	}

	threadpool::~threadpool()
	{
		for(size_t i = 0 ; i < pool.size() ; ++i)
			pool[i].stop();
		for(size_t i = 1 ; i < pool.size() ; ++i)
			pool[i].kill();
	}

	void threadpool::wait_for_all()
	{
		for(size_t i = 1 ; i < pool.size() ; ++i)
		{
			while (pool[i].is_working())
			{
#ifdef __SSE__
				_mm_pause();
#endif
			}
		}
	}

	void threadpool::set_num_groups(const size_t *num_groups)
	{
		for(size_t i = 0 ; i < 3 ; ++i)
			this->num_groups[i] = num_groups[i];
	}

	void threadpool::set_local_size(const size_t *local_size)
	{
		for(size_t i = 0 ; i < 3 ; ++i)
			this->local_size[i] = local_size[i];
	}

	void threadpool::set_thread_num(const size_t nb_threads)
	{
		this->nb_threads = nb_threads;
		if (nb_threads > pool.size())
		{
			pool.resize(nb_threads);
			for(size_t i = 0 ; i < nb_threads ; ++i)
			{
				pool[i].set_thread_pool(this);
			}
		}
	}

	void threadpool::run(void (*kernel)(__FreeOCL_lts_t *, const int))
	{
		this->kernel = kernel;

		next_workgroup = 0;
		for(size_t i = 1 ; i < nb_threads ; ++i)
		{
			pool[i].set_working();
			pool[i].start();
		}
		pool.front().work();
		wait_for_all();
	}

	unsigned long threadpool::worker::proc()
	{
		while(!b_stop)
		{
			const size_t start = ms_timer();
			while(!b_working && !b_stop)
			{
				if (ms_timer() - start > 1000)
					return 0;
				sched_yield();
			}
			if (b_stop)
			{
				b_working = false;
				return 0;
			}
			work();
			b_working = false;
		}
		return 0;
	}

	inline unsigned int threadpool::get_next_workgroup()
	{
		return AO_int_fetch_and_add_full(&next_workgroup, 1);
	}

	void threadpool::worker::work()
	{
		__FreeOCL_lts_t lts;

		const size_t l_size = pool->local_size[0] * pool->local_size[1] * pool->local_size[2];
		const size_t g_size = pool->num_groups[0] * pool->num_groups[1] * pool->num_groups[2];
		char local_memory[0x8000];
		lts.local_memory = &(local_memory[0]);
		if (!pool->b_require_sync || l_size == 1)
		{
			lts.threads = NULL;
			for(size_t gid = pool->get_next_workgroup() ; gid < g_size ; gid = pool->get_next_workgroup())
			{
				lts.group_id[0] = gid % pool->num_groups[0];
				lts.group_id[1] = (gid / pool->num_groups[0]) % pool->num_groups[1];
				lts.group_id[2]	= gid / pool->num_groups[0] / pool->num_groups[1];
				if (pool->b_require_sync)
					pool->kernel(&lts, 0);
				else
					pool->kernel(&lts, l_size);
			}
		}
		else
		{
			const size_t STACK_SIZE = 0x8000;
			if (l_size > fibers.size())
			{
				fibers.resize(l_size);
				stack_data.resize(STACK_SIZE * l_size);
				for(size_t i = 0 ; i < l_size ; ++i)
				{
					ucontext_t *t = &(fibers[i]);
					getcontext(t);
					t->uc_stack.ss_sp = stack_data.data() + STACK_SIZE * i;
					t->uc_stack.ss_size = STACK_SIZE;
					t->uc_stack.ss_flags = 0;
				}
			}
			ucontext_t scheduler;
			for(size_t i = 0 ; i < l_size ; ++i)
			{
				ucontext_t *t = &(fibers[i]);
				t->uc_link = (i + 1 < l_size) ? t + 1 : &scheduler;
			}
			lts.scheduler = (char*)&scheduler;
			lts.threads = (char*)fibers.data();
			for(size_t gid = pool->get_next_workgroup() ; gid < g_size ; gid = pool->get_next_workgroup())
			{
				lts.group_id[0] = gid % pool->num_groups[0];
				lts.group_id[1] = (gid / pool->num_groups[0]) % pool->num_groups[1];
				lts.group_id[2]	= gid / pool->num_groups[0] / pool->num_groups[1];
				for(size_t i = 0 ; i < l_size ; ++i)
				{
					ucontext_t *t = &(fibers[i]);
					makecontext(t, (void(*)())pool->kernel, 2, (void*)&lts, int(i));
				}
				swapcontext(&scheduler, &(fibers[0]));
			}
		}
	}

	void threadpool::set_require_sync(bool b_require_sync)
	{
		this->b_require_sync = b_require_sync;
	}
}
