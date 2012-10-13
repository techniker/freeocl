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
#include "kernel.h"
#include "native_type.h"
#include "chunk.h"
#include "pointer_type.h"
#include "token.h"
#include <freeocl.h>
#include <sstream>
#include "binary.h"
#include "unary.h"
#include "value.h"
#include "sizeof.h"
#include "../parser.h"
#include "switch.h"
#include "return.h"
#include "array_type.h"
#include "index.h"
#include "for.h"
#include "call.h"
#include "cast.h"
#include <utils/string.h>
#include "struct_type.h"
#include "member.h"
#include <vm/vm.h>

namespace FreeOCL
{
    kernel::kernel(const smartptr<node> &return_type,
                   const std::string &name,
                   const smartptr<node> &arguments,
                   const smartptr<node> &body,
                   std::deque<smartptr<type> > &arg_types)
        : function(return_type, name, arguments, body, arg_types)
	{
	}

	kernel::~kernel()
	{
	}

	void kernel::write(std::ostream &out) const
	{
		out << "__kernel ";
		function::write(out);

		out << std::endl;

		smartptr<chunk> params = new chunk;
		*params = *(get_arguments());
		for(size_t j = 0 ; j < params->size() ; ++j)
		{
			smartptr<chunk> cur = (*params)[j].as<chunk>();
			smartptr<type> p_type = cur->front().as<type>();
			if (cur->back().as<chunk>())
			{
				smartptr<chunk> back = cur->back().as<chunk>()->back().as<chunk>();
				if (back)
				{
					const type::address_space addr_space = p_type->get_address_space();
					if (back->size() > 0 && !back->front().as<chunk>())
						back = new chunk(back);
					for(size_t i = 0 ; i < back->size() ; ++i)
					{
						const smartptr<chunk> ch = (*back)[i].as<chunk>();
						if (!ch)
							continue;
						if (ch->front().as<token>() && ch->front().as<token>()->get_id() == '[')
							p_type = new pointer_type(p_type->clone(p_type->is_const(), addr_space), false, type::PRIVATE);
					}
				}
			}
			cur->front() = p_type;
		}

		out << "extern \"C\" size_t __FCL_info_" << get_name() << "(size_t idx, int *type, const char **name, const char **type_name, int *type_qualifier, int *type_access_qualifier)" << std::endl
			<< "{" << std::endl
			<< "\t*name = 0;" << std::endl
			<< "\t*type_name = 0;" << std::endl
			<< "\t*type_qualifier = 0;" << std::endl
			<< "\t*type_access_qualifier = " << CL_KERNEL_ARG_ACCESS_NONE << ';' << std::endl
			<< "\tswitch(idx)" << std::endl
			<< "\t{" << std::endl;
		bool b_has_local_parameters = false;
		for(size_t j = 0 ; j < params->size() ; ++j)
		{
			const smartptr<chunk> cur = (*params)[j].as<chunk>();
			const smartptr<native_type> native = cur->front().as<native_type>();
			const smartptr<pointer_type> ptr = cur->front().as<pointer_type>();
			const bool b_pointer = ptr;
			const bool b_local = b_pointer && ptr->get_base_type()->get_address_space() == type::LOCAL;
			b_has_local_parameters |= b_local;
			const bool b_const = cur->front().as<type>()->is_const();
			const std::string name = cur->back().as<token>()
									 ? cur->back().as<token>()->get_string()
									 : cur->back().as<chunk>()->front().as<token>()->get_string();
			std::string type_name = cur->front().as<type>()->get_name();
			const bool b_restrict = FreeOCL::contains_word(type_name, "restrict");
			const bool b_volatile = FreeOCL::contains_word(b_pointer ? ptr->get_base_type()->get_name() : type_name, "volatile");
			const char *keywords_to_be_removed[] = { "__global", "__local", "__constant", "__private",
													 "global", "local", "constant", "private",
													 "volatile", "restrict", "const",
													 "__read_only", "__read_write", "__write_only",
													 "read_only", "read_write", "write_only", 0 };
			FreeOCL::remove_words(type_name, keywords_to_be_removed);
			int type_id = 0;
			if (b_pointer)
			{
				switch(ptr->get_base_type()->get_address_space())
				{
				case type::LOCAL:
					type_id = CL_KERNEL_ARG_ADDRESS_LOCAL;
					break;
				case type::GLOBAL:
					type_id = CL_KERNEL_ARG_ADDRESS_GLOBAL;
					break;
				case type::CONSTANT:
					type_id = CL_KERNEL_ARG_ADDRESS_CONSTANT;
					break;
				case type::PRIVATE:
					type_id = CL_KERNEL_ARG_ADDRESS_PRIVATE;
					break;
				}
			}
			if (native)
			{
				switch(native->get_type_id())
				{
				case native_type::SAMPLER_T:
					type_id = CL_UNORM_INT_101010;
					break;
				case native_type::IMAGE1D_T:
					type_id = CL_MEM_OBJECT_IMAGE1D;
					break;
				case native_type::IMAGE1D_BUFFER_T:
					type_id = CL_MEM_OBJECT_IMAGE1D_BUFFER;
					break;
				case native_type::IMAGE1D_ARRAY_T:
					type_id = CL_MEM_OBJECT_IMAGE1D_ARRAY;
					break;
				case native_type::IMAGE2D_T:
					type_id = CL_MEM_OBJECT_IMAGE2D;
					break;
				case native_type::IMAGE2D_ARRAY_T:
					type_id = CL_MEM_OBJECT_IMAGE2D_ARRAY;
					break;
				case native_type::IMAGE3D_T:
					type_id = CL_MEM_OBJECT_IMAGE3D;
					break;
				}
			}
			out << "\tcase " << j << ":" << std::endl
				<< "\t\t*type = " << type_id << ';' << std::endl
				<< "\t\t*name = \"" << name << "\";" << std::endl
				<< "\t\t*type_name = \"" << type_name << "\";" << std::endl;
			if (b_const)
				out << "\t\t*type_qualifier |= " << CL_KERNEL_ARG_TYPE_CONST << ';' << std::endl;
			if (b_restrict)
				out << "\t\t*type_qualifier |= " << CL_KERNEL_ARG_TYPE_RESTRICT << ';' << std::endl;
			if (b_volatile)
				out << "\t\t*type_qualifier |= " << CL_KERNEL_ARG_TYPE_VOLATILE << ';' << std::endl;
			out	<< "\t\treturn sizeof(";
			if (b_pointer)	out << "void*";
			else			out << *(cur->front());
			out << ");" << std::endl;
		}
		out	<< "\t}" << std::endl
			<< "\treturn 0;" << std::endl
			<< "}" << std::endl;

		out << "extern \"C\" bool __FCL_init_" << get_name() << "(const void * const args, const size_t dim, const size_t * const global_offset, const size_t * const global_size, const size_t * const local_size)" << std::endl
			<< "{" << std::endl
			<< "\tFreeOCL::args = args;" << std::endl
			<< "\tFreeOCL::dim = dim;" << std::endl
			<< "\tfor(size_t i = 0 ; i < 3 ; ++i)" << std::endl
			<< "\t{" << std::endl
			<< "\t\tFreeOCL::global_offset[i] = global_offset[i];" << std::endl
			<< "\t\tFreeOCL::global_size[i] = global_size[i];" << std::endl
			<< "\t\tFreeOCL::local_size[i] = local_size[i];" << std::endl
			<< "\t\tFreeOCL::num_groups[i] = global_size[i] / local_size[i];" << std::endl
			<< "\t}" << std::endl
			<< std::endl;
		bool b_needs_sync = false;
		static const char *sync_functions[] = {"barrier", "mem_fence", "read_mem_fence", "write_mem_fence",
											   "wait_group_events", "async_work_group_copy", "async_work_group_strided_copy"};
		for(size_t j = 0 ; j < sizeof(sync_functions) / sizeof(sync_functions[0]) && !b_needs_sync ; ++j)
			b_needs_sync = has_references_to(sync_functions[j]);
		out	<< "\treturn " << (b_needs_sync ? "true" : "false") << ';' << std::endl
			<< "}" << std::endl
			<< std::endl;

		out << "extern \"C\" void __FCL_setwg_" << get_name() << "(char * const local_memory, const size_t * const thread_group_id, ucontext_t *scheduler, ucontext_t *threads)" << std::endl
			<< "{" << std::endl
			<< "\tFreeOCL::local_memory = local_memory;" << std::endl
			<< "\tFreeOCL::group_id[0] = thread_group_id[0];" << std::endl
			<< "\tFreeOCL::group_id[1] = thread_group_id[1];" << std::endl
			<< "\tFreeOCL::group_id[2] = thread_group_id[2];" << std::endl
			<< "\tFreeOCL::scheduler = scheduler;" << std::endl
			<< "\tFreeOCL::threads = threads;" << std::endl
			<< "}" << std::endl
			<< std::endl;

		out << "extern \"C\" void __FCL_kernel_" << get_name() << "(const int thread_id)" << std::endl;
		out	<< "{" << std::endl;
		int last_shift = -1;
		std::stringstream _cat;
		_cat << '0';
		for(size_t j = 0 ; j < params->size() ; ++j)
		{
			const smartptr<chunk> cur = (*params)[j].as<chunk>();
			const smartptr<type> p_type = cur->front().as<type>();
			const smartptr<pointer_type> ptr = p_type.as<pointer_type>();
			const bool b_pointer = ptr;
			const bool b_local = b_pointer && ptr->get_base_type()->get_address_space() == type::LOCAL;
			if (b_local)
			{
				out << "\tconst size_t __shift" << j << " = ";
				if (last_shift >= 0)
					out << "__shift" << last_shift << " - ";
				else
					out << "0x8000 - ";
				out << "*(const size_t*)((const char*)FreeOCL::args + " << _cat.str() << ");" << std::endl;
				_cat << " + sizeof(size_t)";
				last_shift = j;
			}
			else
				_cat << " + sizeof(" << *(p_type) << ")";
		}

		out << "\tchar * const local_memory = FreeOCL::local_memory;" << std::endl;

		if (b_needs_sync)
			out	<< "\tFreeOCL::thread_num = thread_id;" << std::endl;
		else
		{
			out	<< "\tfor(int i = 0 ; i < thread_id ; ++i)" << std::endl
				<< "\t{" << std::endl
				<< "\t\tFreeOCL::thread_num = i;" << std::endl;
		}
		out	<< "\t" << get_name() << "(";
		std::stringstream cat;
		cat << '0';
		for(size_t j = 0 ; j < params->size() ; ++j)
		{
			const smartptr<chunk> cur = (*params)[j].as<chunk>();
			const smartptr<type> p_type = cur->front().as<type>();
			const smartptr<pointer_type> ptr = p_type.as<pointer_type>();
			const bool b_pointer = ptr;
			const bool b_local = b_pointer && ptr->get_base_type()->get_address_space() == type::LOCAL;

			if (j)
				out << ",\n\t\t";
			if (b_local)
				out << "(" << *p_type << ")(local_memory + __shift" << j << ")";
			else
				out << "*(" << *p_type << "*)((const char*)FreeOCL::args + " << cat.str() << ')';
			cat << " + sizeof(" << *p_type << ")";
		}
		out << ");" << std::endl;
		if (!b_needs_sync)
			out	<< "}" << std::endl;
		out	<< "}" << std::endl;
	}

    const char *kernel::get_node_type() const
    {
        return "kernel";
    }

	llvm::Value *kernel::to_IR(vm *p_vm) const
	{
		llvm::Value *ret = function::to_IR(p_vm);

		smartptr<chunk> params = new chunk;
		*params = *(get_arguments());
		for(size_t j = 0 ; j < params->size() ; ++j)
		{
			smartptr<chunk> cur = (*params)[j].as<chunk>();
			smartptr<type> p_type = cur->front().as<type>();
			if (cur->back().as<chunk>())
			{
				smartptr<chunk> back = cur->back().as<chunk>()->back().as<chunk>();
				if (back)
				{
					const type::address_space addr_space = p_type->get_address_space();
					if (back->size() > 0 && !back->front().as<chunk>())
						back = new chunk(back);
					for(size_t i = 0 ; i < back->size() ; ++i)
					{
						const smartptr<chunk> ch = (*back)[i].as<chunk>();
						if (!ch)
							continue;
						if (ch->front().as<token>() && ch->front().as<token>()->get_id() == '[')
							p_type = new pointer_type(p_type->clone(p_type->is_const(), addr_space), false, type::PRIVATE);
					}
				}
			}
			cur->front() = p_type;
		}

		smartptr<var> __FreeOCL_args = new var("__FreeOCL_args", new pointer_type(native_type::t_void, true, type::PRIVATE), false);
		smartptr<var> __FreeOCL_dim = new var("__FreeOCL_dim", native_type::t_size_t, false);
		smartptr<var> __FreeOCL_global_offset = new var("__FreeOCL_global_offset", new array_type(native_type::t_size_t, false, type::PRIVATE, 3), false);
		smartptr<var> __FreeOCL_global_size = new var("__FreeOCL_global_size", new array_type(native_type::t_size_t, false, type::PRIVATE, 3), false);
		smartptr<var> __FreeOCL_local_size = new var("__FreeOCL_local_size", new array_type(native_type::t_size_t, false, type::PRIVATE, 3), false);
		smartptr<var> __FreeOCL_num_groups = new var("__FreeOCL_num_groups", new array_type(native_type::t_size_t, false, type::PRIVATE, 3), false);

		smartptr<struct_type> __FreeOCL_lts_t = new struct_type("__FreeOCL_lts_t");
		*__FreeOCL_lts_t << std::make_pair(std::string("group_id"), new array_type(native_type::t_size_t, false, type::PRIVATE, 3))
						 << std::make_pair(std::string("local_memory"), new pointer_type(native_type::t_char, false, type::PRIVATE))
						 << std::make_pair(std::string("scheduler"), new pointer_type(native_type::t_char, false, type::PRIVATE))
						 << std::make_pair(std::string("threads"), new pointer_type(native_type::t_char, false, type::PRIVATE))
						 << std::make_pair(std::string("thread_num"), native_type::t_size_t);


		/*-------------------------------------------------__FCL_info-------------------------------------------------*/
		smartptr<chunk> __FCL_info_body = new chunk;
		std::deque<smartptr<type> > __FCL_info_args;

		smartptr<var> __FCL_info_idx = new var("idx", native_type::t_size_t, true);
		smartptr<var> __FCL_info_type = new var("type", new pointer_type(native_type::t_int, false, type::PRIVATE), true);
		smartptr<var> __FCL_info_name = new var("name", new pointer_type(pointer_type::t_p_const_char, false, type::PRIVATE), true);
		smartptr<var> __FCL_info_type_name = new var("type_name", new pointer_type(pointer_type::t_p_const_char, false, type::PRIVATE), true);
		smartptr<var> __FCL_info_type_qualifier = new var("type_qualifier", new pointer_type(native_type::t_int, false, type::PRIVATE), true);
		smartptr<var> __FCL_info_type_access_qualifier = new var("type_access_qualifier", new pointer_type(native_type::t_int, false, type::PRIVATE), true);
		__FCL_info_args.push_back(__FCL_info_idx->get_type());
		__FCL_info_args.push_back(__FCL_info_type->get_type());
		__FCL_info_args.push_back(__FCL_info_name->get_type());
		__FCL_info_args.push_back(__FCL_info_type_name->get_type());
		__FCL_info_args.push_back(__FCL_info_type_qualifier->get_type());
		__FCL_info_args.push_back(__FCL_info_type_access_qualifier->get_type());
		smartptr<function> __FCL_info = new function(native_type::t_size_t, "__FCL_info_" + get_name(), smartptr<chunk>(), __FCL_info_body, __FCL_info_args);
		__FCL_info->disable_implicit_lts_parameter();
		__FCL_info->push_arg(__FCL_info_idx);
		__FCL_info->push_arg(__FCL_info_type);
		__FCL_info->push_arg(__FCL_info_name);
		__FCL_info->push_arg(__FCL_info_type_name);
		__FCL_info->push_arg(__FCL_info_type_qualifier);
		__FCL_info->push_arg(__FCL_info_type_access_qualifier);

		__FCL_info_body->push_back(new binary('=', new unary('*', __FCL_info_name), new value<int>(0)));
		__FCL_info_body->push_back(new binary('=', new unary('*', __FCL_info_type_name), new value<int>(0)));
		__FCL_info_body->push_back(new binary('=', new unary('*', __FCL_info_type_qualifier), new value<int>(0)));
		__FCL_info_body->push_back(new binary('=', new unary('*', __FCL_info_type_access_qualifier), new value<int>(CL_KERNEL_ARG_ACCESS_NONE)));
		smartptr<_switch> sw = new _switch(__FCL_info_idx);
		__FCL_info_body->push_back(sw);
		__FCL_info_body->push_back(new _return(native_type::t_size_t, new value<int>(0)));

		bool b_has_local_parameters = false;
		for(size_t j = 0 ; j < params->size() ; ++j)
		{
			const smartptr<chunk> cur = (*params)[j].as<chunk>();
			const smartptr<native_type> native = cur->front().as<native_type>();
			const smartptr<pointer_type> ptr = cur->front().as<pointer_type>();
			const bool b_pointer = ptr;
			const bool b_local = b_pointer && ptr->get_base_type()->get_address_space() == type::LOCAL;
			b_has_local_parameters |= b_local;
			const bool b_const = cur->front().as<type>()->is_const();
			const std::string name = cur->back().as<token>()
									 ? cur->back().as<token>()->get_string()
									 : cur->back().as<chunk>()->front().as<token>()->get_string();
			std::string type_name = cur->front().as<type>()->get_name();
			const bool b_restrict = FreeOCL::contains_word(type_name, "restrict");
			const bool b_volatile = FreeOCL::contains_word(b_pointer ? ptr->get_base_type()->get_name() : type_name, "volatile");
			const char *keywords_to_be_removed[] = { "__global", "__local", "__constant", "__private",
													 "global", "local", "constant", "private",
													 "volatile", "restrict", "const",
													 "__read_only", "__read_write", "__write_only",
													 "read_only", "read_write", "write_only", 0 };
			FreeOCL::remove_words(type_name, keywords_to_be_removed);
			int type_id = 0;
			if (b_pointer)
			{
				switch(ptr->get_base_type()->get_address_space())
				{
				case type::LOCAL:
					type_id = CL_KERNEL_ARG_ADDRESS_LOCAL;
					break;
				case type::GLOBAL:
					type_id = CL_KERNEL_ARG_ADDRESS_GLOBAL;
					break;
				case type::CONSTANT:
					type_id = CL_KERNEL_ARG_ADDRESS_CONSTANT;
					break;
				case type::PRIVATE:
					type_id = CL_KERNEL_ARG_ADDRESS_PRIVATE;
					break;
				}
			}
			if (native)
			{
				switch(native->get_type_id())
				{
				case native_type::SAMPLER_T:
					type_id = CL_UNORM_INT_101010;
					break;
				case native_type::IMAGE1D_T:
					type_id = CL_MEM_OBJECT_IMAGE1D;
					break;
				case native_type::IMAGE1D_BUFFER_T:
					type_id = CL_MEM_OBJECT_IMAGE1D_BUFFER;
					break;
				case native_type::IMAGE1D_ARRAY_T:
					type_id = CL_MEM_OBJECT_IMAGE1D_ARRAY;
					break;
				case native_type::IMAGE2D_T:
					type_id = CL_MEM_OBJECT_IMAGE2D;
					break;
				case native_type::IMAGE2D_ARRAY_T:
					type_id = CL_MEM_OBJECT_IMAGE2D_ARRAY;
					break;
				case native_type::IMAGE3D_T:
					type_id = CL_MEM_OBJECT_IMAGE3D;
					break;
				}
			}
			smartptr<chunk> new_case = new chunk;
			sw->add_case(j, new_case);
			new_case->push_back(new binary('=', new unary('*', __FCL_info_type), new value<int>(type_id)));
			new_case->push_back(new binary('=', new unary('*', __FCL_info_name), new value<std::string>('"' + name + '"')));
			new_case->push_back(new binary('=', new unary('*', __FCL_info_type_name), new value<std::string>('"' + type_name + '"')));
			if (b_const)
				new_case->push_back(new binary(parser::OR_ASSIGN, new unary('*', __FCL_info_type_qualifier), new value<int>(CL_KERNEL_ARG_TYPE_CONST)));
			if (b_restrict)
				new_case->push_back(new binary(parser::OR_ASSIGN, new unary('*', __FCL_info_type_qualifier), new value<int>(CL_KERNEL_ARG_TYPE_RESTRICT)));
			if (b_volatile)
				new_case->push_back(new binary(parser::OR_ASSIGN, new unary('*', __FCL_info_type_qualifier), new value<int>(CL_KERNEL_ARG_TYPE_VOLATILE)));
			if (b_pointer)
				new_case->push_back(new _return(native_type::t_size_t, new size_of(new pointer_type(native_type::t_void, false, type::PRIVATE))));
			else
				new_case->push_back(new _return(native_type::t_size_t, new size_of(cur->front())));
		}

		__FCL_info->to_IR(p_vm);

		/*-------------------------------------------------__FCL_init-------------------------------------------------*/

		smartptr<chunk> __FCL_init_body = new chunk;
		std::deque<smartptr<type> > __FCL_init_args;

		smartptr<var> __FCL_init_pargs = new var("args", new pointer_type(native_type::t_void, true, type::PRIVATE), true);
		smartptr<var> __FCL_init_dim = new var("dim", native_type::t_size_t, true);
		smartptr<var> __FCL_init_global_offset = new var("global_offset", new pointer_type(native_type::t_size_t, true, type::PRIVATE), true);
		smartptr<var> __FCL_init_global_size = new var("global_size", new pointer_type(native_type::t_size_t, true, type::PRIVATE), true);
		smartptr<var> __FCL_init_local_size = new var("local_size", new pointer_type(native_type::t_size_t, true, type::PRIVATE), true);
		__FCL_init_args.push_back(__FCL_init_pargs->get_type());
		__FCL_init_args.push_back(__FCL_init_dim->get_type());
		__FCL_init_args.push_back(__FCL_init_global_offset->get_type());
		__FCL_init_args.push_back(__FCL_init_global_size->get_type());
		__FCL_init_args.push_back(__FCL_init_local_size->get_type());
		smartptr<function> __FCL_init = new function(native_type::t_bool, "__FCL_init_" + get_name(), smartptr<chunk>(), __FCL_init_body, __FCL_init_args);
		__FCL_init->disable_implicit_lts_parameter();
		__FCL_init->push_arg(__FCL_init_pargs);
		__FCL_init->push_arg(__FCL_init_dim);
		__FCL_init->push_arg(__FCL_init_global_offset);
		__FCL_init->push_arg(__FCL_init_global_size);
		__FCL_init->push_arg(__FCL_init_local_size);

		__FCL_init_body->push_back(new binary('=', __FreeOCL_args, __FCL_init_pargs));
		__FCL_init_body->push_back(new binary('=', __FreeOCL_dim, __FCL_init_dim));

		for(size_t i = 0 ; i < 3 ; ++i)
		{
			smartptr<expression> idx = new value<int>(i);
			__FCL_init_body->push_back(new binary('=', new index(__FreeOCL_global_offset, idx), new index(__FCL_init_global_offset, idx)));
			__FCL_init_body->push_back(new binary('=', new index(__FreeOCL_global_size, idx), new index(__FCL_init_global_size, idx)));
			__FCL_init_body->push_back(new binary('=', new index(__FreeOCL_local_size, idx), new index(__FCL_init_local_size, idx)));
			__FCL_init_body->push_back(new binary('=', new index(__FreeOCL_num_groups, idx), new binary('/', new index(__FCL_init_global_size, idx), new index(__FCL_init_local_size, idx))));
		}

		bool b_needs_sync = false;
		static const char *sync_functions[] = {"barrier", "mem_fence", "read_mem_fence", "write_mem_fence",
											   "wait_group_events", "async_work_group_copy", "async_work_group_strided_copy"};
		for(size_t j = 0 ; j < sizeof(sync_functions) / sizeof(sync_functions[0]) && !b_needs_sync ; ++j)
			b_needs_sync = has_references_to(sync_functions[j]);

		__FCL_init_body->push_back(new _return(native_type::t_bool, new value<int>(b_needs_sync)));

		__FCL_init->to_IR(p_vm);

		/*------------------------------------------------__FCL_kernel------------------------------------------------*/
		smartptr<chunk> __FCL_kernel_body = new chunk;
		std::deque<smartptr<type> > __FCL_kernel_args;

		smartptr<var> __FCL_kernel_thread_id = new var("thread_id", native_type::t_int, true);
		smartptr<var> __FCL_kernel_lts = new var("__FCL_lts", new pointer_type(__FreeOCL_lts_t, true, type::PRIVATE), true);
		__FCL_kernel_args.push_back(__FCL_kernel_lts->get_type());
		__FCL_kernel_args.push_back(__FCL_kernel_thread_id->get_type());
		smartptr<function> __FCL_kernel = new function(native_type::t_void, "__FCL_kernel_" + get_name(), smartptr<chunk>(), __FCL_kernel_body, __FCL_kernel_args);
		__FCL_kernel->disable_implicit_lts_parameter();
		__FCL_kernel->push_arg(__FCL_kernel_lts);
		__FCL_kernel->push_arg(__FCL_kernel_thread_id);

		smartptr<expression> last_shift = new value<int>(0x8000);
		smartptr<expression> args_shift = new value<int>(0);
		FreeOCL::map<int, smartptr<expression> > shifts;
		for(size_t j = 0 ; j < params->size() ; ++j)
		{
			const smartptr<chunk> cur = (*params)[j].as<chunk>();
			const smartptr<type> p_type = cur->front().as<type>();
			const smartptr<pointer_type> ptr = p_type.as<pointer_type>();
			const bool b_pointer = ptr;
			const bool b_local = b_pointer && ptr->get_base_type()->get_address_space() == type::LOCAL;
			if (b_local)
			{
				smartptr<var> __shift = new var("__shift" + to_string(j), native_type::t_int, true);
				__FCL_kernel_body->push_back(new binary('=', __shift,
														new binary('-', last_shift,
																   new unary('*', new cast(new pointer_type(native_type::t_size_t, true, type::PRIVATE),
																						   new binary('+', new cast(pointer_type::t_p_const_char, __FreeOCL_args), args_shift)), false))));
				args_shift = new binary('+', args_shift, new size_of(native_type::t_size_t));
				last_shift = __shift;
				shifts[j] = __shift;
			}
			else
				args_shift = new binary('+', args_shift, new size_of(p_type));
		}

		args_shift = new value<int>(0);
		smartptr<chunk> call_args = new chunk;
		for(size_t j = 0 ; j < params->size() ; ++j)
		{
			const smartptr<chunk> cur = (*params)[j].as<chunk>();
			const smartptr<type> p_type = cur->front().as<type>();
			const smartptr<pointer_type> ptr = p_type.as<pointer_type>();
			const bool b_pointer = ptr;
			const bool b_local = b_pointer && ptr->get_base_type()->get_address_space() == type::LOCAL;

			if (b_local)
				call_args->push_back(new cast(p_type, new binary('+', new member(__FCL_kernel_lts, "local_memory"), shifts[j])));
			else
				call_args->push_back(new unary('*', new cast(new pointer_type(p_type, false, type::PRIVATE), new binary('+', new cast(pointer_type::t_p_const_char, __FreeOCL_args), args_shift))));
			args_shift = new binary('+', args_shift, new size_of(p_type));
		}

		smartptr<call> kernel_call = new call(this, call_args);
		if (b_needs_sync)
		{
			__FCL_kernel_body->push_back(new binary('=', new member(__FCL_kernel_lts, "thread_num"), __FCL_kernel_thread_id));
			__FCL_kernel_body->push_back(kernel_call);
		}
		else
		{
			smartptr<var> i = new var("i", native_type::t_size_t, true);
			smartptr<chunk> loop_body = new chunk;
			smartptr<_for> loop = new _for(new binary('=', i, new value<int>(0)), new binary('<', i, __FCL_kernel_thread_id), new unary(parser::INC_OP, i), loop_body);
			__FCL_kernel_body->push_back(loop);
			loop_body->push_back(new binary('=', new member(__FCL_kernel_lts, "thread_num"), i));
			loop_body->push_back(kernel_call);
		}

		__FCL_kernel->to_IR(p_vm);
		__FCL_kernel->write(std::cout);

		return ret;
	}
}
