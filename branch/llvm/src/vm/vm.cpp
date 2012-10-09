#include "vm.h"
#include <llvm/Module.h>
#include <llvm/LLVMContext.h>
#include <llvm/Support/TargetSelect.h>

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

		engine = llvm::EngineBuilder(module).create();
	}

	void *vm::get_function(const std::string &function_name)
	{
		if (!engine)
			link();

		return engine->getPointerToNamedFunction(function_name);
	}
}
