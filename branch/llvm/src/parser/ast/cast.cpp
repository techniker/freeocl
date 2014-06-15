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
#include "cast.h"
#include "native_type.h"
#include "binary.h"
#include <vm/vm.h>
#include <sstream>
#include <iostream>
#include <deque>

namespace FreeOCL
{
	cast::cast(const smartptr<type> &p_type, const smartptr<expression> &exp)
		: exp(exp), p_type(p_type), ret(NULL)
	{
	}

	void cast::write(std::ostream &out) const
	{
		const native_type *native = p_type.as<native_type>();
		if (native && native->is_vector())
		{
			out << *p_type << "::make(";
			std::string post;
			const expression *cur = exp.weak();
			const binary *bin = dynamic_cast<const binary*>(cur);
			std::stringstream buf;
			while(bin && bin->get_op() == ',')
			{
				buf.str(std::string());
				buf << *(bin->get_right());
				post = ',' + buf.str() + post;
				cur = bin->get_left().weak();
				bin = dynamic_cast<const binary*>(cur);
			}
			out << *cur << post << ')';
		}
		else
			out << '(' << *p_type << ")(" << *exp << ')';
	}

	bool cast::validate() const
	{
		const native_type *native = p_type.as<native_type>();
		if (native && native->is_vector())
		{
			const int literal_dim = native->get_dim();
			int acc_dim = 0;
			const expression *cur = exp.weak();
			const binary *bin = dynamic_cast<const binary*>(cur);
			while(bin && bin->get_op() == ',')
			{
                const smartptr<type> &_type = bin->get_right()->get_type();
                const native_type *t = _type.as<native_type>();
				if (!t)
					return false;
				acc_dim += t->get_dim();
				cur = bin->get_left().weak();
				bin = dynamic_cast<const binary*>(cur);
			}
			if (!cur)
				return false;
            const smartptr<type> &_type = cur->get_type();
            const native_type *t = _type.as<native_type>();
			if (!t)
				return false;
			acc_dim += t->get_dim();
			return literal_dim == acc_dim || acc_dim == 1;
		}
		else
			return true;
	}

	smartptr<type> cast::get_type() const
	{
		return p_type;
	}

	uint32_t cast::eval_as_uint() const
	{
		return exp->eval_as_uint();
	}

	bool cast::has_references_to(const std::string &function_name) const
	{
		return exp->has_references_to(function_name);
	}

    const char *cast::get_node_type() const
    {
        return "cast";
    }

	llvm::Value *cast::to_IR(vm *p_vm) const
	{
		if (ret)
			return ret;

		const native_type *native = p_type.as<native_type>();
		if (native && native->is_vector())
		{
			llvm::Value *t = llvm::UndefValue::get(p_type->to_LLVM_type(p_vm));
			const expression *cur = exp.weak();
			const binary *bin = dynamic_cast<const binary*>(cur);
			int n = 0;
			smartptr<type> scalar_type = new native_type(native->get_scalar_type(), true, type::CONSTANT);
			std::deque<const expression*> exps;
			while(bin && bin->get_op() == ',')
			{
				exps.push_front(bin->get_right().weak());
				cur = bin->get_left().weak();
				bin = dynamic_cast<const binary*>(cur);
			}
			exps.push_front(cur);
			for(size_t i = 0 ; i < exps.size() ; ++i)
			{
				cur = exps[i];
				llvm::Value *r = cur->to_IR(p_vm);
				if (r->getType()->isVectorTy())
				{
					const native_type *from_native = cur->get_type().as<native_type>();
					smartptr<type> from_scalar_type = new native_type(from_native->get_scalar_type(), true, type::CONSTANT);
					for(size_t i = 0 ; i < from_native->get_dim() ; ++i)
					{
						llvm::Value *q = p_vm->get_builder()->CreateExtractElement(r, p_vm->get_builder()->getInt32(i));
						q = type::cast_to(p_vm, from_scalar_type, scalar_type, q);
						t = p_vm->get_builder()->CreateInsertElement(t, q, p_vm->get_builder()->getInt32(n));
						++n;
					}
				}
				else
				{
					r = type::cast_to(p_vm, cur->get_type(), scalar_type, r);
					t = p_vm->get_builder()->CreateInsertElement(t, r, p_vm->get_builder()->getInt32(n));
					++n;
				}
			}
			if (n < native->get_dim())
				t = p_vm->get_builder()->CreateShuffleVector(t, t,
															 llvm::ConstantVector::getNullValue(llvm::VectorType::get(p_vm->get_builder()->getInt32Ty(),
																													  native->get_dim())));
			return ret = t;
		}
		else
			return ret = type::cast_to(p_vm, exp->get_type(), p_type, exp->to_IR(p_vm));
	}

	llvm::Value *cast::set_value(vm *p_vm, llvm::Value *v) const
	{
		return NULL;
	}
}
