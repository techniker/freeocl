#include "vm.h"
#include <llvm/IR/Module.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/ExecutionEngine/JIT.h>
#include <llvm/ExecutionEngine/Interpreter.h>
#include <llvm/Target/TargetJITInfo.h>
#include <llvm/ExecutionEngine/JITMemoryManager.h>
#include <llvm/Linker/Linker.h>
#include <llvm/Support/raw_os_ostream.h>
#include <llvm/Bitcode/ReaderWriter.h>
#include <llvm/Support/MemoryBuffer.h>
//#include <llvm/Support/system_error.h>
#include <llvm/PassManager.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Analysis/Passes.h>
//#include <llvm/Target/TargetData.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Transforms/Scalar.h>
#include <llvm/Transforms/Vectorize.h>
#include <llvm/Transforms/IPO.h>
#include <llvm/Transforms/Instrumentation.h>
//#include <llvm/DefaultPasses.h>
#include <llvm/ExecutionEngine/ExecutionEngine.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/IR/DerivedTypes.h>
#include <llvm/ExecutionEngine/JIT.h>
#include <llvm/Support/Threading.h>
#include <iostream>
#include <cstdio>
#include <dirent.h>

namespace FreeOCL
{
	std::string vm::get_path_to_stdlib()
	{
		const std::string path_suffix = "share/FreeOCL/stdlib";
		const char *path_prefix[] = { "/usr/local/", "/usr/" };
		for(size_t i = 0 ; i < sizeof(path_prefix) / sizeof(path_prefix[0]) ; ++i)
		{
			const std::string path = path_prefix[i] + path_suffix;
			DIR *dir = opendir(path.c_str());
			if (dir)
			{
				closedir(dir);
				return path + '/';
			}
		}
		std::cerr << "[FreeOCL] warning: could not find FreeOCL's OpenCL C builtin functions. Your FreeOCL installation may be broken." << std::endl;
		return path_suffix;
	}

	vm::vm()
	{
//		if (!llvm::llvm_is_multithreaded())
//			llvm::llvm_start_multithreaded();

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

//		llvm::Linker linker("FreeOCL", "__FreeOCL_program__", get_context());
		llvm::Linker linker(module);

		const char *modules_to_link[] = { "workitem.bc",
										  "integer.bc",
										  "asm_integer.bc",
										  "printf.bc",
										  "common.bc",
										  "relational.bc",
										  "sync.bc",
										  "geometric.bc",
										  "math.bc",
										  "asm_math.bc",
										  "converters.bc",
										  "asm_converters.bc",
										  "asm_select.bc",
										  "asm_common.bc",
										  "asm_vector_math.bc",
										  "vloadstore.bc",
										  "atomic.bc",
										  "asm_atomic.bc",
										  "asyncmemop.bc",
										  "asm_asyncmemop%d.bc",
										  "asm_geometric.bc",
										  "asm_relational.bc",
										  "asm_vloadstore.bc"};

		const std::string &path_to_stdlib = get_path_to_stdlib();

		module->dump();

//		linker.LinkInModule(module);
		for(size_t i = 0 ; i < sizeof(modules_to_link) / sizeof(modules_to_link[0]) ; ++i)
		{
			char module_name[256];
			sprintf(module_name, modules_to_link[i], sizeof(void*) * 8);
			llvm::Module *module = load_module(path_to_stdlib + module_name);
			if (!module)
			{
				std::cerr << "FreeOCL: error loading module '" << (path_to_stdlib + module_name) << "'" << std::endl;
				exit(1);
			}
//			linker.LinkInModule(module);
			std::string error_msg;
			if (linker.linkInModule(module, llvm::Linker::DestroySource, &error_msg))
			{
				std::cerr << "FreeOCL: error linking module '" << (path_to_stdlib + module_name) << "'" << std::endl
						  << "LLVM error message: " << std::endl
						  << error_msg << std::endl;
				exit(1);
			}
		}

//		module = linker.releaseModule();

		llvm::PassManager passmanager;

		if (optimization_level >= 1)
		{
			passmanager.add(llvm::createBasicAliasAnalysisPass());
			passmanager.add(llvm::createStripDeadPrototypesPass());
//			passmanager.add(llvm::createSimplifyLibCallsPass());
			passmanager.add(llvm::createPromoteMemoryToRegisterPass());

			if (optimization_level >= 2)
			{
				passmanager.add(llvm::createBasicAliasAnalysisPass());
				passmanager.add(llvm::createEarlyCSEPass());
//				passmanager.add(llvm::createGVNPass());
//				passmanager.add(llvm::createLICMPass());
				passmanager.add(llvm::createDeadInstEliminationPass());
				passmanager.add(llvm::createLCSSAPass());
				passmanager.add(llvm::createLoopIdiomPass());
				passmanager.add(llvm::createLoopInstSimplifyPass());
				passmanager.add(llvm::createLoopSimplifyPass());
				passmanager.add(llvm::createIndVarSimplifyPass());
				passmanager.add(llvm::createLoopStrengthReducePass());

				passmanager.add(llvm::createFunctionAttrsPass());
//				passmanager.add(llvm::createTypeBasedAliasAnalysisPass());
//				passmanager.add(llvm::createFunctionInliningPass());
				passmanager.add(llvm::createTypeBasedAliasAnalysisPass());
				passmanager.add(llvm::createLoopVectorizePass());
				passmanager.add(llvm::createBBVectorizePass());
				passmanager.add(llvm::createLoopUnrollPass());
				passmanager.add(llvm::createDeadStoreEliminationPass());
				passmanager.add(llvm::createDeadCodeEliminationPass());

				passmanager.add(llvm::createReassociatePass());
				passmanager.add(llvm::createConstantMergePass());
				passmanager.add(llvm::createConstantPropagationPass());
				passmanager.add(llvm::createSROAPass());
				passmanager.add(llvm::createInstructionSimplifierPass());
				passmanager.add(llvm::createDeadArgEliminationPass());

				passmanager.add(llvm::createGlobalOptimizerPass());
				passmanager.add(llvm::createGlobalsModRefPass());
			}
			if (optimization_level >= 3)
			{
				passmanager.add(llvm::createPartialInliningPass());
			}
		}
		passmanager.run(*module);

//		module->dump();

		llvm::TargetOptions target_opts;
		target_opts.NoFramePointerElim = 1;
		target_opts.JITEmitDebugInfo = 1;
		target_opts.JITEmitDebugInfoToDisk = 1;
		target_opts.AllowFPOpFusion = llvm::FPOpFusion::Strict;
		target_opts.LessPreciseFPMADOption = 0;
		target_opts.NoInfsFPMath = 0;
		target_opts.NoNaNsFPMath = 0;
//		target_opts.RealignStack = 1;
		target_opts.UnsafeFPMath = 0;

		engine = llvm::EngineBuilder(module).setUseMCJIT(true).setOptLevel(llvm::CodeGenOpt::Aggressive).setTargetOptions(target_opts).setRelocationModel(llvm::Reloc::Default).setErrorStr(&error).create();
		if (!error.empty())
		{
			std::cerr << "LLVM error at engine creation: " << error << std::endl;
			error.clear();
		}

		if (engine)
		{
			engine->DisableLazyCompilation();
			engine->runStaticConstructorsDestructors(false);
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
        llvm::ErrorOr<std::unique_ptr<llvm::MemoryBuffer> > buffer = llvm::MemoryBuffer::getFile(filename);
        if (buffer.getError())
        {
            std::cerr << buffer.getError() << std::endl;
            return NULL;
        }
        llvm::ErrorOr<llvm::Module*> module = llvm::parseBitcodeFile(buffer.get().get(), get_context());
        if (module.getError())
        {
            std::cerr << module.getError() << std::endl;
            return NULL;
        }
        if (module)
            module.get()->setModuleIdentifier(filename);
        return module.get();
	}

	llvm::Function *vm::get_registered_function(const std::string &function_name) const
	{
		map<std::string, llvm::Function*>::const_iterator it = functions.find(function_name);
		if (it == functions.end())
			return NULL;
		return it->second;
	}

	void vm::register_function(const std::string &function_name, llvm::Function *fn)
	{
		functions[function_name] = fn;
	}

	void vm::push_break_continue_blocks(llvm::BasicBlock *break_dest, llvm::BasicBlock *continue_dest)
	{
		this->break_dest.push_back(break_dest);
		this->continue_dest.push_back(continue_dest);
	}

	void vm::pop_break_continue_blocks()
	{
		break_dest.pop_back();
		continue_dest.pop_back();
	}

	void vm::register_global_variable(const std::string &variable_name, llvm::GlobalVariable *gv)
	{
		globals[variable_name] = gv;
	}

	llvm::GlobalVariable *vm::get_registered_global_variable(const std::string &variable_name) const
	{
		map<std::string, llvm::GlobalVariable*>::const_iterator it = globals.find(variable_name);
		if (it == globals.end())
			return NULL;
		return it->second;
	}

	void vm::register_global_constructor(llvm::Function *fn)
	{
		global_constructors.push_back(fn);
	}

	void vm::create_global_constructors_table()
	{
		if (global_constructors.empty())
			return;
		llvm::Type *ctor_type = llvm::PointerType::get(llvm::FunctionType::get(builder->getVoidTy(), false), 0);
		llvm::ArrayType *table_type = llvm::ArrayType::get(ctor_type, global_constructors.size());
		llvm::Constant *init = llvm::ConstantArray::get(table_type, global_constructors);
		llvm::GlobalVariable *gv_ctor = new llvm::GlobalVariable(*module,
																 table_type,
																 true,
																 llvm::GlobalVariable::AppendingLinkage,
																 init,
																 "llvm.global_ctors");
	}
}
