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
#define __CL_ENABLE_EXCEPTIONS

#include "commandqueue.h"
#include "event.h"
#include "mem.h"
#include "context.h"
#include "kernel.h"
#include <cstring>
#include <iostream>
#include <cstdlib>

#define SET_VAR(X)	FreeOCL::copy_memory_within_limits(&(X), sizeof(X), param_value_size, param_value, param_value_size_ret)
#define SET_RET(X)	if (errcode_ret)	*errcode_ret = (X)

namespace FreeOCL
{
	cl_command_type command_read_buffer::getType() const	{	return CL_COMMAND_READ_BUFFER;	}
	cl_command_type command_write_buffer::getType() const	{	return CL_COMMAND_WRITE_BUFFER;	}
	cl_command_type command_copy_buffer::getType() const	{	return CL_COMMAND_COPY_BUFFER;	}
	cl_command_type command_map_buffer::getType() const		{	return CL_COMMAND_MAP_BUFFER;	}
	cl_command_type command_unmap_buffer::getType() const	{	return CL_COMMAND_UNMAP_MEM_OBJECT;	}
	cl_command_type command_marker::getType() const			{	return CL_COMMAND_MARKER;	}
	cl_command_type command_native_kernel::getType() const	{	return CL_COMMAND_NATIVE_KERNEL;	}
	cl_command_type command_ndrange_kernel::getType() const	{	return CL_COMMAND_NDRANGE_KERNEL;	}
}

extern "C"
{
	cl_command_queue clCreateCommandQueueFCL (cl_context context,
										   cl_device_id device,
										   cl_command_queue_properties properties,
										   cl_int *errcode_ret)
	{
		MSG(clCreateCommandQueueFCL);
		if (properties & ~(CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE | CL_QUEUE_PROFILING_ENABLE))
		{
			SET_RET(CL_INVALID_VALUE);
			return 0;
		}

		FreeOCL::unlocker unlock;
		if (!FreeOCL::is_valid(context))
		{
			SET_RET(CL_INVALID_CONTEXT);
			return 0;
		}
		unlock.handle(context);

		if (!FreeOCL::is_valid(device))
		{
			SET_RET(CL_INVALID_DEVICE);
			return 0;
		}

		cl_command_queue q = new _cl_command_queue(context);
		q->device = device;
		q->properties = properties;

		SET_RET(CL_SUCCESS);

		return q;
	}

	cl_int clRetainCommandQueueFCL (cl_command_queue command_queue)
	{
		MSG(clRetainCommandQueueFCL);
		if (!FreeOCL::is_valid(command_queue))
			return CL_INVALID_COMMAND_QUEUE;

		command_queue->retain();
		command_queue->unlock();
		return CL_SUCCESS;
	}

	cl_int clReleaseCommandQueueFCL (cl_command_queue command_queue)
	{
		MSG(clReleaseCommandQueueFCL);
		if (!FreeOCL::is_valid(command_queue))
			return CL_INVALID_COMMAND_QUEUE;

		command_queue->release();
		if (command_queue->get_ref_count() == 0)
		{
			command_queue->invalidate();
			command_queue->unlock();
			delete command_queue;
		}
		else
			command_queue->unlock();
		return CL_SUCCESS;
	}

	cl_int clGetCommandQueueInfoFCL (cl_command_queue command_queue,
								  cl_command_queue_info param_name,
								  size_t param_value_size,
								  void *param_value,
								  size_t *param_value_size_ret)
	{
		MSG(clGetCommandQueueInfoFCL);
		if (!FreeOCL::is_valid(command_queue))
			return CL_INVALID_COMMAND_QUEUE;

		bool bTooSmall = false;
		switch(param_name)
		{
		case CL_QUEUE_CONTEXT:			bTooSmall = SET_VAR(command_queue->context);	break;
		case CL_QUEUE_DEVICE:			bTooSmall = SET_VAR(command_queue->device);	break;
		case CL_QUEUE_REFERENCE_COUNT:	bTooSmall = SET_VAR(command_queue->get_ref_count());	break;
		case CL_QUEUE_PROPERTIES:		bTooSmall = SET_VAR(command_queue->properties);	break;
		default:
			command_queue->unlock();
			return CL_INVALID_VALUE;
		}
		command_queue->unlock();
		if (bTooSmall && param_value != NULL)
			return CL_INVALID_VALUE;

		return CL_SUCCESS;
	}

	cl_int clFlushFCL (cl_command_queue command_queue)
	{
		MSG(clFlushFCL);
		if (!FreeOCL::is_valid(command_queue))
			return CL_INVALID_COMMAND_QUEUE;
		command_queue->unlock();

		return CL_SUCCESS;
	}

	cl_int clFinishFCL (cl_command_queue command_queue)
	{
		MSG(clFinishFCL);
		if (!FreeOCL::is_valid(command_queue))
			return CL_INVALID_COMMAND_QUEUE;
		if (command_queue->empty())
		{
			command_queue->unlock();
			return CL_SUCCESS;
		}
		command_queue->unlock();

		cl_event event;
		cl_int err = clEnqueueMarker(command_queue, &event);
		if (err != CL_SUCCESS)
			return err;

		err = clWaitForEvents(1, &event);
		clReleaseEvent(event);
		return err;
	}
}

_cl_command_queue::_cl_command_queue(cl_context context) : context_resource(context), q_thread(this), b_stop(false)
{
	FreeOCL::global_mutex.lock();
	FreeOCL::valid_command_queues.insert(this);
	FreeOCL::global_mutex.unlock();
}

_cl_command_queue::~_cl_command_queue()
{
	b_stop = true;
	while(q_thread.running())
		wakeup();
	FreeOCL::global_mutex.lock();
	FreeOCL::valid_command_queues.erase(this);
	FreeOCL::global_mutex.unlock();
}

void _cl_command_queue::enqueue(const FreeOCL::smartptr<FreeOCL::command> &cmd)
{
	queue.push_back(cmd);

	if (!b_stop)
	{
		retain();
		unlock();
		q_thread.start();		// Make sure the scheduler is running
		wakeup();
	}
	else
		unlock();
}

bool _cl_command_queue::empty()
{
	lock();
	const bool b = queue.empty();
	unlock();
	return b;
}

bool isCommandReadyToProcess(const FreeOCL::smartptr<FreeOCL::command> &cmd)
{
	if (cmd->event_wait_list == NULL)
		return true;

	const cl_event *events = cmd->event_wait_list;
	bool bError = false;
	bool bReady = true;
	for(size_t i = 0 ; i < cmd->num_events_in_wait_list && !bError && bReady ; ++i)
	{
		if (!FreeOCL::is_valid(events[i]))
		{
			bError = true;
			break;
		}
		bReady = (events[i]->status == CL_COMPLETE);
		events[i]->unlock();
	}
	if (bError)
	{
		if (cmd->event)
		{
			cmd->event->lock();
			cmd->event.weak()->change_status(CL_INVALID_EVENT_WAIT_LIST);
			cmd->event->unlock();
		}
		throw 0;
	}
	return bReady;
}

int _cl_command_queue::proc()
{
	while(!b_stop)
	{
		lock();
		if (queue.empty())
		{
			wait_locked();
		}

		FreeOCL::smartptr<FreeOCL::command> cmd = queue.front();
		queue.pop_front();
		unlock();

		if (b_stop)
			break;

		if (!isCommandReadyToProcess(cmd))
		{
			if (properties & CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE)
			{
				// Find something else to process
				std::deque<FreeOCL::smartptr<FreeOCL::command> > waiting_queue;
				waiting_queue.push_front(cmd);

				bool bFound = false;

				lock();
				while(!queue.empty() && !bFound)
				{
					cmd = queue.front();
					queue.pop_front();
					unlock();

					if (cmd->getType() == CL_COMMAND_MARKER)
					{
						lock();
						queue.push_front(cmd);
						break;
					}

					bFound = isCommandReadyToProcess(cmd);
					if (!bFound)
						waiting_queue.push_front(cmd);

					lock();
				}

				for(std::deque<FreeOCL::smartptr<FreeOCL::command> >::const_iterator i = waiting_queue.begin() ; i != waiting_queue.end() ; ++i)
					queue.push_front(*i);

				if (!bFound)		// No choice, we must try later
				{
					wait_locked();
					unlock();
					continue;
				}
				unlock();
			}
			else
			{
				// Retry later
				lock();
				queue.push_front(cmd);
				wait_locked();
				unlock();
				continue;
			}
		}

		if (cmd->event)
		{
			cmd->event->lock();
			cmd->event->change_status(CL_RUNNING);
			cmd->event->unlock();
		}

		switch(cmd->getType())
		{
		case CL_COMMAND_READ_BUFFER:
			memcpy(cmd.as<FreeOCL::command_read_buffer>()->ptr, (char*)cmd.as<FreeOCL::command_read_buffer>()->buffer->ptr + cmd.as<FreeOCL::command_read_buffer>()->offset, cmd.as<FreeOCL::command_read_buffer>()->cb);
			break;
		case CL_COMMAND_WRITE_BUFFER:
			memcpy((char*)cmd.as<FreeOCL::command_write_buffer>()->buffer->ptr + cmd.as<FreeOCL::command_write_buffer>()->offset, cmd.as<FreeOCL::command_write_buffer>()->ptr, cmd.as<FreeOCL::command_write_buffer>()->cb);
			break;
		case CL_COMMAND_COPY_BUFFER:
			memcpy((char*)cmd.as<FreeOCL::command_copy_buffer>()->dst_buffer->ptr + cmd.as<FreeOCL::command_copy_buffer>()->dst_offset,
				   (char*)cmd.as<FreeOCL::command_copy_buffer>()->src_buffer->ptr + cmd.as<FreeOCL::command_copy_buffer>()->src_offset,
				   cmd.as<FreeOCL::command_copy_buffer>()->cb);
			break;
		case CL_COMMAND_MAP_BUFFER:
			cmd.as<FreeOCL::command_map_buffer>()->buffer->lock();
			cmd.as<FreeOCL::command_map_buffer>()->buffer->mapped.insert(cmd.as<FreeOCL::command_map_buffer>()->ptr);
			cmd.as<FreeOCL::command_map_buffer>()->buffer->unlock();
			break;
		case CL_COMMAND_UNMAP_MEM_OBJECT:
			cmd.as<FreeOCL::command_unmap_buffer>()->buffer->lock();
			cmd.as<FreeOCL::command_unmap_buffer>()->buffer->mapped.erase(cmd.as<FreeOCL::command_unmap_buffer>()->ptr);
			cmd.as<FreeOCL::command_unmap_buffer>()->buffer->unlock();
			break;
		case CL_COMMAND_NATIVE_KERNEL:
			cmd.as<FreeOCL::command_native_kernel>()->user_func(cmd.as<FreeOCL::command_native_kernel>()->args);
			free(cmd.as<FreeOCL::command_native_kernel>()->args);
			break;
		case CL_COMMAND_NDRANGE_KERNEL:
			cmd.as<FreeOCL::command_ndrange_kernel>()->kernel->__FCL_kernel(cmd.as<FreeOCL::command_ndrange_kernel>()->args,
																			cmd.as<FreeOCL::command_ndrange_kernel>()->dim,
																			cmd.as<FreeOCL::command_ndrange_kernel>()->global_offset,
																			cmd.as<FreeOCL::command_ndrange_kernel>()->global_size,
																			cmd.as<FreeOCL::command_ndrange_kernel>()->local_size);
			if (cmd.as<FreeOCL::command_ndrange_kernel>()->args)
				free(cmd.as<FreeOCL::command_ndrange_kernel>()->args);
			break;
		}

		if (cmd->event)
		{
			cmd->event->lock();
			cmd->event->change_status(CL_COMPLETE);
			cmd->event->unlock();
		}
	}
	return 0;
}

int _cl_command_queue::thread::proc()
{
	const int ret = command_queue->proc();
	clReleaseCommandQueue(command_queue);
	return ret;
}
