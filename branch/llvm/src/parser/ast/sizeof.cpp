#include "sizeof.h"
#include "native_type.h"
#include <vm/vm.h>

namespace FreeOCL
{
	size_of::size_of(const smartptr<node> &n)
		: n(n), ret(NULL)
	{

	}

	size_of::~size_of()
	{

	}

	void size_of::write(std::ostream &out) const
	{
		out << "sizeof(" << *n << ')';
	}

	smartptr<type> size_of::get_type() const
	{
		return native_type::t_size_t;
	}

	uint32_t size_of::eval_as_uint() const
	{
		throw "static evaluation of sizeof operator not implemented!";
		return 0;
	}

	bool size_of::has_references_to(const std::string &function_name) const
	{
		return false;
	}

    const char *size_of::get_node_type() const
    {
        return "size_of";
    }

	llvm::Value *size_of::to_IR(vm *p_vm) const
	{
		if (ret)
			return ret;

		Builder *builder = p_vm->get_builder();
		llvm::Type *p_type = (n.as<expression>() ? n.as<expression>()->get_type() : n.as<type>())->to_LLVM_type(p_vm);
		llvm::Value *t = builder->CreateGEP(llvm::ConstantPointerNull::get(llvm::PointerType::get(p_type, 0)), builder->getInt32(1), "sizeof");
		return ret = builder->CreatePtrToInt(t, native_type::t_size_t->to_LLVM_type(p_vm));
	}

	llvm::Value *size_of::set_value(vm *p_vm, llvm::Value *v) const
	{
		return NULL;
	}
}
