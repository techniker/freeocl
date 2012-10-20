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
#include "struct_literal.h"
#include "struct_type.h"
#include "chunk.h"
#include "typedef.h"
#include <vm/vm.h>
#include <iostream>

namespace FreeOCL
{
	struct_literal::struct_literal(const smartptr<type> &p_type, const smartptr<node> &initializer)
		: p_type(p_type),
		  initializer(initializer)
	{
	}

	void struct_literal::write(std::ostream &out) const
	{
		out << '(' << *p_type << ')' << '{' << *initializer << '}';
	}

	smartptr<type> struct_literal::get_type() const
	{
		return p_type;
	}

	bool struct_literal::validate() const
	{
		smartptr<struct_type> st = p_type.as<struct_type>();
		if (p_type.as<type_def>())
			st = p_type.as<type_def>()->get_type();
		if (!st)
			return false;
		const chunk *ch = initializer.as<chunk>();
		if (!ch)
			return false;
		if (ch->size() != st->members_count())
			return false;
		return true;
	}

	uint32_t struct_literal::eval_as_uint() const
	{
		throw "user defined types cannot appear in statically evaluated expressions";
		return 0;
	}

	bool struct_literal::has_references_to(const std::string &function_name) const
	{
		return initializer->has_references_to(function_name);
	}

    const char *struct_literal::get_node_type() const
    {
        return "struct_literal";
    }

	llvm::Value *struct_literal::to_IR(vm *p_vm) const
	{
		Builder *builder = p_vm->get_builder();
		llvm::StructType *llvm_type = (llvm::StructType*)p_type->to_LLVM_type(p_vm);

		const struct_type *s_type = p_type.as<struct_type>();
		if (!s_type && p_type.as<type_def>())
			s_type = p_type.as<type_def>()->get_type().as<struct_type>();

		std::cerr << *p_type << std::endl;
		std::cerr << *initializer << std::endl;

		const chunk *p_chunk = initializer.as<chunk>();
		llvm::Value *t = llvm::UndefValue::get(llvm_type);
		std::vector<unsigned> idxs;
		idxs.resize(1);
		for(size_t i = 0 ; i < p_chunk->size() ; ++i)
		{
			const smartptr<type> &m_type = s_type->get_type_of_member(i);
			llvm::Value *v = p_chunk->at(i)->to_IR(p_vm);
			v = type::cast_to(p_vm, p_chunk->at(i).as<expression>()->get_type(), m_type, v);
			idxs[0] = i;
			t = builder->CreateInsertValue(t, v, idxs);
		}

		return t;
	}

	llvm::Value *struct_literal::set_value(vm *p_vm, llvm::Value *v) const
	{
		return NULL;
	}
}
