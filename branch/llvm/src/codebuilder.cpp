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
#include "codebuilder.h"
#include <cstdlib>
#include <sstream>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include "freeocl.h"
#include "device.h"
#include "parser/parser.h"
#include "parser/ast/chunk.h"
#include "parser/ast/token.h"
#include "parser/ast/pointer_type.h"
#include "parser/ast/native_type.h"
#include "utils/string.h"
#include "preprocessor/preprocessor.h"
#include <fstream>
#include <utility>
#include <algorithm>
#include "vm/vm.h"
#include <llvm/Module.h>
#include <llvm/PassManager.h>
#include <llvm/Analysis/Verifier.h>
#include <llvm/Analysis/Passes.h>
#include <llvm/Target/TargetData.h>
#include <llvm/Target/TargetOptions.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Transforms/Scalar.h>
#include <llvm/Transforms/IPO.h>
#include <llvm/ExecutionEngine/ExecutionEngine.h>
#include <llvm/LLVMContext.h>
#include <llvm/DerivedTypes.h>
#include <llvm/ExecutionEngine/JIT.h>

namespace FreeOCL
{
	std::string RUNTIME_FREEOCL_CXX_COMPILER = FREEOCL_CXX_COMPILER;
	std::string RUNTIME_FREEOCL_CXX_FLAGS = FREEOCL_CXX_FLAGS;

	struct __init
	{
		__init();
	};
	__init __init_instance;
	__init::__init()
	{
		const char *env_FREEOCL_CXX_COMPILER = getenv("FREEOCL_CXX_COMPILER");
		const char *env_FREEOCL_CXX_FLAGS = getenv("FREEOCL_CXX_FLAGS");
		if (env_FREEOCL_CXX_COMPILER)
			RUNTIME_FREEOCL_CXX_COMPILER = env_FREEOCL_CXX_COMPILER;
		if (env_FREEOCL_CXX_FLAGS)
			RUNTIME_FREEOCL_CXX_FLAGS = env_FREEOCL_CXX_FLAGS;
	}

	vm *build_program(const std::string &options,
					  const std::string &code,
					  std::stringstream &log,
					  FreeOCL::set<std::string> &kernels,
					  bool &b_valid_options,
					  const bool b_compile_only,
					  const FreeOCL::map<std::string, std::string> &headers)
	{
		b_valid_options = true;

		std::vector<std::pair<std::string, std::string> > macros;
		std::string compiler_extra_args;
		if (b_compile_only)
			compiler_extra_args += " -c";

		std::stringstream coptions(options);
		std::vector<std::string> include_paths;
		bool b_debug_mode = false;
		while(coptions)
		{
			std::string word;
			coptions >> word;

			if (word.empty() && !coptions)
				break;

			if (word == "-D")		//	macro
			{
				if (!coptions)
				{
					b_valid_options = false;
					return NULL;
				}
				coptions >> word;
				const size_t eq = word.find('=');
				if (eq == std::string::npos)
					macros.push_back(std::make_pair(word, std::string()));
				else
					macros.push_back(std::make_pair(word.substr(0, eq), word.substr(eq + 1)));
			}
			else if (word.size() > 2 && word.substr(0, 2) == "-D")		//	macro
			{
				const size_t eq = word.find('=');
				if (eq == std::string::npos)
					macros.push_back(std::make_pair(word.substr(2), std::string()));
				else
					macros.push_back(std::make_pair(word.substr(2, eq - 2), word.substr(eq + 1)));
			}
			else if (word == "-I")		//	include path
			{
				if (!coptions)
				{
					b_valid_options = false;
					return NULL;
				}
				coptions >> word;
				include_paths.push_back(word);
			}
			else if (word.size() > 2 && word.substr(0, 2) == "-I")		//	include path
			{
				include_paths.push_back(word.substr(2));
			}
			else if (word == "-cl-single-precision-constant")
			{
				compiler_extra_args += " -fsingle-precision-constant";
			}
			else if (word == "-cl-denorms-are-zero")
			{
			}
			else if (word == "-cl-opt-disable")
			{
				compiler_extra_args += " -O0 -g";
			}
			else if (word == "-cl-mad-enable")
			{
			}
			else if (word == "-cl-debug")
			{
				b_debug_mode = true;
			}
			else if (word == "-cl-no-signed-zeros")
			{
				compiler_extra_args += " -fno-signed-zeros";
			}
			else if (word == "-cl-unsafe-math-optimizations")
			{
				compiler_extra_args += " -funsafe-math-optimizations";
			}
			else if (word == "-cl-finite-math-only")
			{
				compiler_extra_args += " -ffinite-math-only";
			}
			else if (word == "-cl-fast-relaxed-math")
			{
				macros.push_back(std::make_pair(std::string("__FAST_RELAXED_MATH__"), std::string("1")));
				compiler_extra_args += " -ffast-math -D__FAST_RELAXED_MATH__=1";
			}
			else if (word == "-cl-kernel-arg-infos")
			{
			}
			else if (word == "-w")
			{
			}
			else if (word == "-Werror")
			{
			}
			else if (word.size() > 8 && word.substr(0, 8) == "-cl-std=")
			{
			}
			else
			{
				b_valid_options = false;
				return NULL;
			}
		}

		const std::string &preprocessed_code = preprocess_code(code,
															   macros,
															   log,
															   include_paths,
															   headers);

		if (preprocessed_code.empty())
			return NULL;

		return validate_code(preprocessed_code, log, kernels, b_debug_mode);
	}

	std::string preprocess_code(const std::string &code,
								const std::vector<std::pair<std::string, std::string> > &options,
								std::stringstream &log,
								const std::vector<std::string> &include_paths,
								const map<std::string, std::string> &headers)
	{
		log << "preprocessor log:" << std::endl;

		std::stringstream _out;
		preprocessor preproc(_out, log);
		preproc.set_include_paths(include_paths);
		preproc.set_headers(headers);

		preproc.define("__OPENCL_VERSION__", "120");
		preproc.define("CL_VERSION_1_0", "100");
		preproc.define("CL_VERSION_1_1", "110");
		preproc.define("CL_VERSION_1_2", "120");
		if (device->endian_little)
			preproc.define("__ENDIAN_LITTLE__", "1");
		preproc.define("__IMAGE_SUPPORT__", "1");
		for(size_t i = 0 ; i < options.size() ; ++i)
			preproc.define(options[i].first, options[i].second);

		// Add math defines
		preproc.define("FLT_DIG", "6");
		preproc.define("FLT_MANT_DIG", "24");
		preproc.define("FLT_MAX_10_EXP", "38");
		preproc.define("FLT_MAX_EXP", "128");
		preproc.define("FLT_MIN_10_EXP", "-37");
		preproc.define("FLT_MIN_EXP", "-125");
		preproc.define("FLT_RADIX", "2");
		preproc.define("FLT_MAX", "0x1.fffffep127f");
		preproc.define("FLT_MIN", "0x1.0p-126f");
		preproc.define("FLT_EPSILON", "0x1.0p-23f");

		preproc.define("M_E_F", "2.7182818284590452354f");
		preproc.define("M_LOG2E_F", "1.4426950408889634074f");
		preproc.define("M_LOG10E_F", "0.43429448190325182765f");
		preproc.define("M_LN2_F", "0.69314718055994530942f");
		preproc.define("M_LN10_F", "2.30258509299404568402f");
		preproc.define("M_PI_F", "3.14159265358979323846f");
		preproc.define("M_PI_2_F", "1.57079632679489661923f");
		preproc.define("M_PI_4_F", "0.78539816339744830962f");
		preproc.define("M_1_PI_F", "0.31830988618379067154f");
		preproc.define("M_2_PI_F", "0.63661977236758134308f");
		preproc.define("M_2_SQRTPI_F", "1.12837916709551257390f");
		preproc.define("M_SQRT2_F", "1.41421356237309504880f");
		preproc.define("M_SQRT1_2_F", "0.70710678118654752440f");

		preproc.define("DBL_DIG", "15");
		preproc.define("DBL_MANT_DIG", "53");
		preproc.define("DBL_MAX_10_EXP", "308");
		preproc.define("DBL_MAX_EXP", "1024");
		preproc.define("DBL_MIN_10_EXP", "-307");
		preproc.define("DBL_MIN_EXP", "-1021");
		preproc.define("DBL_MAX", "0x1.fffffffffffffp1023f");
		preproc.define("DBL_MIN", "0x1.0p-1022f");
		preproc.define("DBL_EPSILON", "0x1.0p-52");

		preproc.define("M_E", "2.7182818284590452354");
		preproc.define("M_LOG2E", "1.4426950408889634074");
		preproc.define("M_LOG10E", "0.43429448190325182765");
		preproc.define("M_LN2", "0.69314718055994530942");
		preproc.define("M_LN10", "2.30258509299404568402");
		preproc.define("M_PI", "3.14159265358979323846");
		preproc.define("M_PI_2", "1.57079632679489661923");
		preproc.define("M_PI_4", "0.78539816339744830962");
		preproc.define("M_1_PI", "0.31830988618379067154");
		preproc.define("M_2_PI", "0.63661977236758134308");
		preproc.define("M_2_SQRTPI", "1.12837916709551257390");
		preproc.define("M_SQRT2", "1.41421356237309504880");
		preproc.define("M_SQRT1_2", "0.70710678118654752440");

		preproc.define("CLK_NORMALIZED_COORDS_FALSE", "0x00000000U");
		preproc.define("CLK_NORMALIZED_COORDS_TRUE",  "0x01000000U");
		preproc.define("CLK_ADDRESS_NONE", "0x00000000U");
		preproc.define("CLK_ADDRESS_CLAMP_TO_EDGE", "0x00000001U");
		preproc.define("CLK_ADDRESS_REPEAT", "0x00000002U");
		preproc.define("CLK_ADDRESS_CLAMP", "0x00000003U");
		preproc.define("CLK_ADDRESS_MIRRORED_REPEAT", "0x00000004U");
		preproc.define("CLK_FILTER_NEAREST", "0x00000000U");
		preproc.define("CLK_FILTER_LINEAR", "0x00010000U");
		preproc.define("CLK_R", "0x10B0");
		preproc.define("CLK_A", "0x10B1");
		preproc.define("CLK_RG", "0x10B2");
		preproc.define("CLK_RA", "0x10B3");
		preproc.define("CLK_RGB", "0x10B4");
		preproc.define("CLK_RGBA", "0x10B5");
		preproc.define("CLK_BGRA", "0x10B6");
		preproc.define("CLK_ARGB", "0x10B7");
		preproc.define("CLK_INTENSITY", "0x10B8");
		preproc.define("CLK_LUMINANCE", "0x10B9");
		preproc.define("CLK_Rx", "0x10BA");
		preproc.define("CLK_RGx", "0x10BB");
		preproc.define("CLK_RGBx", "0x10BC");
		preproc.define("CLK_SNORM_INT8", "0x10D0");
		preproc.define("CLK_SNORM_INT16", "0x10D1");
		preproc.define("CLK_UNORM_INT8", "0x10D2");
		preproc.define("CLK_UNORM_INT16", "0x10D3");
		preproc.define("CLK_UNORM_SHORT_565", "0x10D4");
		preproc.define("CLK_UNORM_SHORT_555", "0x10D5");
		preproc.define("CLK_UNORM_INT_101010", "0x10D6");
		preproc.define("CLK_SIGNED_INT8", "0x10D7");
		preproc.define("CLK_SIGNED_INT16", "0x10D8");
		preproc.define("CLK_SIGNED_INT32", "0x10D9");
		preproc.define("CLK_UNSIGNED_INT8", "0x10DA");
		preproc.define("CLK_UNSIGNED_INT16", "0x10DB");
		preproc.define("CLK_UNSIGNED_INT32", "0x10DC");
		preproc.define("CLK_HALF_FLOAT", "0x10DD");
		preproc.define("CLK_FLOAT", "0x10DE");

		preproc.define("CLK_LOCAL_MEM_FENCE", "0x0");
		preproc.define("CLK_GLOBAL_MEM_FENCE", "0x1");

		std::stringstream _code(preprocessor::fix_end_of_lines(code));
		try
		{
			preproc.parse(_code);
		}
		catch(const std::string &msg)
		{
			return std::string();
		}

		return _out.str();
	}

	vm *validate_code(const std::string &code, std::stringstream &log, FreeOCL::set<std::string> &kernels, const bool b_debug_mode)
	{
		log << "code validator log:" << std::endl;
		log << "code:" << std::endl << code << std::endl;
		std::stringstream in(code);
		parser p(in, log);
		const size_t timer = usec_timer();
		p.set_debug_mode(b_debug_mode);
		p.parse();
		std::clog << usec_timer() - timer << "µs" << std::endl;
		if (p.errors())
			return NULL;

		if (!p.get_ast())
			return NULL;

		vm *p_vm = new vm;

		const int optimization_level = 2;

		p_vm->set_function_pass_manager(new llvm::FunctionPassManager(p_vm->get_module()));

//		p_vm->get_function_pass_manager()->add(new llvm::TargetData(p_vm->get_module()->getTargetTriple()));
//		passmanager.add(new llvm::TargetData(p_vm->get_module()->getTargetTriple()));
		if (optimization_level >= 1)
		{
			p_vm->get_function_pass_manager()->add(llvm::createBasicAliasAnalysisPass());
			p_vm->get_function_pass_manager()->add(llvm::createReassociatePass());
			p_vm->get_function_pass_manager()->add(llvm::createCFGSimplificationPass());
			p_vm->get_function_pass_manager()->add(llvm::createPromoteMemoryToRegisterPass());
			if (optimization_level >= 2)
			{
				p_vm->get_function_pass_manager()->add(llvm::createMemCpyOptPass());
				p_vm->get_function_pass_manager()->add(llvm::createScalarReplAggregatesPass());
				p_vm->get_function_pass_manager()->add(llvm::createSimplifyLibCallsPass());
				p_vm->get_function_pass_manager()->add(llvm::createBlockPlacementPass());
				p_vm->get_function_pass_manager()->add(llvm::createLazyValueInfoPass());
			}
			if (optimization_level >= 3)
			{
				p_vm->get_function_pass_manager()->add(llvm::createGVNPass());
				p_vm->get_function_pass_manager()->add(llvm::createInstructionCombiningPass());
			}
		}

		p.get_ast()->to_IR(p_vm);

		p_vm->link(optimization_level);

		for(FreeOCL::map<std::string, smartptr<kernel> >::const_iterator i = p.get_kernels().begin(), end = p.get_kernels().end() ; i != end ; ++i)
			kernels.insert(i->first);

		return p_vm;
	}

	std::string link_program(const std::string &options,
							 const std::vector<std::string> &files_to_link,
							  std::stringstream &log,
							  bool &b_valid_options)
	{
		b_valid_options = true;

		std::string compiler_extra_args;
		std::stringstream coptions(options);
		bool b_library = false;
		while(coptions)
		{
			std::string word;
			coptions >> word;

			if (word.empty() && !coptions)
				break;

			if (word == "-create-library")
			{
				b_library = true;
			}
			else if (word == "-enable-link-options")
			{
			}
			else if (word == "-cl-denorms-are-zero")
			{
			}
			else if (word == "-cl-no-signed-zeros")
			{
				compiler_extra_args += " -fno-signed-zeros";
			}
			else if (word == "-cl-unsafe-math-optimizations")
			{
				compiler_extra_args += " -funsafe-math-optimizations";
			}
			else if (word == "-cl-finite-math-only")
			{
				compiler_extra_args += " -ffinite-math-only";
			}
			else if (word == "-cl-fast-relaxed-math")
			{
				compiler_extra_args += " -ffast-math -D__FAST_RELAXED_MATH__=1";
			}
			else
			{
				b_valid_options = false;
				return std::string();
			}
		}

		char buf[1024];		// Buffer for tmpnam (to make it thread safe)
		int fd_out = -1;
		std::string filename_out;

		size_t n = 0;
		while(fd_out == -1)
		{
			++n;
			if (n > 0x10000)
			{
				log << "error: impossible to get a temporary file as linker output" << std::endl;
				filename_out.clear();
				return filename_out;
			}
			filename_out = tmpnam(buf);
			filename_out += b_library ? ".a" : ".so";
			fd_out = open(filename_out.c_str(), O_EXCL | O_CREAT | O_RDONLY, S_IWUSR | S_IRUSR | S_IXUSR);
		}

		std::stringstream cmd;
		if (b_library)	// Static library (CL_PROGRAM_BINARY_TYPE_LIBRARY)
		{
			cmd << "ar rcs "
				<< filename_out;
		}
		else			// Shared library (CL_PROGRAM_BINARY_TYPE_EXECUTABLE)
		{
			cmd << RUNTIME_FREEOCL_CXX_COMPILER
				<< RUNTIME_FREEOCL_CXX_FLAGS
				<< compiler_extra_args
				<< " -o " << filename_out;
		}
		for(size_t i = 0 ; i < files_to_link.size() ; ++i)
			cmd	<< ' ' << files_to_link[i];
		cmd	<< " 2>&1";			// Redirects everything to stdout in order to read all logs
		int ret = 0;
		log << run_command(cmd.str(), &ret) << std::endl;

		close(fd_out);

		if (ret != 0)
		{
			remove(filename_out.c_str());
			filename_out.clear();
		}
		return filename_out;
	}
}
