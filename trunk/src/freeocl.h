#ifndef __FREEOCL_FREEOCL_H__
#define __FREEOCL_FREEOCL_H__

#include "../config.h"
#include <CL/cl.h>
#include <string>
#include <set>
#include "mutex.h"

namespace FreeOCL
{
	extern cl_platform_id platform;
	extern cl_device_id device;
	extern std::set<cl_context> valid_contexts;
	extern std::set<cl_command_queue> valid_command_queues;
	extern std::set<cl_mem> valid_mems;
	extern std::set<cl_event> valid_events;
	extern std::set<cl_kernel> valid_kernels;
	extern std::set<cl_program> valid_programs;
	extern mutex global_mutex;

	bool isValid(cl_context);
	bool isValid(cl_command_queue);
	bool isValid(cl_mem);
	bool isValid(cl_event);
	bool isValid(cl_program);
	bool isValid(cl_kernel);

	bool copyMemoryWithinLimits(const void *src, const size_t size, const size_t maxSize, void *dst, size_t *s);

	std::string runCommand(const std::string &cmd);
	long int parseInt(const std::string &s);
	std::string trim(const std::string &s);

	struct icd_table
	{
		struct _cl_icd_dispatch *dispatch;
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
}

#endif