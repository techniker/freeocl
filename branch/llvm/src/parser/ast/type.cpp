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
		const native_type *fnt = from.as<native_type>();
		const native_type *tnt = to.as<native_type>();
		if (fnt)
		{
			if (*native_type::t_bool == *n_to)
				return cast_to_bool(p_vm, in);
			if (fnt->is_integer() && fnt->is_scalar())
			{
				if (to.as<pointer_type>())
					return builder->CreateIntToPtr(in, to->to_LLVM_type(p_vm));
				if (tnt)
				{
					if (tnt->is_floatting() && tnt->is_scalar())
						return builder->CreateSIToFP(in, to->to_LLVM_type(p_vm), "cvtfp");
					if (tnt->is_integer() && tnt->is_scalar())
					{
						if (fnt->get_size() == tnt->get_size())
							return builder->CreateBitCast(in, to->to_LLVM_type(p_vm), "bitcast");
						if (fnt->get_size() < tnt->get_size())
							return builder->CreateZExt(in, to->to_LLVM_type(p_vm), "zext");
						return builder->CreateTrunc(in, to->to_LLVM_type(p_vm), "trunc");
					}
					if (tnt->is_integer() && tnt->is_vector())
					{
						smartptr<native_type> scalar_type = new native_type(tnt->get_scalar_type(), false, type::PRIVATE);
						if (fnt->get_size() == scalar_type->get_size())
							in = builder->CreateBitCast(in, scalar_type->to_LLVM_type(p_vm), "bitcast");
						else if (fnt->get_size() < scalar_type->get_size())
							in = builder->CreateZExt(in, scalar_type->to_LLVM_type(p_vm), "zext");
						else
							in = builder->CreateTrunc(in, scalar_type->to_LLVM_type(p_vm), "trunc");
						in = builder->CreateInsertElement(llvm::UndefValue::get(to->to_LLVM_type(p_vm)), in, builder->getInt32(0));
						std::vector<llvm::Constant*> constant_values;
						for(size_t i = 0 ; i < tnt->get_dim() ; ++i)
							constant_values.push_back(builder->getInt32(0));
						llvm::Value *mask = llvm::ConstantVector::get(constant_values);
						return builder->CreateShuffleVector(in, in, mask);
					}
				}
			}
			if (fnt->is_floatting() && fnt->is_scalar())
			{
				if (tnt)
				{
					if (tnt->is_integer() && tnt->is_scalar())
						return builder->CreateFPToSI(in, to->to_LLVM_type(p_vm), "cvtfp");
					if (tnt->is_floatting() && tnt->is_scalar())
					{
						if (fnt->get_size() == tnt->get_size())
							return builder->CreateFPCast(in, to->to_LLVM_type(p_vm), "bitcast");
						if (fnt->get_size() < tnt->get_size())
							return builder->CreateFPExt(in, to->to_LLVM_type(p_vm), "zext");
						return builder->CreateFPTrunc(in, to->to_LLVM_type(p_vm), "trunc");
					}
					if (tnt->is_floatting() && tnt->is_vector())
					{
						smartptr<native_type> scalar_type = new native_type(tnt->get_scalar_type(), false, type::PRIVATE);
						if (fnt->get_size() == scalar_type->get_size())
							in = builder->CreateFPCast(in, scalar_type->to_LLVM_type(p_vm), "bitcast");
						else if (fnt->get_size() < scalar_type->get_size())
							in = builder->CreateFPExt(in, scalar_type->to_LLVM_type(p_vm), "zext");
						else
							in = builder->CreateFPTrunc(in, scalar_type->to_LLVM_type(p_vm), "trunc");
						in = builder->CreateInsertElement(llvm::UndefValue::get(to->to_LLVM_type(p_vm)), in, builder->getInt32(0));
						std::vector<llvm::Constant*> constant_values;
						for(size_t i = 0 ; i < tnt->get_dim() ; ++i)
							constant_values.push_back(builder->getInt32(0));
						llvm::Value *mask = llvm::ConstantVector::get(constant_values);
						return builder->CreateShuffleVector(in, in, mask);
					}
				}
			}
			if (fnt->is_integer() && fnt->is_vector())
			{
				if (tnt)
				{
					if (tnt->is_floatting() && tnt->is_vector())
						return builder->CreateSIToFP(in, to->to_LLVM_type(p_vm), "cvtfp");
					if (tnt->is_integer() && tnt->is_vector())
					{
						if (fnt->get_size() == tnt->get_size())
							return builder->CreateBitCast(in, to->to_LLVM_type(p_vm), "bitcast");
						if (fnt->get_size() < tnt->get_size())
							return builder->CreateZExt(in, to->to_LLVM_type(p_vm), "zext");
						return builder->CreateTrunc(in, to->to_LLVM_type(p_vm), "trunc");
					}
				}
			}
			if (fnt->is_floatting() && fnt->is_vector())
			{
				if (tnt)
				{
					if (tnt->is_integer() && tnt->is_vector())
						return builder->CreateFPToSI(in, to->to_LLVM_type(p_vm), "cvtfp");
					if (tnt->is_floatting() && tnt->is_vector())
					{
						if (fnt->get_size() == tnt->get_size())
							return builder->CreateFPCast(in, to->to_LLVM_type(p_vm), "bitcast");
						if (fnt->get_size() < tnt->get_size())
							return builder->CreateFPExt(in, to->to_LLVM_type(p_vm), "zext");
						return builder->CreateFPTrunc(in, to->to_LLVM_type(p_vm), "trunc");
					}
				}
			}
		}
		if (from.as<pointer_type>())
		{
			if (to.as<pointer_type>())
				return builder->CreatePointerCast(in, to->to_LLVM_type(p_vm), "pcast");
			in = builder->CreatePtrToInt(in, builder->getInt64Ty(), "ptr2i64");
			if (tnt)
			{
				if (tnt->is_integer())
				{
					if (tnt->is_ulong() || tnt->is_ulong())
						return builder->CreateBitCast(in, to->to_LLVM_type(p_vm), "bitcast");
					return builder->CreateTrunc(in, to->to_LLVM_type(p_vm), "trunc");
				}
				return builder->CreateSIToFP(in, to->to_LLVM_type(p_vm), "cvtfp");
			}
			return in;
		}
		return in;
	}
}
