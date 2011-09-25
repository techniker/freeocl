
set(PARSER_SOURCES
	parser/grammar
	parser/parser.cpp	parser/parser.h
	parser/macros.h
	parser/lex.cpp
	parser/error.cpp
	parser/node.cpp		parser/node.h
	parser/chunk.cpp	parser/chunk.h
	parser/value.h		parser/value.cpp
	parser/token.h		parser/token.cpp
	parser/type.h			parser/type.cpp
	parser/native_type.h	parser/native_type.cpp
	parser/struct_type.h	parser/struct_type.cpp
	parser/union_type.h		parser/union_type.cpp
	parser/pointer_type.h	parser/pointer_type.cpp
	parser/typedef.h		parser/typedef.cpp
	parser/function.h		parser/function.cpp
	parser/kernel.h			parser/kernel.cpp
	parser/ternary.h		parser/ternary.cpp
	parser/binary.h			parser/binary.cpp
	parser/unary.h			parser/unary.cpp
	parser/index.h			parser/index.cpp
	parser/var.h			parser/var.cpp
	parser/call.h			parser/call.cpp
	parser/expression.h
	parser/callable.h
	parser/symbol_table.h	parser/symbol_table.cpp
	parser/builtin.h		parser/builtin.cpp
	parser/overloaded_builtin.h		parser/overloaded_builtin.cpp
	parser/member.h			parser/member.cpp
	parser/swizzle.h		parser/swizzle.cpp
	parser/cast.h			parser/cast.cpp
	parser/declarator.h		parser/declarator.cpp
	)

set(UTILS_SOURCES
    utils/map.h
    utils/set.h
    utils/smartptr.h
    utils/string.h
    utils/commandqueue.cpp    utils/commandqueue.h
    utils/mutex.cpp        utils/mutex.h
    utils/condition.cpp    utils/condition.h
    utils/thread.cpp        utils/thread.h
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

add_library(FreeOCL SHARED ${SOURCES} ${PARSER_SOURCES} ${UTILS_SOURCES})
target_link_libraries(FreeOCL)

# Installation and packaging process
install(TARGETS FreeOCL LIBRARY DESTINATION lib)


add_subdirectory(icd)