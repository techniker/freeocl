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
#include "ternary.h"
#include "native_type.h"
#include <vm/vm.h>

#include <iostream>
#include <llvm/Module.h>

namespace FreeOCL
{
	ternary::ternary(const smartptr<expression> &exp1, const smartptr<expression> &exp2, const smartptr<expression> &exp3)
		: exp1(exp1),
		exp2(exp2),
		exp3(exp3),
		ret(NULL)
	{
		const smartptr<type> &t0 = exp2->get_type();
		const smartptr<type> &t1 = exp3->get_type();
		p_type = type::compute_resulting_type(t0, t1);
	}

	ternary::~ternary()
	{
	}

	void ternary::write(std::ostream &out) const
	{
		out << '(' <<  *exp1 << '?' << *exp2 << ':' << *exp3 << ')';
	}

	smartptr<type> ternary::get_type() const
	{
		return p_type;
	}

	uint32_t ternary::eval_as_uint() const
	{
		return exp1->eval_as_uint() ? exp2->eval_as_uint() : exp3->eval_as_uint();
	}

	bool ternary::has_references_to(const std::string &function_name) const
	{
		return exp1->has_references_to(function_name) || exp2->has_references_to(function_name) || exp3->has_references_to(function_name);
	}

    const char *ternary::get_node_type() const
    {
        return "ternary";
    }

	llvm::Value *ternary::to_IR(vm *p_vm) const
	{
		if (ret)
			return ret;
		Builder *builder = p_vm->get_builder();
		const native_type *nt = exp1->get_type().as<native_type>();
		if (nt && nt->is_scalar())
		{
			llvm::Function *fn = builder->GetInsertBlock()->getParent();

			llvm::Value *t = exp1->to_IR(p_vm);
			t = type::cast_to_bool(p_vm, t);
			llvm::BasicBlock *blockPass = llvm::BasicBlock::Create(p_vm->get_context(), "pass", fn);
			llvm::BasicBlock *blockFail = llvm::BasicBlock::Create(p_vm->get_context(), "fail", fn);
			llvm::BasicBlock *blockMerge = llvm::BasicBlock::Create(p_vm->get_context(), "merge", fn);

			builder->CreateCondBr(t, blockPass, blockFail);

			builder->SetInsertPoint(blockPass);
			llvm::Value *vt = type::cast_to(p_vm, exp2->get_type(), p_type, exp2->to_IR(p_vm));
			blockPass = builder->GetInsertBlock();
			builder->CreateBr(blockMerge);

			builder->SetInsertPoint(blockFail);
			llvm::Value *vf = type::cast_to(p_vm, exp3->get_type(), p_type, exp3->to_IR(p_vm));
			blockFail = builder->GetInsertBlock();
			builder->CreateBr(blockMerge);

			builder->SetInsertPoint(blockMerge);
			llvm::PHINode *phi = builder->CreatePHI(p_type->to_LLVM_type(p_vm), 2, "ternary");
			phi->addIncoming(vt, blockPass);
			phi->addIncoming(vf, blockFail);

			return ret = phi;
		}
		else
		{
			llvm::Value *t = exp1->to_IR(p_vm);
			t = builder->CreateICmpNE(t, llvm::Constant::getNullValue(t->getType()));
			return ret = builder->CreateSelect(t, exp2->to_IR(p_vm), exp3->to_IR(p_vm), "ternary");
		}
	}

	llvm::Value *ternary::set_value(vm *p_vm, llvm::Value *v) const
	{
		return NULL;
	}
}
