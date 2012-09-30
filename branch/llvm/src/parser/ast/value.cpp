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
#include "value.h"
#include "native_type.h"
#include "pointer_type.h"
#include <vm/vm.h>

namespace FreeOCL
{
	template<>	smartptr<type> value<std::string>::get_type() const
	{	return pointer_type::t_p_const_char;	}

	template<>	smartptr<type> value<double>::get_type() const
	{	return native_type::t_double;	}

	template<>	smartptr<type> value<float>::get_type() const
	{	return native_type::t_float;	}

	template<>	smartptr<type> value<char>::get_type() const
	{	return native_type::t_char;	}

	template<>	smartptr<type> value<uint64_t>::get_type() const
	{	return native_type::t_ulong;	}

	template<>	smartptr<type> value<int64_t>::get_type() const
	{	return native_type::t_long;	}

	template<>	smartptr<type> value<int32_t>::get_type() const
	{	return native_type::t_int;	}

	template<>	smartptr<type> value<uint32_t>::get_type() const
	{	return native_type::t_uint;	}

	template<>	smartptr<type> value<bool>::get_type() const
	{	return native_type::t_bool;	}

	template<>
	void value<char>::write(std::ostream& out) const
	{
		out << "((char)" << (int)v << ") ";
	}

	template<>
	void value<float>::write(std::ostream& out) const
	{
		std::scientific(out);
		out.precision(9);
		out << v << "f ";
	}

	template<>
	void value<uint32_t>::write(std::ostream& out) const
	{
		out << v << "U ";
	}

	template<>
	void value<uint64_t>::write(std::ostream& out) const
	{
		out << v << "LU ";
	}

	template<>
	void value<int64_t>::write(std::ostream& out) const
	{
		out << v << "L ";
	}

	template<>
	void value<double>::write(std::ostream& out) const
	{
		std::scientific(out);
		out.precision(18);
		out << v << ' ';
	}

	template<> uint32_t value<uint32_t>::get_as_uint() const	{	return v;	}
	template<> uint32_t value<int32_t>::get_as_uint() const	{	return v;	}
	template<> uint32_t value<uint64_t>::get_as_uint() const	{	return v;	}
	template<> uint32_t value<int64_t>::get_as_uint() const	{	return v;	}
	template<> uint32_t value<float>::get_as_uint() const	{	return v;	}
	template<> uint32_t value<char>::get_as_uint() const	{	return v;	}
	template<> uint32_t value<double>::get_as_uint() const	{	return v;	}
	template<> uint32_t value<bool>::get_as_uint() const	{	return v;	}

    template<> const char *value<uint32_t>::get_node_type() const   {   return "value<uint32_t>";   }
    template<> const char *value<int32_t>::get_node_type() const   {   return "value<int32_t>";   }
    template<> const char *value<uint64_t>::get_node_type() const   {   return "value<uint64_t>";   }
    template<> const char *value<int64_t>::get_node_type() const   {   return "value<int64_t>";   }
    template<> const char *value<float>::get_node_type() const   {   return "value<float>";   }
    template<> const char *value<char>::get_node_type() const   {   return "value<char>";   }
    template<> const char *value<double>::get_node_type() const   {   return "value<double>";   }
    template<> const char *value<bool>::get_node_type() const   {   return "value<bool>";   }
    template<> const char *value<std::string>::get_node_type() const   {   return "value<std::string>";   }

	template<> uint32_t value<std::string>::get_as_uint() const	{	return 0;	}

	uint32_t generic_value::eval_as_uint() const	{	return get_as_uint();	}

	bool generic_value::has_references_to(const std::string &function_name) const
	{
		return false;
	}

	template<> llvm::Value *value<uint32_t>::to_IR(vm *p_vm) const
	{	return llvm::ConstantInt::get(p_vm->get_context(), llvm::APInt(32, u_int64_t(v), false));	}
	template<> llvm::Value *value<int32_t>::to_IR(vm *p_vm) const
	{	return llvm::ConstantInt::get(p_vm->get_context(), llvm::APInt(32, u_int64_t(v), true));	}

	template<> llvm::Value *value<uint64_t>::to_IR(vm *p_vm) const
	{	return llvm::ConstantInt::get(p_vm->get_context(), llvm::APInt(64, u_int64_t(v), false));	}
	template<> llvm::Value *value<int64_t>::to_IR(vm *p_vm) const
	{	return llvm::ConstantInt::get(p_vm->get_context(), llvm::APInt(64, u_int64_t(v), true));	}

	template<> llvm::Value *value<float>::to_IR(vm *p_vm) const
	{	return llvm::ConstantFP::get(p_vm->get_context(), llvm::APFloat(v));	}
	template<> llvm::Value *value<double>::to_IR(vm *p_vm) const
	{	return llvm::ConstantFP::get(p_vm->get_context(), llvm::APFloat(v));	}

	template<> llvm::Value *value<bool>::to_IR(vm *p_vm) const
	{	return llvm::ConstantInt::get(p_vm->get_context(), llvm::APInt(1, u_int64_t(v), false));	}
	template<> llvm::Value *value<char>::to_IR(vm *p_vm) const
	{	return llvm::ConstantInt::get(p_vm->get_context(), llvm::APInt(8, u_int64_t(v), true));	}

	template<> llvm::Value *value<std::string>::to_IR(vm *p_vm) const
	{
		llvm::Value *str = p_vm->get_builder()->CreateGlobalString(v, "constant_string");
		return p_vm->get_builder()->CreatePointerCast(str, llvm::Type::getInt8PtrTy(p_vm->get_context()));
	}

	llvm::Value *generic_value::get_ptr() const
	{
		return NULL;
	}
}
