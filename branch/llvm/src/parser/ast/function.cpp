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
#include "function.h"
#include "chunk.h"
#include "type.h"
#include "overloaded_builtin.h"
#include "native_type.h"
#include <vm/vm.h>
#include <llvm/IR/Function.h>
#include <llvm/IR/Verifier.h>
#include <llvm/IR/Module.h>
#include "struct_type.h"
#include "array_type.h"
#include "kernel.h"

namespace FreeOCL
{
    function::function(const smartptr<type> &return_type,
                       const std::string &name,
                       const smartptr<chunk> &arguments,
                       const smartptr<chunk> &body,
                       std::deque<smartptr<type> > &arg_types)
		: name(name),
		return_type(return_type),
		arguments(arguments),
		body(body),
		fn(NULL),
		b_has_implicit_lts_parameter(true),
		b_external_linkage(false)
	{
        // This is required to respect overloaded_builtin::all_types_weak_match semantics
        arg_types.push_front((type*)NULL);
        this->arg_types.swap(arg_types);
		if (this->arguments)
		{
			this->arguments->pop_front();
			this->arguments->pop_back();
		}
		if (body && body->size() > 0)
		{
			this->body->pop_front();
			this->body->pop_back();
		}
		if (this->arguments && this->arguments->size() == 1)
			this->arguments = this->arguments->front();
		else
			this->arguments = new chunk();
	}

	function::~function()
	{
	}

	void function::write(std::ostream &out) const
	{
		out << "static inline " << *return_type << ' ' << name << '(';
		for(size_t i = 0 ; i < arguments->size() ; ++i)
		{
			if (i > 0)
				out << ',';
			out << *(*arguments)[i];
		}
		out << ')';
		if (body)
			out << std::endl
				<< '{' << std::endl
				<< *body
				<< '}' << std::endl;
		else
			out << ';' << std::endl;
	}

    smartptr<type> function::get_return_type(const std::deque<smartptr<type> > &arg_types) const
	{
        if (arg_types.size() != arg_types.size())
            return (type*)NULL;
        if (!overloaded_builtin::all_types_weak_match(arg_types, this->arg_types))
            return (type*)NULL;
		return return_type;
	}

	bool function::is_defined() const
	{
		return body;
	}

	const std::string &function::get_name() const
	{
		return name;
	}

	size_t function::get_num_params() const
	{
		return arguments->size();
	}

	bool function::has_references_to(const std::string &function_name) const
	{
		return (name == function_name) || (body && body->has_references_to(function_name));
	}

    const char *function::get_node_type() const
    {
        return "function";
    }

    std::deque<smartptr<type> > function::get_arg_types(const std::deque<smartptr<type> > &/*param_types*/) const
    {
        std::deque<smartptr<type> > arg_types(this->arg_types);
        arg_types.pop_front();
        return arg_types;
    }

	bool function::operator==(const function &f) const
	{
		if (f.arg_types.size() != arg_types.size()
				|| *return_type != *f.return_type)
			return false;
		for(size_t i = 1 ; i < arg_types.size() ; ++i)
			if (*arg_types[i] != *f.arg_types[i])
				return false;
		return true;
	}

	llvm::Value *function::to_IR(vm *p_vm) const
	{
		fn = get_callee(p_vm, std::deque<smartptr<type> >());
		if (body)
		{
			llvm::BasicBlock *BB = llvm::BasicBlock::Create(p_vm->get_context(), "fonction_entry", fn);
			p_vm->get_builder()->SetInsertPoint(BB);
			size_t var_id = 0;
			const size_t max_var = variable_args.size() + b_has_implicit_lts_parameter;
			for(llvm::Function::arg_iterator arg = fn->arg_begin() ; arg != fn->arg_end() && var_id < max_var ; ++arg, ++var_id)
			{
				if (var_id == 0)
					p_vm->set_lts(arg);
				if (b_has_implicit_lts_parameter)
				{
					if (var_id > 0)
						variable_args[var_id - 1]->set_value(p_vm, arg);
				}
				else if (!b_has_implicit_lts_parameter)
					variable_args[var_id]->set_value(p_vm, arg);
			}
			body->to_IR(p_vm);
			if (*native_type::t_void == *(return_type->clone(true, type::CONSTANT)))
				p_vm->get_builder()->CreateRetVoid();
			else
				p_vm->get_builder()->CreateRet(llvm::UndefValue::get(return_type->to_LLVM_type(p_vm)));
//			fn->dump();
			llvm::verifyFunction(*fn);

			//! TODO: implement optimization passes
			p_vm->get_function_pass_manager()->run(*fn);
		}
		return fn;
	}

	llvm::Function *function::get_callee(vm *p_vm, const std::deque<smartptr<type> > &param_types) const
	{
		if (fn)
			return fn;
		const std::string &symbol_name = get_name();
		std::vector<llvm::Type*> params;
		if (b_has_implicit_lts_parameter)
		{
			smartptr<struct_type> __FreeOCL_lts_t = new struct_type("__FreeOCL_lts_t");
			*__FreeOCL_lts_t << std::make_pair(std::string("group_id"), new array_type(native_type::t_size_t, false, type::PRIVATE, 3))
							 << std::make_pair(std::string("local_memory"), new pointer_type(native_type::t_char, false, type::PRIVATE))
							 << std::make_pair(std::string("scheduler"), new pointer_type(native_type::t_char, false, type::PRIVATE))
							 << std::make_pair(std::string("threads"), new pointer_type(native_type::t_char, false, type::PRIVATE))
							 << std::make_pair(std::string("thread_num"), native_type::t_size_t);
			smartptr<type> ptr = new pointer_type(__FreeOCL_lts_t, true, type::PRIVATE);
			params.push_back(ptr->to_LLVM_type(p_vm));
		}
		for(size_t i = 1 ; i < arg_types.size() ; ++i)
			params.push_back(arg_types[i]->to_LLVM_type(p_vm));
		llvm::FunctionType *fntype = llvm::FunctionType::get(return_type->to_LLVM_type(p_vm), params, false);
		if (b_external_linkage)
			fn = llvm::Function::Create(fntype, llvm::Function::ExternalLinkage, symbol_name, p_vm->get_module());
		else
			fn = llvm::Function::Create(fntype, llvm::Function::InternalLinkage, symbol_name, p_vm->get_module());
		return fn;
	}

	void function::push_arg(const smartptr<var> &arg)
	{
		variable_args.push_back(arg);
	}

	bool function::has_implicit_lts_parameter() const
	{
		return b_has_implicit_lts_parameter;
	}

	void function::disable_implicit_lts_parameter()
	{
		b_has_implicit_lts_parameter = false;
	}

	void function::set_external_linkage(bool b_external_linkage)
	{
		this->b_external_linkage = b_external_linkage;
	}
}
