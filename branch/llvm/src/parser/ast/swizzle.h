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
#ifndef __FREEOCL_PARSER_SWIZZLE_H__
#define __FREEOCL_PARSER_SWIZZLE_H__

#include "expression.h"

namespace FreeOCL
{
	class swizzle : public expression
	{
	public:
		swizzle(const smartptr<expression> &base, const std::string &components);
		void write(std::ostream& out) const;
		smartptr<type> get_type() const;

		virtual uint32_t eval_as_uint() const;

		virtual bool has_references_to(const std::string &function_name) const;

        virtual const char *get_node_type() const;

		virtual llvm::Value *to_IR(vm *p_vm) const;
		virtual llvm::Value *get_ptr(vm *p_vm) const;
    private:
		static void parse_components(const std::string &components, int values[], size_t dim);

	public:
		static int get_number_of_components(const std::string &components, int dim);
		static bool validate_components(const std::string &components, int dim);
	private:
		smartptr<expression> base;
		const std::string components;
	};
}

#endif
