set(STDLIB_SOURCES
    workitem.c
    )

add_custom_target(stdlib ALL clang -emit-llvm -o stdlib.bc -O3 -c ${STDLIB_SOURCES}
                    WORKING_DIRECTORY ${FreeOCL_SOURCE_DIR}/stdlib
                    SOURCES ${STDLIB_SOURCES} types.h)
