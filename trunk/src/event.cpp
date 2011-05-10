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
#include "event.h"
#include "context.h"
#include "commandqueue.h"

#define SET_VAR(X)	FreeOCL::copyMemoryWithinLimits(&(X), sizeof(X), param_value_size, param_value, param_value_size_ret)
#define SET_RET(X)	if (errcode_ret)	*errcode_ret = (X)

extern "C"
{
	cl_event clCreateUserEventFCL (cl_context context, cl_int *errcode_ret)
	{
		MSG(clCreateUserEventFCL);
		if (!FreeOCL::isValid(context))
		{
			SET_RET(CL_INVALID_CONTEXT);
			return 0;
		}

		SET_RET(CL_SUCCESS);

		cl_event e = new _cl_event;
		e->context = context;
		e->command_queue = 0;
		e->command_type = CL_COMMAND_USER;
		e->status = CL_SUBMITTED;

		context->unlock();
		return e;
	}

	cl_int clSetUserEventStatusFCL (cl_event event, cl_int execution_status)
	{
		MSG(clSetUserEventStatusFCL);
		if (execution_status != CL_COMPLETE && execution_status >= 0)
			return CL_INVALID_VALUE;
		if (!FreeOCL::isValid(event))
			return CL_INVALID_EVENT;
		if (event->status == CL_COMPLETE || event->status < 0)
		{
			event->unlock();
			return CL_INVALID_OPERATION;
		}
		event->change_status(execution_status);
		event->unlock();
		return CL_SUCCESS;
	}

	cl_int clWaitForEventsFCL (cl_uint num_events, const cl_event *event_list)
	{
		MSG(clWaitForEventsFCL);
		if (num_events == 0 || event_list == NULL)
			return CL_INVALID_VALUE;

		for(size_t i = 0 ; i < num_events ; )
		{
			if (!FreeOCL::isValid(event_list[i]))
				return CL_INVALID_EVENT;
			if (event_list[i]->status < 0)
			{
				event_list[i]->unlock();
				return CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST;
			}
			if (event_list[i]->status == CL_COMPLETE)
			{
				event_list[i]->unlock();
				++i;
				continue;
			}
			event_list[i]->wait_locked();
			event_list[i]->unlock();
		}

		return CL_SUCCESS;
	}

	cl_int clGetEventInfoFCL (cl_event event,
						   cl_event_info param_name,
						   size_t param_value_size,
						   void *param_value,
						   size_t *param_value_size_ret)
	{
		MSG(clGetEventInfoFCL);
		bool bTooSmall = false;
		if (!FreeOCL::isValid(event))
			return CL_INVALID_EVENT;
		switch(param_name)
		{
		case CL_EVENT_COMMAND_QUEUE:				bTooSmall = SET_VAR(event->command_queue);	break;
		case CL_EVENT_CONTEXT:						bTooSmall = SET_VAR(event->context);	break;
		case CL_EVENT_COMMAND_TYPE:					bTooSmall = SET_VAR(event->command_type);	break;
		case CL_EVENT_COMMAND_EXECUTION_STATUS:
			{
				const cl_uint status = event->status;
				bTooSmall = SET_VAR(status);
			}
			break;
		case CL_EVENT_REFERENCE_COUNT:				bTooSmall = SET_VAR(event->get_ref_count());	break;
		default:
			event->unlock();
			return CL_INVALID_VALUE;
		}
		event->unlock();

		if (bTooSmall && param_value != NULL)
			return CL_INVALID_VALUE;

		return CL_SUCCESS;
	}

	cl_int clSetEventCallbackFCL (cl_event event,
							   cl_int command_exec_callback_type,
							   void (CL_CALLBACK *pfn_event_notify)(cl_event event,
																	cl_int event_command_exec_status,
																	void *user_data),
							   void *user_data)
	{
		MSG(clSetEventCallbackFCL);
		if (command_exec_callback_type != CL_COMPLETE
			|| pfn_event_notify == NULL)
			return CL_INVALID_VALUE;

		if (!FreeOCL::isValid(event))
			return CL_INVALID_EVENT;

		FreeOCL::event_call_back call_back = { pfn_event_notify, user_data };
		event->call_backs[command_exec_callback_type].push_back(call_back);
		event->unlock();

		return CL_SUCCESS;
	}

	cl_int clRetainEventFCL (cl_event event)
	{
		MSG(clRetainEventFCL);
		if (!FreeOCL::isValid(event))
			return CL_INVALID_EVENT;

		event->retain();
		event->unlock();
		return CL_SUCCESS;
	}

	cl_int clReleaseEventFCL (cl_event event)
	{
		MSG(clReleaseEventFCL);
		if (!FreeOCL::isValid(event))
			return CL_INVALID_EVENT;

		event->release();
		if (event->get_ref_count() == 0)
		{
			event->invalidate();
			event->unlock();
			delete event;
		}
		else
			event->unlock();
		return CL_SUCCESS;
	}

	cl_int clEnqueueMarkerFCL (cl_command_queue command_queue,
							cl_event *event)
	{
		MSG(clEnqueueMarkerFCL);
		if (event == NULL)
			return CL_INVALID_VALUE;

		if (!FreeOCL::isValid(command_queue))
			return CL_INVALID_COMMAND_QUEUE;

		FreeOCL::command cmd;
		cmd.type = CL_COMMAND_MARKER;
		cmd.common.num_events_in_wait_list = 0;
		cmd.common.event_wait_list = NULL;
		cmd.common.event = *event = new _cl_event;
		cmd.common.event->command_queue = command_queue;
		cmd.common.event->context = command_queue->context;
		cmd.common.event->command_type = CL_COMMAND_MARKER;
		cmd.common.event->status = CL_SUBMITTED;

		command_queue->enqueue(cmd);

		return CL_SUCCESS;
	}

	cl_int clEnqueueBarrierFCL (cl_command_queue command_queue)
	{
		MSG(clEnqueueBarrierFCL);
		if (!FreeOCL::isValid(command_queue))
			return CL_INVALID_COMMAND_QUEUE;

		FreeOCL::command cmd;
		cmd.type = CL_COMMAND_MARKER;
		cmd.common.num_events_in_wait_list = 0;
		cmd.common.event_wait_list = NULL;
		cmd.common.event = NULL;

		command_queue->enqueue(cmd);

		return CL_SUCCESS;
	}

	cl_int clEnqueueWaitForEventsFCL (cl_command_queue command_queue,
								   cl_uint num_events,
								   const cl_event *event_list)
	{
		MSG(clEnqueueWaitForEventsFCL);
		if (num_events == 0 || event_list == NULL)
			return CL_INVALID_VALUE;

		if (!FreeOCL::isValid(command_queue))
			return CL_INVALID_COMMAND_QUEUE;

		FreeOCL::command cmd;
		cmd.type = CL_COMMAND_MARKER;
		cmd.common.num_events_in_wait_list = num_events;
		cmd.common.event_wait_list = event_list;
		cmd.common.event = NULL;

		command_queue->enqueue(cmd);

		return CL_SUCCESS;
	}

	cl_int clGetEventProfilingInfoFCL (cl_event event,
									   cl_profiling_info param_name,
									   size_t param_value_size,
									   void *param_value,
									   size_t *param_value_size_ret)
	{
		MSG(clGetEventProfilingInfoFCL);
		FreeOCL::unlocker unlock;
		if (!FreeOCL::isValid(event))
			return CL_INVALID_EVENT;
		unlock.handle(event);

		bool bTooSmall = false;
		switch(param_name)
		{
		case CL_PROFILING_COMMAND_QUEUED:
		case CL_PROFILING_COMMAND_SUBMIT:
		case CL_PROFILING_COMMAND_START:
		case CL_PROFILING_COMMAND_END:
		default:
			return CL_INVALID_VALUE;
		}
		if (bTooSmall && param_value != NULL)
			return CL_INVALID_VALUE;

		return CL_SUCCESS;
	}
}

void _cl_event::change_status(cl_int new_status)
{
	status = new_status;
	std::deque<FreeOCL::event_call_back> call_backs;
	call_backs.swap(this->call_backs[new_status]);

	unlock();

	if (!call_backs.empty())
		for(std::deque<FreeOCL::event_call_back>::const_iterator i = call_backs.begin() ; i != call_backs.end() ; ++i)
			if (i->pfn_notify)
				i->pfn_notify(this, new_status, i->user_data);

	wakeup();
	if (command_queue)
		command_queue->wakeup();		// If the command queue is waiting for a status change, notify it

	lock();
}

_cl_event::_cl_event()
{
	FreeOCL::global_mutex.lock();
	FreeOCL::valid_events.insert(this);
	FreeOCL::global_mutex.unlock();
}

_cl_event::~_cl_event()
{
	FreeOCL::global_mutex.lock();
	FreeOCL::valid_events.erase(this);
	FreeOCL::global_mutex.unlock();
}