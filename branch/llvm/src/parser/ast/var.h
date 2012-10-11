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
#ifndef __FREEOCL_PARSER_VAR_H__
#define __FREEOCL_PARSER_VAR_H__

#include "expression.h"

namespace FreeOCL
{
	class var : public expression
	{
	public:
		var(const std::string &name, const smartptr<type> &p_type, const bool b_local, const bool b_thread_local = false);
		virtual ~var();
		virtual smartptr<type> get_type() const;
		virtual void write(std::ostream& out) const;

		const std::string &get_name() const	{	return name;	}

		virtual uint32_t eval_as_uint() const;

		virtual bool has_references_to(const std::string &function_name) const;

        virtual const char *get_node_type() const;

        bool is_local() const   {   return b_local; }

        virtual llvm::Value *to_IR(vm *p_vm) const;

        void allocate(vm *p_vm) const;

        static llvm::AllocaInst *new_local_variable(vm *p_vm, const smartptr<type> &p_type, const std::string &name);

		virtual llvm::Value *get_ptr(vm *p_vm) const;
		virtual llvm::Value *set_value(vm *p_vm, llvm::Value *v) const;
	private:
		const std::string name;
		const smartptr<type> p_type;
        const bool b_local;
		const bool b_thread_local;
        mutable llvm::Value *v;
	};
}

#endif
