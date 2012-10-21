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
#ifndef __FREEOCL_PARSER_INITIALIZER_H__
#define __FREEOCL_PARSER_INITIALIZER_H__

#include "var.h"

namespace FreeOCL
{
	class initializer : public node
	{
	public:
		initializer(const smartptr<var> &v, const smartptr<node> &init);
		virtual ~initializer();

		virtual void write(std::ostream& out) const;

		virtual bool has_references_to(const std::string &function_name) const;

		virtual const char *get_node_type() const;

		virtual llvm::Value *to_IR(vm *p_vm) const;

	private:
		static llvm::Constant *build_initializer(vm *p_vm, const smartptr<type> &p_type, const smartptr<node> &init);
		static llvm::Value *eval_initializer(vm *p_vm, const smartptr<type> &p_type, const smartptr<node> &init);
	private:
		const smartptr<var> v;
		const smartptr<node> init;
		mutable llvm::Value *ret;
	};
}

#endif
