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
#include "binary.h"
#include "native_type.h"
#include "../parser.h"
#include <vm/vm.h>
#include "array_type.h"
#include <iostream>
#include <llvm/Module.h>

namespace FreeOCL
{
	binary::binary(int op, const smartptr<expression> &left, const smartptr<expression> &right)
		: left(left),
		right(right),
		op(op)
	{
		const smartptr<type> &t0 = left->get_type();
		const smartptr<type> &t1 = right->get_type();
		switch(op)
		{
		case '+':
		case '-':
		case '*':
		case '/':
			p_type = type::compute_resulting_type(t0, t1);
			break;

		case ',':
			p_type = t1;
			break;

		case '%':
		case '|':
		case '^':
		case '&':
		case parser::LEFT_OP:
		case parser::RIGHT_OP:
			p_type = type::compute_resulting_type(t0, t1);
			break;

		case '<':
		case '>':
		case parser::LE_OP:
		case parser::GE_OP:
		case parser::EQ_OP:
		case parser::NE_OP:
		case parser::AND_OP:
		case parser::OR_OP:
			{
				int dim0 = 1;
				int dim1 = 1;
				if (t0.as<native_type>())
					dim0 = t0.as<native_type>()->get_dim();
				if (t1.as<native_type>())
					dim1 = t1.as<native_type>()->get_dim();
				if (dim0 == 1 && dim1 == 1)
					p_type = native_type::t_bool;
				else
					p_type = native_type::get_int_for_dim(std::max(dim0, dim1));
			}
			break;

		case '=':
		case parser::MUL_ASSIGN:
		case parser::DIV_ASSIGN:
		case parser::MOD_ASSIGN:
		case parser::ADD_ASSIGN:
		case parser::SUB_ASSIGN:
		case parser::LEFT_ASSIGN:
		case parser::RIGHT_ASSIGN:
		case parser::AND_ASSIGN:
		case parser::XOR_ASSIGN:
		case parser::OR_ASSIGN:
			p_type = t0;
			break;
		}
	}

	binary::~binary()
	{
	}

	void binary::write(std::ostream &out) const
	{
		out << '(' <<  *left << ' ';

		switch(op)
		{
		case '+':
		case '-':
		case '*':
		case '/':
		case '%':
		case '|':
		case '^':
		case '&':
		case '<':
		case '>':
		case '=':
		case ',':
			out << (char)op;
			break;
		case parser::LEFT_OP:		out << "<<";	break;
		case parser::RIGHT_OP:		out << ">>";	break;
		case parser::LE_OP:			out << "<=";	break;
		case parser::GE_OP:			out << ">=";	break;
		case parser::EQ_OP:			out << "==";	break;
		case parser::NE_OP:			out << "!=";	break;
		case parser::AND_OP:		out << "&&";	break;
		case parser::OR_OP:			out << "||";	break;
		case parser::MUL_ASSIGN:	out << "*=";	break;
		case parser::DIV_ASSIGN:	out << "/=";	break;
		case parser::MOD_ASSIGN:	out << "%=";	break;
		case parser::ADD_ASSIGN:	out << "+=";	break;
		case parser::SUB_ASSIGN:	out << "-=";	break;
		case parser::LEFT_ASSIGN:	out << "<<=";	break;
		case parser::RIGHT_ASSIGN:	out << ">>=";	break;
		case parser::AND_ASSIGN:	out << "&=";	break;
		case parser::XOR_ASSIGN:	out << "^=";	break;
		case parser::OR_ASSIGN:		out << "|=";	break;
		}

		out << ' ' << *right << ')';
	}

	smartptr<type> binary::get_type() const
	{
		return p_type;
	}

	uint32_t binary::eval_as_uint() const
	{
		const uint32_t vl = left->eval_as_uint();
		const uint32_t vr = right->eval_as_uint();
		switch(op)
		{
		case '+':	return vl + vr;
		case '-':	return vl - vr;
		case '*':	return vl * vr;
		case '/':	return vl / vr;
		case '%':	return vl % vr;
		case '|':	return vl | vr;
		case '^':	return vl ^ vr;
		case '&':	return vl & vr;
		case '<':	return vl < vr;
		case '>':	return vl > vr;
		case '=':	return vr;
		case ',':	return vr;
		case parser::LEFT_OP:		return vl << vr;
		case parser::RIGHT_OP:		return vl >> vr;
		case parser::LE_OP:			return vl <= vr;
		case parser::GE_OP:			return vl >= vr;
		case parser::EQ_OP:			return vl == vr;
		case parser::NE_OP:			return vl != vr;
		case parser::AND_OP:		return vl && vr;
		case parser::OR_OP:			return vl || vr;
		case parser::MUL_ASSIGN:	return vl * vr;
		case parser::DIV_ASSIGN:	return vl / vr;
		case parser::MOD_ASSIGN:	return vl % vr;
		case parser::ADD_ASSIGN:	return vl + vr;
		case parser::SUB_ASSIGN:	return vl - vr;
		case parser::LEFT_ASSIGN:	return vl << vr;
		case parser::RIGHT_ASSIGN:	return vl >> vr;
		case parser::AND_ASSIGN:	return vl & vr;
		case parser::XOR_ASSIGN:	return vl ^ vr;
		case parser::OR_ASSIGN:		return vl | vr;
		}
		return 0;
	}

	bool binary::has_references_to(const std::string &function_name) const
	{
		return left->has_references_to(function_name) || right->has_references_to(function_name);
	}

    const char *binary::get_node_type() const
    {
        return "binary";
    }

	llvm::Value *binary::to_IR(vm *p_vm) const
	{
		Builder *builder = p_vm->get_builder();
		llvm::Value *vl = NULL;
		switch(op)
		{
		case '=':
			break;
		default:
			vl = left->get_type().as<array_type>() ? left->get_ptr(p_vm) : left->to_IR(p_vm);
		}

		llvm::Value *vr = right->get_type().as<array_type>() ? right->get_ptr(p_vm) : right->to_IR(p_vm);

		switch(op)
		{
		case ',':	return vr;
		case parser::AND_OP:	return builder->CreateAnd(type::cast_to_bool(p_vm, vl), type::cast_to_bool(p_vm, vr), "land");
		case parser::OR_OP:		return builder->CreateOr(type::cast_to_bool(p_vm, vl), type::cast_to_bool(p_vm, vr), "lor");
		case '=':				return left->set_value(p_vm, type::cast_to(p_vm, right->get_type(), left->get_type(), vr));
		}

		if (vl->getType()->isIntOrIntVectorTy() && vr->getType()->isIntOrIntVectorTy())
		{
			switch(op)
			{
			case '+':
			case '-':
			case '*':
			case '/':
			case '%':
			case '|':
			case '^':
			case '&':
			case parser::LEFT_OP:
			case parser::RIGHT_OP:
				vl = type::cast_to(p_vm, left->get_type(), p_type, vl);
				vr = type::cast_to(p_vm, right->get_type(), p_type, vr);
				break;
			default:
				if (left->get_type().as<native_type>() && left->get_type().as<native_type>()->is_vector())
					vr = type::cast_to(p_vm, right->get_type(), left->get_type(), vr);
				else if (right->get_type().as<native_type>() && right->get_type().as<native_type>()->is_vector())
					vl = type::cast_to(p_vm, left->get_type(), right->get_type(), vl);
				else
				{
					const smartptr<type> &tmp_type = type::compute_resulting_type(left->get_type(), right->get_type());
					vl = type::cast_to(p_vm, left->get_type(), tmp_type, vl);
					vr = type::cast_to(p_vm, right->get_type(), tmp_type, vr);
				}
				break;
			}

			switch(op)
			{
			case '+':	return builder->CreateAdd(vl, vr, "add");
			case '-':	return builder->CreateSub(vl, vr, "sub");
			case '*':	return builder->CreateMul(vl, vr, "mul");
			case '/':	return builder->CreateUDiv(vl, vr, "div");
			case '%':	return builder->CreateSRem(vl, vr, "smod");
			case '|':	return builder->CreateOr(vl, vr, "or");
			case '^':	return builder->CreateXor(vl, vr, "xor");
			case '&':	return builder->CreateAnd(vl, vr, "and");
			case '<':	return builder->CreateZExt(builder->CreateICmpSLT(vl, vr, "slt"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case '>':	return builder->CreateZExt(builder->CreateICmpSGT(vl, vr, "sgt"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case parser::LEFT_OP:	return builder->CreateShl(vl, vr, "ls");
			case parser::RIGHT_OP:	return builder->CreateAShr(vl, vr, "rs");
			case parser::EQ_OP:		return builder->CreateZExt(builder->CreateICmpEQ(vl, vr, "eq"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case parser::NE_OP:		return builder->CreateZExt(builder->CreateICmpNE(vl, vr, "ne"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case parser::LE_OP:		return builder->CreateZExt(builder->CreateICmpSLE(vl, vr, "le"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case parser::GE_OP:		return builder->CreateZExt(builder->CreateICmpSGE(vl, vr, "ge"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());

			case parser::MUL_ASSIGN:	return left->set_value(p_vm, builder->CreateMul(vl, vr, "mul"));
			case parser::DIV_ASSIGN:	return left->set_value(p_vm, builder->CreateUDiv(vl, vr, "div"));
			case parser::MOD_ASSIGN:	return left->set_value(p_vm, builder->CreateSRem(vl, vr, "smod"));
			case parser::ADD_ASSIGN:	return left->set_value(p_vm, builder->CreateAdd(vl, vr, "add"));
			case parser::SUB_ASSIGN:	return left->set_value(p_vm, builder->CreateSub(vl, vr, "sub"));
			case parser::LEFT_ASSIGN:	return left->set_value(p_vm, builder->CreateShl(vl, vr, "ls"));
			case parser::RIGHT_ASSIGN:	return left->set_value(p_vm, builder->CreateAShr(vl, vr, "rs"));
			case parser::AND_ASSIGN:	return left->set_value(p_vm, builder->CreateAnd(vl, vr, "and"));
			case parser::XOR_ASSIGN:	return left->set_value(p_vm, builder->CreateXor(vl, vr, "xor"));
			case parser::OR_ASSIGN:		return left->set_value(p_vm, builder->CreateOr(vl, vr, "or"));
			}
		}
		else if ((vl->getType()->isFPOrFPVectorTy() && vr->getType()->isFPOrFPVectorTy())
				 || (vl->getType()->isIntOrIntVectorTy() && vr->getType()->isFloatingPointTy())
				 || (vl->getType()->isFloatingPointTy() && vr->getType()->isIntOrIntVectorTy())
				 || (vl->getType()->isFPOrFPVectorTy() && vr->getType()->isIntegerTy())
				 || (vl->getType()->isIntegerTy() && vr->getType()->isFPOrFPVectorTy()))
		{
			switch(op)
			{
			case '+':
			case '-':
			case '*':
			case '/':
				vl = type::cast_to(p_vm, left->get_type(), p_type, vl);
				vr = type::cast_to(p_vm, right->get_type(), p_type, vr);
				break;
			default:
				if (left->get_type().as<native_type>() && left->get_type().as<native_type>()->is_vector())
					vr = type::cast_to(p_vm, right->get_type(), left->get_type(), vr);
				else if (right->get_type().as<native_type>() && right->get_type().as<native_type>()->is_vector())
					vl = type::cast_to(p_vm, left->get_type(), right->get_type(), vl);
				else
				{
					smartptr<type> tmp_type = type::compute_resulting_type(left->get_type(), right->get_type());
					vl = type::cast_to(p_vm, left->get_type(), tmp_type, vl);
					vr = type::cast_to(p_vm, right->get_type(), tmp_type, vr);
				}
				break;
			}
			switch(op)
			{
			case '+':	return builder->CreateFAdd(vl, vr, "add");
			case '-':	return builder->CreateFSub(vl, vr, "sub");
			case '*':	return builder->CreateFMul(vl, vr, "mul");
			case '/':	return builder->CreateFDiv(vl, vr, "div");
			case '<':	return builder->CreateZExt(builder->CreateFCmpOLT(vl, vr, "lt"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case '>':	return builder->CreateZExt(builder->CreateFCmpOGT(vl, vr, "gt"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case parser::EQ_OP:		return builder->CreateZExt(builder->CreateFCmpOEQ(vl, vr, "eq"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case parser::NE_OP:		return builder->CreateZExt(builder->CreateFCmpONE(vl, vr, "ne"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case parser::LE_OP:		return builder->CreateZExt(builder->CreateFCmpOLE(vl, vr, "le"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());
			case parser::GE_OP:		return builder->CreateZExt(builder->CreateFCmpOGE(vl, vr, "ge"), vl->getType()->isVectorTy() ? p_type->to_LLVM_type(p_vm) : builder->getInt1Ty());

			case parser::MUL_ASSIGN:	return left->set_value(p_vm, builder->CreateFMul(vl, vr, "mul"));
			case parser::DIV_ASSIGN:	return left->set_value(p_vm, builder->CreateFDiv(vl, vr, "div"));
			case parser::ADD_ASSIGN:	return left->set_value(p_vm, builder->CreateFAdd(vl, vr, "add"));
			case parser::SUB_ASSIGN:	return left->set_value(p_vm, builder->CreateFSub(vl, vr, "sub"));
			}
		}
		else if (left->get_type().as<array_type>() && vr->getType()->isIntegerTy())
		{
			std::vector<llvm::Value*> idxs;
			idxs.push_back(builder->getInt32(0));
			switch(op)
			{
			case '+':
				idxs.push_back(vr);
				return builder->CreateGEP(vl, idxs, "array_add");
			case '-':
				idxs.push_back(builder->CreateNeg(vr));
				return builder->CreateGEP(vl, idxs, "array_sub");
			case parser::ADD_ASSIGN:
				idxs.push_back(vr);
				return left->set_value(p_vm, builder->CreateGEP(vl, idxs, "array_add"));
			case parser::SUB_ASSIGN:
				idxs.push_back(builder->CreateNeg(vr));
				return left->set_value(p_vm, builder->CreateGEP(vl, idxs, "ptrsub"));
			}
		}
		else if (vl->getType()->isIntegerTy() && right->get_type().as<array_type>())
		{
			switch(op)
			{
			case '+':
				std::vector<llvm::Value*> idxs;
				idxs.push_back(builder->getInt32(0));
				idxs.push_back(vl);
				return builder->CreateGEP(vr, idxs, "array_add");
			}
		}
		else if (vl->getType()->isPointerTy() && vr->getType()->isIntegerTy())
		{
			switch(op)
			{
			case '+':	return builder->CreateGEP(vl, vr, "ptradd");
			case '-':	return builder->CreateGEP(vl, builder->CreateNeg(vr), "ptrsub");
			case parser::ADD_ASSIGN:	return left->set_value(p_vm, builder->CreateGEP(vl, vr, "ptradd"));
			case parser::SUB_ASSIGN:	return left->set_value(p_vm, builder->CreateGEP(vl, builder->CreateNeg(vr), "ptrsub"));
			}
		}
		else if (vl->getType()->isIntegerTy() && vr->getType()->isPointerTy())
		{
			switch(op)
			{
			case '+':	return builder->CreateGEP(vr, vl, "add");
			}
		}
		else if (vl->getType()->isPointerTy() && vr->getType()->isPointerTy())
		{
			switch(op)
			{
			case '-':	return builder->CreatePtrDiff(vl, vr, "ptrdiff");
			case '<':	return builder->CreateICmpULT(vl, vr, "slt");
			case '>':	return builder->CreateICmpUGT(vl, vr, "sgt");
			case parser::EQ_OP:		return builder->CreateICmpEQ(vl, vr, "eq");
			case parser::NE_OP:		return builder->CreateICmpNE(vl, vr, "ne");
			case parser::LE_OP:		return builder->CreateICmpULE(vl, vr, "le");
			case parser::GE_OP:		return builder->CreateICmpUGE(vl, vr, "ge");
			}
		}

		std::cerr << "FreeOCL::binary error:" << std::endl;
		p_vm->get_module()->dump();
		std::cerr << *left << std::endl;
		std::cerr << *left->get_type() << std::endl;
		std::cerr << *right << std::endl;
		std::cerr << *right->get_type() << std::endl;

		*(int*)NULL = 0;

		return NULL;
	}

	llvm::Value *binary::set_value(vm *p_vm, llvm::Value *v) const
	{
		return NULL;
	}
}
