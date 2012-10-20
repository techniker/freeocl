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
#include "local_initializer.h"
#include <vm/vm.h>
#include <llvm/GlobalVariable.h>
#include <llvm/Function.h>
#include <llvm/Support/IRBuilder.h>
#include "array_type.h"
#include <iostream>
#include <llvm/Module.h>

namespace FreeOCL
{
	local_initializer::local_initializer(const smartptr<var> &v)
		: v(v), ret(NULL)
	{
	}

	local_initializer::~local_initializer()
	{
	}

	void local_initializer::write(std::ostream& out) const
	{
	}

	bool local_initializer::has_references_to(const std::string &function_name) const
	{
		return false;
	}

	const char *local_initializer::get_node_type() const
	{
		return "local_initializer";
	}

	llvm::Value *local_initializer::to_IR(vm *p_vm) const
	{
		if (ret)
			return ret;

		const smartptr<type> &p_type = v->get_type();
		// Register a local memory allocator to global constructor table
		llvm::GlobalVariable *gv_address = new llvm::GlobalVariable(*(p_vm->get_module()),
																	p_vm->get_builder()->getInt32Ty(),
																	false,
																	llvm::GlobalVariable::InternalLinkage,
																	p_vm->get_builder()->getInt32(0),
																	"__local_address_of_" + v->get_name());
		llvm::GlobalVariable *gv_next_address = p_vm->get_registered_global_variable("__next_local_address");
		if (!gv_next_address)
		{
			gv_next_address = new llvm::GlobalVariable(*(p_vm->get_module()),
													   p_vm->get_builder()->getInt32Ty(),
													   false,
													   llvm::GlobalVariable::ExternalLinkage,
													   NULL,
													   "__next_local_address");
			p_vm->register_global_variable("__next_local_address", gv_next_address);
		}
		llvm::FunctionType *fntype = llvm::FunctionType::get(p_vm->get_builder()->getVoidTy(), false);
		llvm::Function *fn_alloc = llvm::Function::Create(fntype, llvm::Function::InternalLinkage, "__init_" + v->get_name(), p_vm->get_module());

		llvm::BasicBlock *BB = llvm::BasicBlock::Create(p_vm->get_context(), "fonction_entry", fn_alloc);
		Builder *builder = new Builder(p_vm->get_context());
		builder->SetInsertPoint(BB);
		llvm::Value *x = builder->CreateLoad(gv_next_address, true);
		builder->CreateStore(x, gv_address);
		llvm::Type *llvm_type = p_type->to_LLVM_type(p_vm);
		llvm::Value *t = builder->CreateGEP(llvm::ConstantPointerNull::get(llvm::PointerType::get(llvm_type, 0)), builder->getInt32(1), "sizeof");
		t = builder->CreatePtrToInt(t, builder->getInt32Ty());
		t = builder->CreateAdd(x, t);
		builder->CreateStore(t, gv_next_address);
		builder->CreateRetVoid();

		delete builder;

		p_vm->register_global_constructor(fn_alloc);

		builder = p_vm->get_builder();
		std::vector<llvm::Value*> idxs;
		idxs.push_back(builder->getInt32(0));
		idxs.push_back(builder->getInt32(1));
		llvm::Value *ptr = builder->CreateGEP(p_vm->get_lts(), idxs);
		ptr = builder->CreateLoad(ptr);
		idxs.clear();
		idxs.push_back(builder->CreateLoad(gv_address));
		ptr = builder->CreateGEP(ptr, idxs);
		llvm::Value *lv = builder->CreatePointerCast(ptr, p_type.as<array_type>() ? p_type.as<array_type>()->clone_as_ptr()->to_LLVM_type(p_vm) : llvm::PointerType::get(p_type->to_LLVM_type(p_vm), 0));
		v->v = lv;

		return ret = lv;
	}
}
