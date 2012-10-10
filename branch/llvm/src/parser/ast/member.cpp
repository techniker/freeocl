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
#include "member.h"
#include "pointer_type.h"
#include "struct_type.h"
#include "typedef.h"
#include <vm/vm.h>

namespace FreeOCL
{
	member::member(const smartptr<expression> &base, const std::string &member_name)
		: base(base), member_name(member_name), t(NULL)
	{
	}

	void member::write(std::ostream& out) const
	{
		smartptr<type> p_type = base->get_type();
		const type_def *p_type_def = p_type.as<type_def>();
		if (p_type_def)	p_type = p_type_def->get_type();
		out << *base;
		const pointer_type *p_pointer_type = p_type.as<pointer_type>();
		if (p_pointer_type)
			out << "->";
		else
			out << '.';
		out << member_name;
	}

	smartptr<type> member::get_type() const
	{
		smartptr<type> p_type = base->get_type();
		const type_def *p_type_def = p_type.as<type_def>();
		if (p_type_def)	p_type = p_type_def->get_type();

		const pointer_type *ptr = p_type.as<pointer_type>();
		const struct_type *s_type;
		if (ptr)
		{
			p_type = ptr->get_base_type();
			p_type_def = p_type.as<type_def>();
			if (p_type_def)	p_type = p_type_def->get_type();
			s_type = p_type.as<struct_type>();
		}
		else
			s_type = p_type.as<struct_type>();
		smartptr<type> r_type = s_type->get_type_of_member(member_name);
		if (r_type)
			return r_type->clone(base->get_type()->is_const() || r_type->is_const(), p_type->get_address_space());
		return r_type;
	}

	uint32_t member::eval_as_uint() const
	{
		throw "user defined types cannot appear in statically evaluated expressions";
		return 0;
	}

	bool member::has_references_to(const std::string &function_name) const
	{
		return base->has_references_to(function_name);
	}

    const char *member::get_node_type() const
    {
        return "member";
    }

	llvm::Value *member::to_IR(vm *p_vm) const
	{
		if (t)
			return t;
		Builder *builder = p_vm->get_builder();
		smartptr<pointer_type> ptr_type = base->get_type();
		smartptr<struct_type> p_type = get_type();
		t = ptr_type ? base->to_IR(p_vm) : base->get_ptr(p_vm);
		if (!t)
		{
			std::vector<unsigned> idx;
			idx.push_back(p_type->get_member_id(member_name));
			t = builder->CreateExtractValue(base->to_IR(p_vm), idx);
			return t;
		}
		std::vector<llvm::Value*> idx;
		idx.push_back(builder->getInt32(0));
		idx.push_back(builder->getInt32(p_type->get_member_id(member_name)));
		t = builder->CreateGEP(t, idx, "member");
		return t = builder->CreateLoad(t, false);
	}

	llvm::Value *member::get_ptr(vm *p_vm) const
	{
		smartptr<pointer_type> ptr_type = base->get_type();
		return ptr_type ? base->to_IR(p_vm) : base->get_ptr(p_vm);
	}

	llvm::Value *member::set_value(vm *p_vm, llvm::Value *v) const
	{
		llvm::Value *ptr = get_ptr(p_vm);
		return p_vm->get_builder()->CreateStore(v, ptr, false);
	}
}
