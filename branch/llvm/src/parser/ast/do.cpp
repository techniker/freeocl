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
#include "do.h"
#include "type.h"
#include <vm/vm.h>

namespace FreeOCL
{
	_do::_do(const smartptr<expression> &test, const smartptr<node> &stmt)
		: test(test),
		  stmt(stmt)
	{
	}

	void _do::write(std::ostream& out) const
	{
		out << "do" << std::endl
			<< *stmt << std::endl
			<< "while(" << *test << ");" << std::endl;
	}

	bool _do::has_references_to(const std::string &function_name) const
	{
		return test->has_references_to(function_name) || stmt->has_references_to(function_name);
	}

    const char *_do::get_node_type() const
    {
        return "_do";
    }

	llvm::Value *_do::to_IR(vm *p_vm) const
	{
		Builder *builder = p_vm->get_builder();
		llvm::Function *fn = builder->GetInsertBlock()->getParent();

		llvm::BasicBlock *blockBody = llvm::BasicBlock::Create(p_vm->get_context(), "do_body", fn);
		llvm::BasicBlock *blockEnd = llvm::BasicBlock::Create(p_vm->get_context(), "do_end", fn);

		builder->CreateBr(blockBody);

		builder->SetInsertPoint(blockBody);
		stmt->to_IR(p_vm);

		llvm::Value *c = test->to_IR(p_vm);
		c = type::cast_to_bool(p_vm, c);
		builder->CreateCondBr(c, blockBody, blockEnd);

		builder->SetInsertPoint(blockEnd);

		return NULL;
	}
}
