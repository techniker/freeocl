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
#include <utils/smartptr.h>

namespace FreeOCL
{
	class vm : public ref_count
	{
	public:
		vm();
		virtual ~vm();

//		void run();

//		void link(bool autoload = false);

//		void save(const std::string &filename);

//		void load(const std::string &filename);

//		void addLibDir(const std::string &path);

		llvm::IRBuilder<> *getBuilder() {	return builder;	}
		llvm::Module *getModule() {	return modules.back();	}
		llvm::LLVMContext &getContext() {	return *context;	}

	private:
		llvm::IRBuilder<> *builder;
		llvm::Module* module;
		llvm::ExecutionEngine *engine;
		llvm::LLVMContext *context;
		llvm::FunctionPassManager *pFPM;
		bool bInit;
	};
}

#endif
