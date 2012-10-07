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
#include "return.h"
#include <vm/vm.h>

namespace FreeOCL
{
	_return::_return(const smartptr<type> &fn_return_type, const smartptr<expression> &exp)
		: fn_return_type(fn_return_type), exp(exp)
	{
	}

	_return::_return(const smartptr<type> &fn_return_type)
		: fn_return_type(fn_return_type)
	{
	}

	void _return::write(std::ostream& out) const
	{
		if (exp)
			out << "return " << *exp << ';' << std::endl;
		else
			out << "return;" << std::endl;
	}

	bool _return::has_references_to(const std::string &function_name) const
	{
		return exp ? exp->has_references_to(function_name) : false;
	}

	const char *_return::get_node_type() const
	{
		return "_return";
	}

	llvm::Value *_return::to_IR(vm *p_vm) const
	{
		llvm::Value *t = NULL;
		if (!exp)
			t = p_vm->get_builder()->CreateRetVoid();
		else
		{
			t = exp->to_IR(p_vm);
			t = type::cast_to(p_vm, exp->get_type(), fn_return_type, t);
			t = p_vm->get_builder()->CreateRet(t);
		}
		// Make sure it is the last instruction of the block
		llvm::BasicBlock *useless = llvm::BasicBlock::Create(p_vm->get_context(), "useless");
		p_vm->get_builder()->SetInsertPoint(useless);
		return t;
	}
}
