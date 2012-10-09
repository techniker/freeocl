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
#ifndef __FREEOCL_PARSER_SWITCH_H__
#define __FREEOCL_PARSER_SWITCH_H__

#include "expression.h"

namespace FreeOCL
{
	class _switch : public node
	{
	public:
		_switch(const smartptr<expression> &exp);

		virtual void write(std::ostream& out) const;

		virtual bool has_references_to(const std::string &function_name) const;

		virtual const char *get_node_type() const;

		virtual llvm::Value *to_IR(vm *p_vm) const;

		bool set_default(const smartptr<node> &_default);

		void add_case(const int value, const smartptr<node> &new_case);
	private:
		const smartptr<expression> exp;
		std::vector<std::pair<int, smartptr<node> > > cases;
		smartptr<node> _default;
	};
}

#endif
