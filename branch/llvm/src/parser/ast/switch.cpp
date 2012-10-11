#include "switch.h"
#include <vm/vm.h>
#include "native_type.h"

namespace FreeOCL
{
	_switch::_switch(const smartptr<expression> &exp)
		: exp(exp)
	{
	}

	void _switch::write(std::ostream& out) const
	{
		out << "switch(" << *exp << ')' << std::endl
			<< '{' << std::endl;
		for(size_t i = 0 ; i < cases.size() ; ++i)
			out << "case " << cases[i].first << ':' << std::endl
				<< *cases[i].second << std::endl;
		if (_default)
			out << "default:" << std::endl
				<< *_default << std::endl;
		out << "};" << std::endl;
	}

	bool _switch::has_references_to(const std::string &function_name) const
	{
		if (exp->has_references_to(function_name))
			return true;
		if (_default && _default->has_references_to(function_name))
			return true;
		for(size_t i = 0 ; i < cases.size() ; ++i)
			if (cases[i].second->has_references_to(function_name))
				return true;
		return false;
	}

	const char *_switch::get_node_type() const
	{
		return "_switch";
	}

	llvm::Value *_switch::to_IR(vm *p_vm) const
	{
		Builder *builder = p_vm->get_builder();
		llvm::Function *fn = builder->GetInsertBlock()->getParent();

		llvm::BasicBlock *blockPost = llvm::BasicBlock::Create(p_vm->get_context(), "post", fn);
		llvm::BasicBlock *blockDef = _default ? llvm::BasicBlock::Create(p_vm->get_context(), "default", fn) : blockPost;

		if (_default)
		{
			builder->SetInsertPoint(blockDef);
			_default->to_IR(p_vm);
			builder->CreateBr(blockPost);
		}

		llvm::SwitchInst *si = builder->CreateSwitch(exp->to_IR(p_vm), blockDef, cases.size());
		std::vector<llvm::BasicBlock*> blocks;
		for(size_t i = 0 ; i < cases.size() ; ++i)
			blocks.push_back(llvm::BasicBlock::Create(p_vm->get_context(), "case", fn));
		blocks.push_back(blockPost);
		smartptr<native_type> switch_type = exp->get_type();
		for(size_t i = 0 ; i < cases.size() ; ++i)
		{
			llvm::BasicBlock *blockCase = blocks[i];
			si->addCase(llvm::ConstantInt::get((llvm::IntegerType*)switch_type->to_LLVM_type(p_vm), cases[i].first, switch_type->is_signed()), blockCase);

			builder->SetInsertPoint(blockCase);
			cases[i].second->to_IR(p_vm);
			builder->CreateBr(blocks[i + 1]);
		}

		builder->SetInsertPoint(blockPost);

		return NULL;
	}

	bool _switch::set_default(const smartptr<node> &_default)
	{
		if (this->_default)
			return true;
		this->_default = _default;
		return false;
	}

	void _switch::add_case(const int value, const smartptr<node> &new_case)
	{
		cases.push_back(std::make_pair(value, new_case));
	}
}
