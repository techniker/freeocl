set(STDLIB_SOURCES
    workitem.c
    printf.c
    integer.c
    common.c
    relational.c
    sync.c
    geometric.c
    math.c
    converters.c
    vloadstore.c
    atomic.c
    asyncmemop.c
    )

set(STDLIB_BYTECODE_SOURCES
    integer.ll
    math.ll
    converters.ll
    select.ll
    common.ll
    vector_math.ll
    atomic.ll
    geometric.ll
    relational.ll
    vloadstore.ll
    )

if(CMAKE_C_SIZEOF_DATA_PTR MATCHES "8")
    set(STDLIB_BYTECODE_SOURCES ${STDLIB_BYTECODE_SOURCES}
        asyncmemop64.ll
        )
else(CMAKE_C_SIZEOF_DATA_PTR MATCHES "8")
    set(STDLIB_BYTECODE_SOURCES ${STDLIB_BYTECODE_SOURCES}
        asyncmemop32.ll
        )
endif(CMAKE_C_SIZEOF_DATA_PTR MATCHES "8")

add_custom_target(stdlib ALL
                    SOURCES ${STDLIB_SOURCES} ${STDLIB_BYTECODE_SOURCES} types.h)

foreach(FILE ${STDLIB_SOURCES})
    string(REPLACE ".c" ".bc" BITCODE_FILE ${FILE})
    add_custom_command(TARGET stdlib
                        PRE_BUILD
                        COMMAND clang -emit-llvm -o ${BITCODE_FILE} -O3 -ffast-math -march=native -c ${FILE}
                        WORKING_DIRECTORY ${FreeOCL_SOURCE_DIR}/stdlib)
    install(FILES ${BITCODE_FILE} DESTINATION share/FreeOCL/stdlib/)
endforeach(FILE)

foreach(FILE ${STDLIB_BYTECODE_SOURCES})
    string(REPLACE ".ll" ".bc" BITCODE_FILE ${FILE})
    add_custom_command(TARGET stdlib
                        PRE_BUILD
                        COMMAND llvm-as -o=asm_${BITCODE_FILE} ${FILE}
                        WORKING_DIRECTORY ${FreeOCL_SOURCE_DIR}/stdlib)
    install(FILES asm_${BITCODE_FILE} DESTINATION share/FreeOCL/stdlib/)
endforeach(FILE)
