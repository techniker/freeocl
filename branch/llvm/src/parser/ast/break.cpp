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
#include "break.h"
#include <vm/vm.h>

namespace FreeOCL
{
	_break::_break()
	{
	}

	void _break::write(std::ostream& out) const
	{
		out << "break;" << std::endl;
	}

	bool _break::has_references_to(const std::string &function_name) const
	{
		return false;
	}

	const char *_break::get_node_type() const
	{
		return "_break";
	}

	llvm::Value *_break::to_IR(vm *p_vm) const
	{
		return p_vm->get_builder()->CreateBr(p_vm->get_break_block());
	}
}
