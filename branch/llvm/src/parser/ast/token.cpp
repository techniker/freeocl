#include "token.h"

namespace FreeOCL
{
	token::token(const std::string &str, const int token_id)
		: token_id(token_id),
		str(str)
	{
	}

	token::~token()
	{
	}

	void token::write(std::ostream& out) const
	{
		switch(token_id)
		{
		case '{':
		case '}':
			out << std::endl;
		case ';':
		case ':':
			out << str << std::endl;
			break;
		default:
			out	<< str << ' ';
		}
	}

	bool token::has_references_to(const std::string &function_name) const
	{
		return false;
	}

    const char *token::get_node_type() const
    {
        return "token";
    }

	llvm::Value *token::to_IR(vm *p_vm) const
	{
		return NULL;
	}
}