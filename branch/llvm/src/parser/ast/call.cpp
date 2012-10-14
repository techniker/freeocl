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
#include "call.h"
#include "native_type.h"
#include "array_type.h"
#include <vm/vm.h>
#include <llvm/Function.h>
#include <iostream>
#include <llvm/Module.h>

namespace FreeOCL
{
	call::call(const smartptr<callable> &fn, const smartptr<chunk> &args)
		: fn(fn),
		args(args)
	{
	}

	call::~call()
	{
	}

	smartptr<type> call::get_type() const
	{
		std::deque<smartptr<type> > arg_types;
		if (args)
			for(size_t i = 0 ; i < args->size() ; ++i)
				arg_types.push_back((*args)[i].as<expression>()->get_type());
		return fn->get_return_type(arg_types);
	}

	void call::write(std::ostream& out) const
	{
		out << fn->get_name() << '(';
		if (args)
		{
            std::deque<smartptr<type> > param_types;
            for(size_t i = 0 ; i < args->size() ; ++i)
                param_types.push_back((*args)[i].as<expression>()->get_type());
            const std::deque<smartptr<type> > &arg_types = fn->get_arg_types(param_types);
			for(size_t i = 0 ; i < args->size() ; ++i)
			{
				if (i)
					out << ',';
				if (i >= arg_types.size())
                    out << *((*args)[i]);
                else
                {
                    const native_type *a_type = arg_types[i].as<native_type>();
                    const native_type *p_type = param_types[i].as<native_type>();
                    if (!a_type || !p_type || !(a_type->is_vector() && p_type->is_scalar()))
                        out << *((*args)[i]);
                    else
                    {
                        smartptr<type> basic_type = a_type->clone(false, type::PRIVATE);
                        out << *basic_type << "::make(" << *((*args)[i]) << ')';
                    }
                }
			}
		}
		out << ')';
	}

	uint32_t call::eval_as_uint() const
	{
		throw "function calls cannot be statically evaluated";
		return 0;
	}

	bool call::has_references_to(const std::string &function_name) const
	{
		if (args)
			for(size_t i = 0 ; i < args->size() ; ++i)
				if (args->at(i)->has_references_to(function_name))
					return true;
		return fn->has_references_to(function_name);
	}

    const char *call::get_node_type() const
    {
        return "call";
    }

	llvm::Value *call::to_IR(vm *p_vm) const
	{
		std::vector<llvm::Value*> vargs;
		std::deque<smartptr<type> > param_types;
		if (fn->has_implicit_lts_parameter())
			vargs.push_back(p_vm->get_lts());
		if (args)
			for(size_t i = 0 ; i < args->size() ; ++i)
				param_types.push_back((*args)[i].as<expression>()->get_type());
		const std::deque<smartptr<type> > &arg_types = fn->get_arg_types(param_types);
		if (args)
			for(size_t i = 0, end = args->size() ; i < end ; ++i)
			{
				llvm::Value *v;
				if (param_types[i].as<array_type>())
				{
					v = args->at(i).as<expression>()->get_ptr(p_vm);
					std::vector<llvm::Value*> idxs;
					idxs.push_back(p_vm->get_builder()->getInt32(0));
					idxs.push_back(p_vm->get_builder()->getInt32(0));
					v = p_vm->get_builder()->CreateGEP(v, idxs);
				}
				else
				{
					if (i < arg_types.size())
					{
						v = args->at(i)->to_IR(p_vm);
						v = type::cast_to(p_vm, args->at(i).as<expression>()->get_type(), arg_types[i], v);
					}
					else
						v = args->at(i)->to_IR(p_vm);
				}
				vargs.push_back(v);
			}
		llvm::Value *callee = fn->get_callee(p_vm, arg_types);
		return p_vm->get_builder()->CreateCall(callee, vargs);
	}

	llvm::Value *call::set_value(vm *p_vm, llvm::Value *v) const
	{
		return NULL;
	}
}
