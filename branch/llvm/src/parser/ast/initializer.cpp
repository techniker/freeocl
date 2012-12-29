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
#include "initializer.h"
#include <vm/vm.h>
#include <llvm/GlobalVariable.h>
#include <llvm/Function.h>
#include <llvm/IRBuilder.h>
#include "array_type.h"
#include <iostream>
#include <llvm/Module.h>
#include "value.h"
#include "struct_type.h"
#include "chunk.h"
#include "typedef.h"

namespace FreeOCL
{
	initializer::initializer(const smartptr<var> &v, const smartptr<node> &init)
		: v(v), init(init), ret(NULL)
	{
	}

	initializer::~initializer()
	{
	}

	void initializer::write(std::ostream& out) const
	{
	}

	bool initializer::has_references_to(const std::string &function_name) const
	{
		return init->has_references_to(function_name);
	}

	const char *initializer::get_node_type() const
	{
		return "initializer";
	}

	llvm::Value *initializer::to_IR(vm *p_vm) const
	{
		if (ret)
			return ret;

		if (v->is_local())
		{
			return ret = v->set_value(p_vm, eval_initializer(p_vm, v->get_type(), init));
		}
		else
		{
			llvm::GlobalVariable *gv = (llvm::GlobalVariable *)v->get_ptr(p_vm);
			gv->setInitializer(build_initializer(p_vm, v->get_type(), init));
			return ret = gv;
		}
	}

	llvm::Constant *initializer::build_initializer(vm *p_vm, const smartptr<type> &p_type, const smartptr<node> &init)
	{
		const generic_value *v = init.as<generic_value>();
		if (v)
			return (llvm::Constant*)type::cast_to(p_vm, v->get_type(), p_type, v->to_IR(p_vm));

		const struct_type *s_type = p_type.as<struct_type>();
		if (s_type)
		{
			const chunk *elts = init.as<chunk>();
			std::vector<llvm::Constant*> values;
			values.reserve(elts->size());
			for(size_t i = 0 ; i < elts->size() ; ++i)
				values.push_back(build_initializer(p_vm, s_type->get_type_of_member(i), elts->at(i)));
			return llvm::ConstantStruct::get((llvm::StructType*)s_type->to_LLVM_type(p_vm), values);
		}

		const array_type *a_type = p_type.as<array_type>();
		if (a_type)
		{
			const chunk *elts = init.as<chunk>();
			std::vector<llvm::Constant*> values;
			values.reserve(elts->size());
			for(size_t i = 0 ; i < elts->size() ; ++i)
				values.push_back(build_initializer(p_vm, a_type->get_base_type(), elts->at(i)));
			return llvm::ConstantArray::get((llvm::ArrayType*)a_type->to_LLVM_type(p_vm), values);
		}

		const type_def *td_type = p_type.as<type_def>();
		if (td_type)
			return build_initializer(p_vm, td_type->get_type(), init);
	}

	llvm::Value *initializer::eval_initializer(vm *p_vm, const smartptr<type> &p_type, const smartptr<node> &init)
	{
		const expression *e = init.as<expression>();
		if (e)
			return type::cast_to(p_vm, e->get_type(), p_type, e->to_IR(p_vm));

		const struct_type *s_type = p_type.as<struct_type>();
		if (s_type)
		{
			const chunk *elts = init.as<chunk>();
			llvm::Value *v = llvm::UndefValue::get(s_type->to_LLVM_type(p_vm));
			std::vector<unsigned> idxs;
			idxs.resize(1);
			for(size_t i = 0 ; i < elts->size() ; ++i)
			{
				llvm::Value *x = eval_initializer(p_vm, s_type->get_type_of_member(i), elts->at(i));
				idxs[0] = i;
				v = p_vm->get_builder()->CreateInsertValue(v, x, idxs);
			}
			return v;
		}

		const array_type *a_type = p_type.as<array_type>();
		if (a_type)
		{
			const chunk *elts = init.as<chunk>();
			llvm::Value *v = llvm::UndefValue::get(a_type->to_LLVM_type(p_vm));
			std::vector<unsigned> idxs;
			idxs.resize(1);
			for(size_t i = 0 ; i < elts->size() ; ++i)
			{
				llvm::Value *x = eval_initializer(p_vm, a_type->get_base_type(), elts->at(i));
				idxs[0] = i;
				v = p_vm->get_builder()->CreateInsertValue(v, x, idxs);
			}
			return v;
		}

		const type_def *td_type = p_type.as<type_def>();
		if (td_type)
			return eval_initializer(p_vm, td_type->get_type(), init);
	}
}
