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
#include "printf.h"
#include "pointer_type.h"
#include "native_type.h"
#include <vm/vm.h>
#include <llvm/Function.h>

namespace FreeOCL
{
	printf::printf()
		: name("printf")
	{
	}

	printf::~printf()
	{
	}

	void printf::write(std::ostream &out) const
	{
		out << "printf";
	}

	smartptr<type> printf::get_return_type(const std::deque<smartptr<type> > &arg_types) const
	{
		if (arg_types.empty())
			return (type*)NULL;
		if (*arg_types.front() != *pointer_type::t_p_const_char)
			return (type*)NULL;
		return native_type::t_int;
	}

	const std::string &printf::get_name() const
	{
		return name;
	}

	size_t printf::get_num_params() const
	{
		return 1;
	}

	bool printf::has_references_to(const std::string &function_name) const
	{
		return function_name == "printf";
	}

	bool printf::check_num_params(const size_t n) const
	{
		return n >= 1;
	}

    const char *printf::get_node_type() const
    {
        return "printf";
    }

    std::deque<smartptr<type> > printf::get_arg_types(const std::deque<smartptr<type> > &/*param_types*/) const
    {
		std::deque<smartptr<type> > arg_types;
		arg_types.push_back(pointer_type::t_p_const_char);
		return arg_types;
    }

	llvm::Value *printf::to_IR(vm *p_vm) const
	{
		return NULL;
	}

	llvm::Function *printf::get_callee(vm *p_vm, const std::deque<smartptr<type> > &param_types) const
	{
		const std::string &symbol_name = "_Z6printfPrKU2A2cz";
		llvm::Function *fn = p_vm->get_registered_function(symbol_name);
		if (fn)
			return fn;

		std::vector<llvm::Type*> params;
		params.push_back(pointer_type::t_p_const_char->to_LLVM_type(p_vm));
		llvm::FunctionType *fntype = llvm::FunctionType::get(native_type::t_int->to_LLVM_type(p_vm), params, true);
		fn = llvm::Function::Create(fntype, llvm::Function::ExternalLinkage, symbol_name, p_vm->get_module());
		p_vm->register_function(symbol_name, fn);
		return fn;
	}

	bool printf::has_implicit_lts_parameter() const
	{
		return false;
	}
}
