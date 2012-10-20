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
#include "struct_type.h"
#include "typedef.h"
#include <algorithm>
#include <vm/vm.h>
#include <utils/string.h>

namespace FreeOCL
{
	bool struct_type::operator==(const type &type) const
	{
		if (dynamic_cast<const type_def*>(&type))
			return *this == *dynamic_cast<const type_def*>(&type)->get_type();
		const struct_type *p_type = dynamic_cast<const struct_type*>(&type);
		if (p_type == NULL)
			return false;
		if (root)
			return *root == type;
		if (p_type->root)
			return *this == *(p_type->root);
		return get_aggregate_type() == p_type->get_aggregate_type()
				&& name == p_type->name
				&& members.size() == p_type->members.size()
				&& std::equal(members.begin(), members.end(), p_type->members.begin());
	}

	void struct_type::define(std::ostream &out) const
	{
		if (root)
		{
			root->define(out);
			return;
		}
		switch(get_aggregate_type())
		{
		case STRUCT:
			out << "struct ";
			break;
		case UNION:
			out << "union ";
			break;
		}

		out << name << std::endl
			<< '{' << std::endl;

		for(std::vector<std::pair<std::string, smartptr<type> > >::const_iterator it = members.begin(), end = members.end()
			; it != end
			; ++it)
		{
			out << "    ";
			if (it->second.as<struct_type>())
			{
				it->second.as<struct_type>()->define(out);
				out << ' ';
			}
			out << it->second->prefix() << ' ' << it->first << it->second->suffix() << ';' << std::endl;
		}

		out << '}';
	}

	void struct_type::write(std::ostream &out) const
	{
		define(out);
	}

	std::string struct_type::get_name() const
	{
		if (root)
			return root->name;
		return name;
	}

	bool struct_type::has_member(const std::string &name) const
	{
		if (root)
			return root->has_member(name);
		for(std::vector<std::pair<std::string, smartptr<type> > >::const_iterator it = members.begin(), end = members.end()
			; it != end
			; ++it)
			if (it->first == name)
				return true;
		return false;
	}

	size_t struct_type::get_member_id(const std::string &name) const
	{
		if (root)
			return root->get_member_id(name);
		for(size_t i = 0 ; i < members.size() ; ++i)
			if (members[i].first == name)
				return i;
		return -1;
	}

	smartptr<type> struct_type::get_type_of_member(const std::string &name) const
	{
		if (root)
			return root->get_type_of_member(name);
		for(std::vector<std::pair<std::string, smartptr<type> > >::const_iterator it = members.begin(), end = members.end()
			; it != end
			; ++it)
			if (it->first == name)
				return it->second;
		return (type*)NULL;
	}

	const smartptr<type> &struct_type::get_type_of_member(const size_t member_id) const
	{
		if (root)
			return root->get_type_of_member(member_id);
		return members[member_id].second;
	}

	smartptr<type> struct_type::clone(const bool b_const, const address_space addr_space) const
	{
		smartptr<struct_type> ret = root ? new struct_type(root, b_const, addr_space) : new struct_type(this, b_const, addr_space);
		ret->members = members;
		return ret;
	}

	struct_type &struct_type::operator<<(const std::pair<std::string, smartptr<type> > &member)
	{
		if (root)
		{
			*root << member;
			return *this;
		}
		members.push_back(member);
		return *this;
	}

	struct_type::aggregate_type struct_type::get_aggregate_type() const
	{
		if (root)
			return root->get_aggregate_type();
		return STRUCT;
	}

	size_t struct_type::members_count() const
	{
		return members.size();
	}

    const char *struct_type::get_node_type() const
    {
        return "struct_type";
    }

	llvm::Type *struct_type::to_LLVM_type(vm *p_vm) const
	{
		if (root)
			return root->to_LLVM_type(p_vm);

		std::vector<llvm::Type*> elements;
		for(std::vector<std::pair<std::string, smartptr<type> > >::const_iterator i = members.begin() ; i != members.end() ; ++i)
			elements.push_back(i->second->to_LLVM_type(p_vm));
		return llvm::StructType::get(p_vm->get_context(), elements, false);
	}

	std::string struct_type::mangled_name() const
	{
		if (is_const())
			return "K" + to_string(name.size()) + name;
		return to_string(name.size()) + name;
	}
}
