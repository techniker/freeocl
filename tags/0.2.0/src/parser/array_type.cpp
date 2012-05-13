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
#include "array_type.h"
#include "utils/string.h"

namespace FreeOCL
{
	smartptr<type> array_type::clone(const bool b_const, const address_space addr_space) const
	{
		return new array_type(base_type, b_const, addr_space, size);
	}

	std::string array_type::suffix() const
	{
		return base_type->suffix() + '[' + to_string(size) + ']';
	}

	std::string array_type::prefix() const
	{
		if (is_const())
			return (' ' + base_type->prefix()) + " const";
		return base_type->prefix();
	}
}
