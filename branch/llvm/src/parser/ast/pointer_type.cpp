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
#include "pointer_type.h"
#include "native_type.h"
#include "typedef.h"
#include <vm/vm.h>

namespace FreeOCL
{
	smartptr<type> pointer_type::t_p_const_char(new pointer_type(new native_type(native_type::CHAR, true, type::CONSTANT), true, type::CONSTANT));

	bool pointer_type::operator==(const type &t) const
	{
		if (dynamic_cast<const type_def*>(&t))
			return *this == *dynamic_cast<const type_def*>(&t)->get_type();
		const pointer_type *p_type = dynamic_cast<const pointer_type*>(&t);
		return p_type && p_type->base_type && base_type
				&& p_type->base_type->get_address_space() == base_type->get_address_space()
				&& *(p_type->base_type) == *base_type
				&& is_const() == p_type->is_const();
	}

	void pointer_type::write(std::ostream &out) const
	{
		out << get_cxx_name() << ' ';
	}

	std::string pointer_type::get_name() const
	{
		if (!base_type)
			return is_const() ? "* const" : "*";

		if (is_const())
			return (' ' + base_type->get_name()) + "* const";
		return (' ' + base_type->get_name()) + '*';
	}

	std::string pointer_type::get_cxx_name() const
	{
		if (!base_type)
			return is_const() ? "* const" : "*";

		if (is_const())
			return (' ' + base_type->get_cxx_name()) + "* const";
		return (' ' + base_type->get_cxx_name()) + '*';
	}

	bool pointer_type::is_compatible_with(const pointer_type &p_type) const
	{
		if (!base_type || !p_type.base_type)
			return false;
		return int(p_type.base_type->get_address_space()) == int(base_type->get_address_space());
	}

	smartptr<type> pointer_type::clone() const
	{
		const pointer_type *ptr = base_type.as<pointer_type>();
		if (ptr)
			return new pointer_type(ptr->clone(), is_const(), get_address_space());
		return new pointer_type(base_type, is_const(), get_address_space());
	}

	smartptr<type> pointer_type::clone(const bool b_const, const address_space addr_space) const
	{
		return new pointer_type(base_type, b_const, addr_space);
	}

	void pointer_type::set_root_type(const smartptr<type> &root_type)
	{
		pointer_type *ptr = base_type.as<pointer_type>();
		if (ptr)
			ptr->set_root_type(root_type);
		else
			base_type = root_type;
	}

    const char *pointer_type::get_node_type() const
    {
        return "pointer_type";
    }

	llvm::Type *pointer_type::to_LLVM_type(vm *p_vm) const
	{
		const native_type *nt = base_type.as<native_type>();
		if (nt && nt->get_type_id() == native_type::VOID)
			return p_vm->get_builder()->getInt8PtrTy();
		return llvm::PointerType::get(base_type->to_LLVM_type(p_vm), 0);
	}

	std::string pointer_type::mangled_name() const
	{
		switch(base_type->get_address_space())
		{
		case PRIVATE:
			if (is_const())
				return "KP" + base_type->mangled_name();
			return "P" + base_type->mangled_name();
		case GLOBAL:
			if (is_const())
				return "KPU2A1" + base_type->mangled_name();
			return "PU2A1" + base_type->mangled_name();
		case CONSTANT:
			if (is_const())
				return "KPU2A2" + base_type->mangled_name();
			return "PU2A2" + base_type->mangled_name();
		case LOCAL:
			if (is_const())
				return "KPU2A3" + base_type->mangled_name();
			return "PU2A3" + base_type->mangled_name();
		}
	}
}