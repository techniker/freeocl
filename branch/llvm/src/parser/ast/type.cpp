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
#include "type.h"
#include "native_type.h"
#include "pointer_type.h"
#include <vm/vm.h>

namespace FreeOCL
{
	type::type(const bool b_const, const address_space addr_space) : b_const(b_const), addr_space(addr_space)
	{
	}

	smartptr<type> type::compute_resulting_type(const smartptr<type> &t0, const smartptr<type> &t1)
	{
		const native_type *n0 = t0.as<native_type>();
		const native_type *n1 = t1.as<native_type>();
		if (n0 && n1)
		{
			if (n0->is_scalar() && n1->is_scalar())
			{
				if (n0->is_double() || n1->is_double())
					return native_type::t_double;
				if (n0->is_float() || n1->is_float())
					return native_type::t_float;
				if (n0->is_ulong() || n1->is_ulong())
					return native_type::t_ulong;
				if (n0->is_long() || n1->is_long())
					return native_type::t_long;
				if (n0->is_uint() || n1->is_uint())
					return native_type::t_uint;
				return native_type::t_int;
			}
			if (n0->is_vector())
				return t0;
			if (n1->is_vector())
				return t1;
			// Normally this should not happen
			return native_type::t_void;
		}
		// Pointer arithmetics
		if (t0.as<pointer_type>() && n1)
			return t0;
		if (t1.as<pointer_type>() && n0)
			return t1;
		// If you get there, someone is doing something ugly
		return native_type::t_void;
	}

	std::string type::suffix() const
	{
		return std::string();
	}

	std::string type::prefix() const
	{
		return get_cxx_name();
	}

	bool type::has_references_to(const std::string &function_name) const
	{
		return false;
	}

	std::string type::get_cxx_name() const
	{
		return get_name();
	}

	llvm::Value *type::to_IR(vm *p_vm) const
	{
		return NULL;
	}

	llvm::Value *type::cast_to_bool(vm *p_vm, llvm::Value *v)
	{
		if (v->getType()->isPointerTy())
			return p_vm->get_builder()->CreateICmpNE(v, llvm::ConstantPointerNull::get(static_cast<llvm::PointerType*>(v->getType())), "not_null");
		if (v->getType()->isFloatingPointTy())
			return p_vm->get_builder()->CreateFCmpONE(v, llvm::ConstantFP::get(p_vm->get_context(), llvm::APFloat(0.0f)));
		return p_vm->get_builder()->CreateICmpNE(v, llvm::ConstantInt::get(v->getType(), 0, false), "not_0");
	}

	llvm::Value *type::cast_to(vm *p_vm, const smartptr<type> &from, const smartptr<type> &to, llvm::Value *in)
	{
		Builder *builder = p_vm->get_builder();
		if (*from == *to)
			return in;
		smartptr<type> n_from = from->clone(true, CONSTANT);
		smartptr<type> n_to = to->clone(true, CONSTANT);
		if (*n_from == *n_to)
			return in;
//		if (*native_type::t_bool == *n_to && from.as<native_type>())
//		{
//			if (from.plvl > 0)
//				return builder->CreateICmpNE(in, llvm::ConstantPointerNull::get((const llvm::PointerType*)from->to_LLVM_type(p_vm)), "not_null");
//			if (from.native == Float)
//				return builder->CreateFCmpONE(in, llvm::ConstantFP::get(p_vm->get_context(), llvm::APFloat(0.0f)));
//			return builder->CreateICmpNE(in, llvm::ConstantInt::get(from->to_LLVM_type(p_vm), 0, false), "not_0");
//		}
//		if (*native_type::t_float == *n_from && *native_type::t_float == *n_to)
//		{
//			if (to.plvl == 0)
//				return builder->CreateFPToSI(in, to->to_LLVM_type(p_vm), "cvti32");
//			in = builder->CreateFPToSI(in, builder->getInt64Ty(), "cvti64");
//			return builder->CreateIntToPtr(in, to->to_LLVM_type(p_vm));
//		}
//		if (*native_type::t_float != *n_from && *native_type::t_float == *n_to && to.plvl == 0)
//		{
//			if (from.plvl == 0)
//				return builder->CreateSIToFP(in, builder->getFloatTy(), "cvtfp");
//			in = builder->CreatePtrToInt(in, builder->getInt64Ty(), "ptr2i64");
//			return builder->CreateSIToFP(in, builder->getFloatTy(), "cvtfp");
//		}
//		if (n_from.as<native_type>() && n_to.as<native_type>())
//		{
//			if (from.plvl > 0 && to.plvl > 0)
//				return builder->CreatePointerCast(in, to->to_LLVM_type(p_vm), "pcast");
//			if (from.plvl > 0 && to.plvl == 0)
//				return builder->CreatePtrToInt(in, to->to_LLVM_type(p_vm), "p2icast");
//			if (from.plvl == 0 && to.plvl > 0)
//				return builder->CreateIntToPtr(in, to->to_LLVM_type(p_vm), "i2pcast");
//			if (from.bits() > to.bits())
//				return builder->CreateTrunc(in, to->to_LLVM_type(p_vm), "trunc");
//			if (from.bits() < to.bits())
//				return builder->CreateZExt(in, to->to_LLVM_type(p_vm), "zext");
//			return builder->CreateBitCast(in, to->to_LLVM_type(p_vm), "bitcast");
//		}
		return in;
	}

	std::string type::mangled_name() const
	{
		return std::string();
	}
}
