
set(PARSER_SOURCES
	parser/grammar
	parser/parser.cpp	parser/parser.h
	parser/macros.h
	parser/lex.cpp
	parser/error.cpp
    parser/pragma.cpp
    parser/ast/node.cpp		parser/ast/node.h
    parser/ast/chunk.cpp	parser/ast/chunk.h
    parser/ast/value.h		parser/ast/value.cpp
    parser/ast/token.h		parser/ast/token.cpp
    parser/ast/struct_literal.h parser/ast/struct_literal.cpp
    parser/ast/type.h			parser/ast/type.cpp
    parser/ast/array_type.h		parser/ast/array_type.cpp
    parser/ast/native_type.h	parser/ast/native_type.cpp
    parser/ast/struct_type.h	parser/ast/struct_type.cpp
    parser/ast/union_type.h		parser/ast/union_type.cpp
    parser/ast/pointer_type.h	parser/ast/pointer_type.cpp
    parser/ast/enum_type.h      parser/ast/enum_type.cpp
    parser/ast/typedef.h		parser/ast/typedef.cpp
    parser/ast/function.h		parser/ast/function.cpp
    parser/ast/printf.h         parser/ast/printf.cpp
    parser/ast/kernel.h			parser/ast/kernel.cpp
    parser/ast/ternary.h		parser/ast/ternary.cpp
    parser/ast/binary.h			parser/ast/binary.cpp
    parser/ast/unary.h			parser/ast/unary.cpp
    parser/ast/index.h			parser/ast/index.cpp
    parser/ast/var.h			parser/ast/var.cpp
    parser/ast/call.h			parser/ast/call.cpp
    parser/ast/expression.h
    parser/ast/callable.h       parser/ast/callable.cpp
	parser/symbol_table.h	parser/symbol_table.cpp
    parser/ast/builtin.h		parser/ast/builtin.cpp
    parser/ast/overloaded_builtin.h		parser/ast/overloaded_builtin.cpp
    parser/ast/overloaded_function.h	parser/ast/overloaded_function.cpp
    parser/ast/member.h			parser/ast/member.cpp
    parser/ast/swizzle.h		parser/ast/swizzle.cpp
    parser/ast/cast.h			parser/ast/cast.cpp
    parser/ast/declarator.h		parser/ast/declarator.cpp
    parser/ast/qualifier.h		parser/ast/qualifier.cpp
    parser/ast/sizeof.h			parser/ast/sizeof.cpp
    parser/ast/if.h             parser/ast/if.cpp
    parser/ast/do.h             parser/ast/do.cpp
    parser/ast/while.h          parser/ast/while.cpp
    parser/ast/for.h            parser/ast/for.cpp
    parser/ast/switch.h         parser/ast/switch.cpp
    parser/ast/noop.h           parser/ast/noop.cpp
    parser/ast/return.h         parser/ast/return.cpp
    )

set(VM_SOURCES
    vm/vm.cpp   vm/vm.h
    )

set(PREPROCESSOR_SOURCES
    preprocessor/preprocessor.cpp   preprocessor/preprocessor.h
    preprocessor/tokenizer.cpp
    preprocessor/expression.cpp
    preprocessor/macro_expansion.cpp
    )

set(UTILS_SOURCES
    utils/map.h
    utils/set.h
	utils/hash.h
	utils/smartptr.h
    utils/string.h
    utils/commandqueue.cpp utils/commandqueue.h
    utils/mutex.cpp        utils/mutex.h
    utils/condition.cpp    utils/condition.h
    utils/thread.cpp       utils/thread.h
    utils/time.cpp         utils/time.h
    utils/threadpool.cpp   utils/threadpool.h
    )

set(SOURCES
    freeocl.cpp		freeocl.h
    platform.cpp	platform.h
    device.cpp		device.h
    context.cpp		context.h

    kernel.cpp		kernel.h
    program.cpp		program.h
    mem.cpp			mem.h
    event.cpp		event.h

    sampler.cpp		sampler.h
    image.cpp
    dispatch.h
    prototypes.h
    codebuilder.cpp	codebuilder.h
	)

# Add FreeOCL headers in order to have them recognized by IDEs
set(FREEOCL_HEADERS
	../include/FreeOCL/asyncmemop.h
	../include/FreeOCL/atomic.h
	../include/FreeOCL/common.h
	../include/FreeOCL/converters.h
	../include/FreeOCL/geometric.h
	../include/FreeOCL/imgreadwrite.h
    ../include/FreeOCL/image1d_t.h
    ../include/FreeOCL/image1d_buffer_t.h
    ../include/FreeOCL/image1d_array_t.h
    ../include/FreeOCL/image2d_t.h
    ../include/FreeOCL/image2d_array_t.h
    ../include/FreeOCL/image3d_t.h
    ../include/FreeOCL/integer.h
	../include/FreeOCL/math.h
	../include/FreeOCL/memfence.h
	../include/FreeOCL/opencl_c.h
	../include/FreeOCL/relational.h
	../include/FreeOCL/sync.h
	../include/FreeOCL/vectors.h
	../include/FreeOCL/vloadstore.h
	../include/FreeOCL/vmisc.h
	../include/FreeOCL/workitem.h
    ../include/FreeOCL/simdopts.h
    ../include/FreeOCL/printf.h
    )

add_library(FreeOCL SHARED ${SOURCES} ${PARSER_SOURCES} ${VM_SOURCES} ${UTILS_SOURCES} ${FREEOCL_HEADERS} ${PREPROCESSOR_SOURCES})
target_link_libraries(FreeOCL ${LLVM_LIBRARIES})

# Installation and packaging process
install(TARGETS FreeOCL LIBRARY DESTINATION lib)


add_subdirectory(icd)
