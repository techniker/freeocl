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
#include "unary.h"
#include "parser.h"
#include "native_type.h"
#include "pointer_type.h"

namespace FreeOCL
{
	Unary::Unary(int op, const smartptr<Expression> &exp, const bool b_postfix)
		: exp(exp),
		op(op),
		b_postfix(b_postfix)
	{
		const smartptr<Type> t0 = exp->getType();
		switch(op)
		{
		case Parser::SIZEOF:
			type = NativeType::t_size_t;
			break;
		case Parser::INC_OP:
		case Parser::DEC_OP:
		case '!':
		case '~':
		case '-':
		case '+':
			type = t0;
			break;
		case '*':
			type = t0.as<PointerType>()->getBaseType();
			break;
		case '&':
			type = new PointerType(t0, true, Type::PRIVATE);
			break;
		}
	}

	Unary::~Unary()
	{
	}

	void Unary::write(std::ostream &out) const
	{
		if (op == Parser::SIZEOF)
		{
			out << "sizeof(" << *exp << ')';
			return;
		}
		out << '(';
		if (b_postfix)
			out << *exp;

		switch(op)
		{
		case Parser::INC_OP:	out << "++";	break;
		case Parser::DEC_OP:	out << "--";	break;
		case '!':
		case '~':
		case '-':
		case '+':
		case '*':
		case '&':
			out << (char)op;
			break;
		}

		if (!b_postfix)
			out << *exp;
		out << ')';
	}

	smartptr<Type> Unary::getType() const
	{
		return type;
	}
}
