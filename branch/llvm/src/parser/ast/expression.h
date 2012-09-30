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
#ifndef __FREEOCL_PARSER_EXPRESSION_H__
#define __FREEOCL_PARSER_EXPRESSION_H__

#include "type.h"

namespace FreeOCL
{
	class expression : public node
	{
	public:
		virtual smartptr<type> get_type() const = 0;

		virtual uint32_t eval_as_uint() const = 0;

		virtual llvm::Value *get_ptr(vm *p_vm) const = 0;
	};
}

#endif
