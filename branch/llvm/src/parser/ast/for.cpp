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
#include "for.h"
#include "type.h"
#include <vm/vm.h>

namespace FreeOCL
{
	_for::_for(const smartptr<node> &init,
			   const smartptr<expression> &test,
			   const smartptr<expression> &step,
			   const smartptr<node> &stmt)
		: init(init),
		  test(test),
		  step(step),
		  stmt(stmt)
	{
	}

	void _for::write(std::ostream& out) const
	{
		out << "for(" << *init << ';' << *test << ';' << *step << ')' << std::endl
			<< *stmt << std::endl;
	}

	bool _for::has_references_to(const std::string &function_name) const
	{
		return init->has_references_to(function_name)
				|| test->has_references_to(function_name)
				|| step->has_references_to(function_name)
				|| stmt->has_references_to(function_name);
	}

	const char *_for::get_node_type() const
	{
		return "_for";
	}

	llvm::Value *_for::to_IR(vm *p_vm) const
	{
		Builder *builder = p_vm->get_builder();
		llvm::Function *fn = builder->GetInsertBlock()->getParent();

		llvm::BasicBlock *blockTest = llvm::BasicBlock::Create(p_vm->get_context(), "for_test", fn);
		llvm::BasicBlock *blockStep = llvm::BasicBlock::Create(p_vm->get_context(), "for_step", fn);
		llvm::BasicBlock *blockBody = llvm::BasicBlock::Create(p_vm->get_context(), "for_body", fn);
		llvm::BasicBlock *blockEnd = llvm::BasicBlock::Create(p_vm->get_context(), "for_end", fn);

		p_vm->push_break_continue_blocks(blockEnd, blockStep);

		init->to_IR(p_vm);

		builder->CreateBr(blockTest);

		builder->SetInsertPoint(blockStep);
		step->to_IR(p_vm);
		builder->CreateBr(blockTest);

		builder->SetInsertPoint(blockTest);
		llvm::Value *c = test->to_IR(p_vm);
		c = type::cast_to_bool(p_vm, c);
		builder->CreateCondBr(c, blockBody, blockEnd);

		builder->SetInsertPoint(blockBody);
		stmt->to_IR(p_vm);
		builder->CreateBr(blockStep);

		builder->SetInsertPoint(blockEnd);

		p_vm->pop_break_continue_blocks();

		return NULL;
	}
}
