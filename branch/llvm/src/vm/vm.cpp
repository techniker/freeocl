#include "vm.h"
#include <llvm/Module.h>
#include <llvm/LLVMContext.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/ExecutionEngine/JIT.h>
#include <llvm/ExecutionEngine/Interpreter.h>
#include <llvm/Target/TargetJITInfo.h>
#include <llvm/ExecutionEngine/JITMemoryManager.h>
#include <llvm/Linker.h>
#include <llvm/Support/raw_os_ostream.h>
#include <llvm/Bitcode/ReaderWriter.h>
#include <llvm/Support/MemoryBuffer.h>
#include <llvm/Support/system_error.h>
#include <llvm/PassManager.h>
#include <llvm/Analysis/Verifier.h>
#include <llvm/Analysis/Passes.h>
#include <llvm/Target/TargetData.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Transforms/Scalar.h>
#include <llvm/Transforms/Vectorize.h>
#include <llvm/Transforms/IPO.h>
#include <llvm/ExecutionEngine/ExecutionEngine.h>
#include <llvm/LLVMContext.h>
#include <llvm/DerivedTypes.h>
#include <llvm/ExecutionEngine/JIT.h>
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

		pFPM = NULL;
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

	void vm::link(const int optimization_level)
	{
		if (engine)
			return;

		llvm::Linker linker("FreeOCL", "__FreeOCL_program__", get_context());

		const char *modules_to_link[] = { "workitem.bc",
										  "integer.bc",
										  "printf.bc",
										  "common.bc",
										  "relational.bc",
										  "sync.bc",
										  "geometric.bc",
										  "math.bc"};

		const std::string path_to_stdlib("/home/roland/progcpp/FreeOCL/branch/llvm/stdlib/");

		linker.LinkInModule(module);
		for(size_t i = 0 ; i < sizeof(modules_to_link) / sizeof(modules_to_link[0]) ; ++i)
		{
			llvm::Module *module = load_module(path_to_stdlib + modules_to_link[i]);
			if (!module)
			{
				std::cerr << "FreeOCL: error loading module '" << (path_to_stdlib + modules_to_link[i]) << "'" << std::endl;
				exit(1);
			}
			linker.LinkInModule(module);
		}

		module = linker.releaseModule();

		llvm::PassManager passmanager;

		if (optimization_level >= 1)
		{
			passmanager.add(llvm::createStripDeadPrototypesPass());

			if (optimization_level >= 2)
			{
				passmanager.add(llvm::createBasicAliasAnalysisPass());
				passmanager.add(llvm::createLICMPass());
				passmanager.add(llvm::createDeadInstEliminationPass());
				passmanager.add(llvm::createLCSSAPass());
				passmanager.add(llvm::createLoopIdiomPass());
				passmanager.add(llvm::createLoopInstSimplifyPass());
				passmanager.add(llvm::createLoopSimplifyPass());
				passmanager.add(llvm::createIndVarSimplifyPass());
				passmanager.add(llvm::createLoopStrengthReducePass());
				passmanager.add(llvm::createLoopUnrollPass());

				passmanager.add(llvm::createFunctionAttrsPass());
				passmanager.add(llvm::createFunctionInliningPass());
				passmanager.add(llvm::createDeadStoreEliminationPass());
				passmanager.add(llvm::createDeadCodeEliminationPass());
				passmanager.add(llvm::createGlobalOptimizerPass());
				passmanager.add(llvm::createGlobalsModRefPass());
				passmanager.add(llvm::createPromoteMemoryToRegisterPass());

				passmanager.add(llvm::createConstantMergePass());
				passmanager.add(llvm::createConstantPropagationPass());
//				passmanager.add(llvm::createInstructionCombiningPass());
				passmanager.add(llvm::createSROAPass());
				passmanager.add(llvm::createInstructionSimplifierPass());
				passmanager.add(llvm::createBBVectorizePass());
			}
			if (optimization_level >= 3)
			{
				passmanager.add(llvm::createPartialInliningPass());
//				passmanager.add(llvm::createPartialSpecializationPass());
			}
		}
		passmanager.run(*module);

		module->dump();

		llvm::TargetOptions target_opts;
		target_opts.JITEmitDebugInfo = 1;
		target_opts.JITEmitDebugInfoToDisk = 1;

		engine = llvm::EngineBuilder(module).setUseMCJIT(true).setOptLevel(llvm::CodeGenOpt::Aggressive).setTargetOptions(target_opts).setRelocationModel(llvm::Reloc::Default).setErrorStr(&error).create();
		if (!error.empty())
		{
			std::cerr << "LLVM error at engine creation: " << error << std::endl;
			error.clear();
		}
	}

	void *vm::get_function(const std::string &function_name)
	{
		if (!engine)
			link();

		llvm::Function *fn = engine->FindFunctionNamed(function_name.c_str());
		if (!fn)
		{
			if (!error.empty())
			{
				std::cerr << "LLVM error at engine creation: " << error << std::endl
						  << "aborting" << std::endl;
				error.clear();
			}
			else
				std::cerr << "function '" << function_name << "' not found!" << std::endl
						  << "aborting" << std::endl;
			exit(1);
		}
		return engine->getPointerToFunction(fn);
	}

	llvm::Module *vm::load_module(const std::string &filename)
	{
		llvm::OwningPtr<llvm::MemoryBuffer> buffer;
		llvm::MemoryBuffer::getFile(filename, buffer);
		llvm::Module *module = llvm::ParseBitcodeFile(buffer.get(), get_context());
		if (module)
			module->setModuleIdentifier(filename);
		return module;
	}

	llvm::Function *vm::get_registered_function(const std::string &function_name)
	{
		map<std::string, llvm::Function*>::iterator it = functions.find(function_name);
		if (it == functions.end())
			return NULL;
		return it->second;
	}

	void vm::register_function(const std::string &function_name, llvm::Function *fn)
	{
		functions[function_name] = fn;
	}
}
