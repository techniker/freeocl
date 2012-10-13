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
#include "unary.h"
#include "native_type.h"
#include "pointer_type.h"
#include "../parser.h"
#include <vm/vm.h>

namespace FreeOCL
{
	unary::unary(int op, const smartptr<expression> &exp, const bool b_postfix)
		: exp(exp),
		op(op),
		b_postfix(b_postfix),
		t(NULL)
	{
		const smartptr<type> &t0 = exp->get_type();
		switch(op)
		{
		case parser::INC_OP:
		case parser::DEC_OP:
		case '!':
		case '~':
		case '-':
		case '+':
			p_type = t0;
			break;
		case '*':
			p_type = t0.as<pointer_type>()->get_base_type();
			break;
		case '&':
			p_type = new pointer_type(t0, true, type::PRIVATE);
			break;
		}
	}

	unary::~unary()
	{
	}

	void unary::write(std::ostream &out) const
	{
		out << '(';
		if (b_postfix)
			out << *exp;

		switch(op)
		{
		case parser::INC_OP:	out << "++";	break;
		case parser::DEC_OP:	out << "--";	break;
		case '!':
		case '~':
		case '-':
		case '+':
		case '*':
		case '&':
			out << (char)op;
			break;
		}

		if (!b_postfix)
			out << *exp;
		out << ')';
	}

	smartptr<type> unary::get_type() const
	{
		return p_type;
	}

	uint32_t unary::eval_as_uint() const
	{
		const uint32_t v = exp->eval_as_uint();
		switch(op)
		{
		case parser::INC_OP:	return v + 1;
		case parser::DEC_OP:	return v - 1;
		case '!':				return !v;
		case '~':				return ~v;
		case '-':				return -v;
		case '+':				return v;
		case '*':				throw "unary operator * cannot be statically evaluated";
		case '&':				throw "unary operator & cannot be statically evaluated";
		}
		return 0;
	}

	bool unary::has_references_to(const std::string &function_name) const
	{
		return exp->has_references_to(function_name);
	}

    const char *unary::get_node_type() const
    {
        return "unary";
    }

	llvm::Value *unary::to_IR(vm *p_vm) const
	{
		Builder *builder = p_vm->get_builder();
		if (!t)
			t = exp->to_IR(p_vm);

		switch(op)
		{
		case parser::INC_OP:
			{
				llvm::Value *v;
				if (t->getType()->isFloatingPointTy())
					v = builder->CreateFAdd(t, llvm::ConstantFP::get(t->getType(), 1.0));
				else if (t->getType()->isIntegerTy())
					v = builder->CreateAdd(t, llvm::ConstantInt::get(t->getType(), 1, false));
				else
					v = builder->CreateGEP(t, builder->getInt32(1));
				builder->CreateStore(v, exp->get_ptr(p_vm));
				if (b_postfix)
					return t;
				return v;
			}
			break;
		case parser::DEC_OP:
			{
				llvm::Value *v;
				if (t->getType()->isFloatingPointTy())
					v = builder->CreateFSub(t, llvm::ConstantFP::get(t->getType(), 1.0));
				else if (t->getType()->isIntegerTy())
					v = builder->CreateSub(t, llvm::ConstantInt::get(t->getType(), 1, false));
				else
					v = builder->CreateGEP(t, builder->getInt32(-1));
				builder->CreateStore(v, exp->get_ptr(p_vm));
				if (b_postfix)
					return t;
				return v;
			}
			break;
		case '!':
			return builder->CreateNot(type::cast_to_bool(p_vm, t), "lnot");
		case '~':
			return builder->CreateNot(t, "not");
		case '-':
			return t->getType()->isFloatingPointTy() ? builder->CreateFNeg(t, "fneg") : builder->CreateNeg(t, "neg");
		case '+':
			return t;
		case '*':
			//! \todo implement volatile pointers
			return builder->CreateLoad(t, false, "load");
		case '&':
			return exp->get_ptr(p_vm);
		}
	}

	llvm::Value *unary::get_ptr(vm *p_vm) const
	{
		switch(op)
		{
		case parser::INC_OP:
		case parser::DEC_OP:
			if (!b_postfix)
				return exp->get_ptr(p_vm);
			break;
		case '+':
			return exp->get_ptr(p_vm);
		case '*':
			return t ? t : (t = exp->to_IR(p_vm));
		}
		return NULL;
	}

	llvm::Value *unary::set_value(vm *p_vm, llvm::Value *v) const
	{
		switch(op)
		{
		case '*':
			return p_vm->get_builder()->CreateStore(v, get_ptr(p_vm), false);
		}

		return NULL;
	}
}
