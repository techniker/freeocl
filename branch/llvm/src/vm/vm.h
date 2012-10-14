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
#ifndef __FREEOCL_VM_VM_H__
#define __FREEOCL_VM_VM_H__

#include <llvm/Support/IRBuilder.h>
#include <llvm/ExecutionEngine/ExecutionEngine.h>
#include <llvm/PassManager.h>
#include <utils/smartptr.h>
#include <utils/map.h>

namespace FreeOCL
{
	class vm : public ref_count
	{
	public:
		vm();
		virtual ~vm();

		void *get_function(const std::string &function_name);

		void link(const int optimization_level = 1);

//		void save(const std::string &filename);

//		void load(const std::string &filename);

        llvm::IRBuilder<> *get_builder() {	return builder;	}
		llvm::Module *get_module() {	return module;	}
        llvm::LLVMContext &get_context() {	return *context;	}
		llvm::FunctionPassManager *get_function_pass_manager() const	{	return pFPM;	}
		void set_function_pass_manager(llvm::FunctionPassManager *pFPM)	{	this->pFPM = pFPM;	}

		llvm::Value *get_lts() const	{	return lts_value;	}
		void set_lts(llvm::Value *lts)	{	lts_value = lts;	}
		llvm::Function *get_registered_function(const std::string &function_name);
		void register_function(const std::string &function_name, llvm::Function *fn);

		void push_break_continue_blocks(llvm::BasicBlock *break_dest, llvm::BasicBlock *continue_dest);
		void pop_break_continue_blocks();

		llvm::BasicBlock *get_break_block() const	{	return break_dest.back();	}
		llvm::BasicBlock *get_continue_block() const	{	return continue_dest.back();	}

	private:
		llvm::Module *load_module(const std::string &filename);

	private:
		llvm::IRBuilder<> *builder;
		llvm::Module* module;
		llvm::ExecutionEngine *engine;
		llvm::LLVMContext *context;
		llvm::FunctionPassManager *pFPM;
		llvm::Value *lts_value;
		std::string error;
		map<std::string, llvm::Function*> functions;

		std::vector<llvm::BasicBlock*> break_dest;
		std::vector<llvm::BasicBlock*> continue_dest;
	};
}

#endif
