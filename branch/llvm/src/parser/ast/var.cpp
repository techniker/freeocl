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
#include "var.h"
#include <vm/vm.h>
#include <llvm/GlobalVariable.h>
#include <llvm/Function.h>
#include "array_type.h"

namespace FreeOCL
{
	var::var(const std::string &name, const smartptr<type> &p_type, const bool b_local, const bool b_thread_local)
		: name(name),
        p_type(p_type),
		b_local(b_local),
		b_thread_local(b_thread_local),
		v(NULL)
	{
	}

	var::~var()
	{
	}

	smartptr<type> var::get_type() const
	{
		return p_type;
	}

	void var::write(std::ostream& out) const
	{
		out << name << ' ';
	}

	uint32_t var::eval_as_uint() const
	{
		throw "variable cannot be statically evaluated";
		return 0;
	}

	bool var::has_references_to(const std::string &function_name) const
	{
		return false;
	}

    const char *var::get_node_type() const
    {
        return "var";
    }

    void var::allocate(vm *p_vm) const
    {
        if (!v)
        {
            if (is_local())
                v = new_local_variable(p_vm, p_type, get_name());
            else
            {
				llvm::GlobalVariable *var = new llvm::GlobalVariable(*(p_vm->get_module()),
																	 p_type->to_LLVM_type(p_vm),
																	 false,
																	 llvm::GlobalVariable::ExternalLinkage,
																	 NULL,
																	 get_name(),
																	 0,
																	 b_thread_local ? llvm::GlobalVariable::GeneralDynamicTLSModel : llvm::GlobalVariable::NotThreadLocal,
																	 0);
//                if (!b_extern)
					var->setInitializer(llvm::ConstantAggregateZero::get(p_type->to_LLVM_type(p_vm)));
                v = var;
            }
        }
    }

    llvm::Value *var::to_IR(vm *p_vm) const
    {
        allocate(p_vm);
		if (p_type.as<array_type>())
			return v;
        return p_vm->get_builder()->CreateLoad(v, "load_var");
    }

    llvm::AllocaInst *var::new_local_variable(vm *p_vm, const smartptr<type> &p_type, const std::string &name)
    {
        llvm::Function *fn = p_vm->get_builder()->GetInsertBlock()->getParent();
        Builder tmp(&fn->getEntryBlock(), fn->getEntryBlock().begin());
		return tmp.CreateAlloca(p_type->to_LLVM_type(p_vm), 0, name.c_str());
    }

	llvm::Value *var::get_ptr(vm *p_vm) const
    {
        allocate(p_vm);
        return v;
    }

	llvm::Value *var::set_value(vm *p_vm, llvm::Value *v) const
	{
		allocate(p_vm);
		return p_vm->get_builder()->CreateStore(v, this->v, false);
	}
}
