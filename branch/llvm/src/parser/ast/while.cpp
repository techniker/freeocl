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
#include "while.h"
#include <vm/vm.h>
#include "type.h"

namespace FreeOCL
{
	_while::_while(const smartptr<expression> &test, const smartptr<node> &stmt)
		: test(test),
		  stmt(stmt)
	{
	}

	void _while::write(std::ostream& out) const
	{
		out << "while(" << *test << ')' << std::endl
			<< *stmt << std::endl;
	}

	bool _while::has_references_to(const std::string &function_name) const
	{
		return test->has_references_to(function_name) || stmt->has_references_to(function_name);
	}

    const char *_while::get_node_type() const
    {
        return "_while";
    }

	llvm::Value *_while::to_IR(vm *p_vm) const
	{
		Builder *builder = p_vm->get_builder();
		llvm::Function *fn = builder->GetInsertBlock()->getParent();

		llvm::BasicBlock *blockBody = llvm::BasicBlock::Create(p_vm->get_context(), "while_body", fn);
		llvm::BasicBlock *blockTest = llvm::BasicBlock::Create(p_vm->get_context(), "while_test", fn);
		llvm::BasicBlock *blockEnd = llvm::BasicBlock::Create(p_vm->get_context(), "while_end", fn);

		p_vm->push_break_continue_blocks(blockEnd, blockTest);

		builder->CreateBr(blockTest);

		builder->SetInsertPoint(blockTest);
		llvm::Value *c = test->to_IR(p_vm);
		c = type::cast_to_bool(p_vm, c);
		builder->CreateCondBr(c, blockBody, blockEnd);

		builder->SetInsertPoint(blockBody);
		stmt->to_IR(p_vm);
		builder->CreateBr(blockTest);

		builder->SetInsertPoint(blockEnd);

		p_vm->pop_break_continue_blocks();

		return NULL;
	}
}
