set(STDLIB_SOURCES
    workitem.c
    printf.c
    integer.c
    common.c
    relational.c
    sync.c
    geometric.c
    math.c
    )

add_custom_target(stdlib ALL
                    SOURCES ${STDLIB_SOURCES} types.h)

foreach(FILE ${STDLIB_SOURCES})
    string(REPLACE ".c" ".bc" BITCODE_FILE ${FILE})
    add_custom_command(TARGET stdlib
                        PRE_BUILD
                        COMMAND clang -emit-llvm -o ${BITCODE_FILE} -O3 -ffast-math -march=native -c ${FILE}
                        WORKING_DIRECTORY ${FreeOCL_SOURCE_DIR}/stdlib)
endforeach(FILE)
