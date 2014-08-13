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
#include "array_type.h"
#include "utils/string.h"
#include <vm/vm.h>

namespace FreeOCL
{
	smartptr<type> array_type::clone(const bool b_const, const address_space addr_space) const
	{
		return new array_type(base_type->clone(b_const, addr_space), b_const, addr_space, size);
	}

	smartptr<type> array_type::clone_as_ptr() const
	{
		return new pointer_type(base_type, is_const(), get_address_space());
	}

	std::string array_type::suffix() const
	{
		return base_type->suffix() + '[' + to_string(size) + ']';
	}

	std::string array_type::prefix() const
	{
		if (is_const())
			return (' ' + base_type->prefix()) + " const";
		return base_type->prefix();
	}

	std::string array_type::complete_name() const
	{
		if (base_type.as<array_type>())
			return base_type.as<array_type>()->complete_name() + '[' + to_string(size) + ']';
		return base_type->get_cxx_name() + '[' + to_string(size) + ']';
	}

    const char *array_type::get_node_type() const
    {
        return "array_type";
    }

	std::string array_type::mangled_name() const
	{
		switch(base_type->get_address_space())
		{
		case PRIVATE:
			if (is_const())
				return "KA_" + base_type->mangled_name();
			return "A_" + base_type->mangled_name();
		case GLOBAL:
			if (is_const())
				return "KA_U2A1" + base_type->mangled_name();
			return "A_U2A1" + base_type->mangled_name();
		case CONSTANT:
			if (is_const())
				return "KA_U2A2" + base_type->mangled_name();
			return "A_U2A2" + base_type->mangled_name();
		case LOCAL:
			if (is_const())
				return "KA_U2A3" + base_type->mangled_name();
			return "A_U2A3" + base_type->mangled_name();
		}
	}

	llvm::Type *array_type::to_LLVM_type(vm *p_vm) const
	{
		return llvm::ArrayType::get(base_type->to_LLVM_type(p_vm), size);
	}
}