#ifndef __FREEOCL_TYPES_H__
#define __FREEOCL_TYPES_H__

#include <inttypes.h>

typedef uint64_t __ulong;
typedef uint32_t __uint;
typedef uint16_t __ushort;
typedef uint8_t  __uchar;
typedef uint8_t	bool;

#define false	0
#define true	1

typedef uintptr_t	__size_t;

typedef int64_t __long;
typedef int32_t __int;
typedef int16_t __short;
typedef int8_t  __char;

typedef float __float;
typedef double __double;

#define DEFINE(T)\
typedef T T##16 __attribute__((ext_vector_type(16)));\
typedef T T##8 __attribute__((ext_vector_type(8)));\
typedef T T##4 __attribute__((ext_vector_type(4)));\
typedef T T##3 __attribute__((ext_vector_type(3)));\
typedef T T##2 __attribute__((ext_vector_type(2)))

DEFINE(__float);
DEFINE(__double);
DEFINE(__char);
DEFINE(__uchar);
DEFINE(__short);
DEFINE(__ushort);
DEFINE(__int);
DEFINE(__uint);
DEFINE(__long);
DEFINE(__ulong);

#endif
