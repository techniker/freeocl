#include "vm.h"
#include <llvm/Module.h>
#include <llvm/LLVMContext.h>
#include <llvm/Support/TargetSelect.h>
#include <iostream>

namespace FreeOCL
{
	vm::vm()
	{
		llvm::InitializeNativeTarget();

		context = new llvm::LLVMContext;

		engine = NULL;

		builder = new llvm::IRBuilder<>(*context);

		module = new llvm::Module("freeocl_llvm_module", *context);
	}

	vm::~vm()
	{
		if (pFPM)
			delete pFPM;
		if (engine)
			delete engine;
		else
			delete module;
		delete builder;
		delete context;
	}

	void vm::link()
	{
		if (engine)
			return;

		std::string error;
		engine = llvm::EngineBuilder(module).setErrorStr(&error).create();
		if (!error.empty())
			std::cerr << "LLVM error at engine creation: " << error << std::endl;
	}

	void *vm::get_function(const std::string &function_name)
	{
		if (!engine)
			link();

		return engine->getPointerToNamedFunction(function_name);
	}
}
