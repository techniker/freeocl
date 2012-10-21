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
#include "types.h"
#include <math.h>

// Built-in relational functions
__int _Z7isequalff(__float x, __float y)	{	return x == y;	}
__int _Z7isequaldd(__double x, __double y)	{	return x == y;	}
__int _Z10isnotequalff(__float x, __float y)	{	return x != y;	}
__int _Z10isnotequaldd(__double x, __double y)	{	return x != y;	}
__int _Z9isgreaterff(__float x, __float y)	{	return x > y;	}
__int _Z9isgreaterdd(__double x, __double y)	{	return x > y;	}
__int _Z14isgreaterequalff(__float x, __float y)	{	return x >= y;	}
__int _Z14isgreaterequaldd(__double x, __double y)	{	return x >= y;	}
__int _Z6islessff(__float x, __float y)	{	return x < y;	}
__int _Z6islessdd(__double x, __double y)	{	return x < y;	}
__int _Z11islessequalff(__float x, __float y)	{	return x <= y;	}
__int _Z11islessequaldd(__double x, __double y)	{	return x <= y;	}
__int _Z13islessgreaterff(__float x, __float y)	{	return x < y || x > y;	}
__int _Z13islessgreaterdd(__double x, __double y)	{	return x < y || x > y;	}

__int _Z8isfinitef(__float x)
{
	union
	{
		__float f;
		__uint i;
	} v;
	v.f = x;
	return (v.i & 0x7F800000U) != 0x7F800000U;
}
__int _Z5isinff(__float x)
{
	union
	{
		__float f;
		__uint i;
	} v;
	v.f = x;
	return (v.i & 0x7FFFFFFFU) == 0x7F800000U;
}
__int _Z5isnanf(__float x)
{
	union
	{
		__float f;
		__uint i;
	} v;
	v.f = x;
	return (v.i & 0x7F800000U) == 0x7F800000U && (v.i & 0x007FFFFFU);
}
__int _Z8isnormalf(__float x)
{
	if (!_Z8isfinitef(x))
		return false;
	union
	{
		__float f;
		__uint i;
	} v;
	v.f = x;
	return !((v.i & 0x7F800000U) == 0x0U && (v.i & 0x007FFFFFU));
}

__int _Z8isfinited(__double x)
{
	union
	{
		__double f;
		__ulong i;
	} v;
	v.f = x;
	return (v.i & 0x7FF0000000000000U) != 0x7FF0000000000000U;
}
__int _Z5isinfd(__double x)
{
	union
	{
		__double f;
		__ulong i;
	} v;
	v.f = x;
	return (v.i & 0x7FFFFFFFFFFFFFFFU) == 0x7FF0000000000000U;
}
__int _Z5isnand(__double x)
{
	union
	{
		__double f;
		__ulong i;
	} v;
	v.f = x;
	return (v.i & 0x7FF0000000000000U) == 0x7FF0000000000000U && (v.i & 0x000FFFFFFFFFFFFFU);
}
__int _Z8isnormald(__double x)
{
	if (!_Z8isfinited(x))
		return false;
	union
	{
		__double f;
		__ulong i;
	} v;
	v.f = x;
	return !((v.i & 0x7FF0000000000000U) == 0x0U && (v.i & 0x000FFFFFFFFFFFFFU));
}

//template<typename S>
//__int isordered(S x, typename __scalar<S>::type y)	{	return !__isordered(x, y);	}

//template<typename S>
//__int isunordered(S x, typename __scalar<S>::type y)	{	return __isunordered(x, y);	}

//__int signbit(__float x)	{	return __signbit(x);	}

//// both scalars and vectors
//template<typename S>
//S bitselect(S a, S b, S c)
//{
//	S r;
//	for(__size_t i = 0 ; i < sizeof(S) ; ++i)
//		(&reinterpret_cast<char&>(r))[i]
//				= ((&reinterpret_cast<char&>(b))[i] & (&reinterpret_cast<char&>(c))[i])
//		| ((&reinterpret_cast<char&>(a))[i] & ~(&reinterpret_cast<char&>(c))[i]);
//	return r;
//}

// for vector types

// any
__int _Z3anyc(__char x)	{	return (x & 0x80) ? 1 : 0;	}
__int _Z3anyh(__uchar x)	{	return (x & 0x80) ? 1 : 0;	}
__int _Z3anys(__short x)	{	return (x & 0x8000) ? 1 : 0;	}
__int _Z3anyt(__ushort x)	{	return (x & 0x8000) ? 1 : 0;	}
__int _Z3anyi(__int x)	{	return (x & 0x80000000) ? 1 : 0;	}
__int _Z3anyj(__uint x)	{	return (x & 0x80000000) ? 1 : 0;	}
__int _Z3anyl(__long x)	{	return (x & 0x8000000000000000) ? 1 : 0;	}
__int _Z3anym(__ulong x)	{	return (x & 0x8000000000000000) ? 1 : 0;	}
__int _Z3anyu2v2c(__char2 x)	{	x &= (__char2)0x80;	return (x.x | x.y) ? 1 : 0;	}
__int _Z3anyu2v2h(__uchar2 x)	{	x &= (__uchar2)0x80;	return (x.x | x.y) ? 1 : 0;	}
__int _Z3anyu2v2s(__short2 x)	{	x &= (__short2)0x8000;	return (x.x | x.y) ? 1 : 0;	}
__int _Z3anyu2v2t(__ushort2 x)	{	x &= (__ushort2)0x8000;	return (x.x | x.y) ? 1 : 0;	}
__int _Z3anyu2v2i(__int2 x)	{	x &= (__int2)0x80000000;	return (x.x | x.y) ? 1 : 0;	}
__int _Z3anyu2v2j(__uint2 x)	{	x &= (__uint2)0x80000000;	return (x.x | x.y) ? 1 : 0;	}
__int _Z3anyu2v2l(__long2 x)	{	x &= (__long2)0x8000000000000000;	return (x.x | x.y) ? 1 : 0;	}
__int _Z3anyu2v2m(__ulong2 x)	{	x &= (__ulong2)0x8000000000000000;	return (x.x | x.y) ? 1 : 0;	}

__int _Z3anyu2v3c(__char3 x)	{	x &= (__char3)0x80;	return (x.x | x.y | x.z) ? 1 : 0;	}
__int _Z3anyu2v3h(__uchar3 x)	{	x &= (__uchar3)0x80;	return (x.x | x.y | x.z) ? 1 : 0;	}
__int _Z3anyu2v3s(__short3 x)	{	x &= (__short3)0x8000;	return (x.x | x.y | x.z) ? 1 : 0;	}
__int _Z3anyu2v3t(__ushort3 x)	{	x &= (__ushort3)0x8000;	return (x.x | x.y | x.z) ? 1 : 0;	}
__int _Z3anyu2v3i(__int3 x)	{	x &= (__int3)0x80000000;	return (x.x | x.y | x.z) ? 1 : 0;	}
__int _Z3anyu2v3j(__uint3 x)	{	x &= (__uint3)0x80000000;	return (x.x | x.y | x.z) ? 1 : 0;	}
__int _Z3anyu2v3l(__long3 x)	{	x &= (__long3)0x8000000000000000;	return (x.x | x.y | x.z) ? 1 : 0;	}
__int _Z3anyu2v3m(__ulong3 x)	{	x &= (__ulong3)0x8000000000000000;	return (x.x | x.y | x.z) ? 1 : 0;	}

__int _Z3anyu2v4c(__char4 x)	{	x &= (__char4)0x80;	return (x.x | x.y | x.z | x.w) ? 1 : 0;	}
__int _Z3anyu2v4h(__uchar4 x)	{	x &= (__uchar4)0x80;	return (x.x | x.y | x.z | x.w) ? 1 : 0;	}
__int _Z3anyu2v4s(__short4 x)	{	x &= (__short4)0x8000;	return (x.x | x.y | x.z | x.w) ? 1 : 0;	}
__int _Z3anyu2v4t(__ushort4 x)	{	x &= (__ushort4)0x8000;	return (x.x | x.y | x.z | x.w) ? 1 : 0;	}
__int _Z3anyu2v4i(__int4 x)	{	x &= (__int4)0x80000000;	return (x.x | x.y | x.z | x.w) ? 1 : 0;	}
__int _Z3anyu2v4j(__uint4 x)	{	x &= (__uint4)0x80000000;	return (x.x | x.y | x.z | x.w) ? 1 : 0;	}
__int _Z3anyu2v4l(__long4 x)	{	x &= (__long4)0x8000000000000000;	return (x.x | x.y | x.z | x.w) ? 1 : 0;	}
__int _Z3anyu2v4m(__ulong4 x)	{	x &= (__ulong4)0x8000000000000000;	return (x.x | x.y | x.z | x.w) ? 1 : 0;	}

__int _Z3anyu2v8c(__char8 x)	{	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x80) ? 1 : 0;	}
__int _Z3anyu2v8h(__uchar8 x)	{	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x80) ? 1 : 0;	}
__int _Z3anyu2v8s(__short8 x)	{	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x8000) ? 1 : 0;	}
__int _Z3anyu2v8t(__ushort8 x)	{	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x8000) ? 1 : 0;	}
__int _Z3anyu2v8i(__int8 x)	{	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x80000000) ? 1 : 0;	}
__int _Z3anyu2v8j(__uint8 x)	{	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x80000000) ? 1 : 0;	}
__int _Z3anyu2v8l(__long8 x)	{	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x8000000000000000) ? 1 : 0;	}
__int _Z3anyu2v8m(__ulong8 x)	{	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x8000000000000000) ? 1 : 0;	}

__int _Z3anyu3v16c(__char16 x)	{	x.s01234567 |= x.s89ABCDEF;	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x80) ? 1 : 0;	}
__int _Z3anyu3v16h(__uchar16 x)	{	x.s01234567 |= x.s89ABCDEF;	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x80) ? 1 : 0;	}
__int _Z3anyu3v16s(__short16 x)	{	x.s01234567 |= x.s89ABCDEF;	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x8000) ? 1 : 0;	}
__int _Z3anyu3v16t(__ushort16 x)	{	x.s01234567 |= x.s89ABCDEF;	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x8000) ? 1 : 0;	}
__int _Z3anyu3v16i(__int16 x)	{	x.s01234567 |= x.s89ABCDEF;	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x80000000) ? 1 : 0;	}
__int _Z3anyu3v16j(__uint16 x)	{	x.s01234567 |= x.s89ABCDEF;	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x80000000) ? 1 : 0;	}
__int _Z3anyu3v16l(__long16 x)	{	x.s01234567 |= x.s89ABCDEF;	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x8000000000000000) ? 1 : 0;	}
__int _Z3anyu3v16m(__ulong16 x)	{	x.s01234567 |= x.s89ABCDEF;	x.s0123 |= x.s4567;	x.s01 |= x.s23;	x.s0 |= x.s1;	return (x.x & 0x8000000000000000) ? 1 : 0;	}

// all
__int _Z3allc(__char x)	{	return (x & 0x80) ? 1 : 0;	}
__int _Z3alls(__short x)	{	return (x & 0x8000) ? 1 : 0;	}
__int _Z3alli(__int x)	{	return (x & 0x80000000) ? 1 : 0;	}
__int _Z3alll(__long x)	{	return (x & 0x8000000000000000) ? 1 : 0;	}
__int _Z3allu2v2c(__char2 x)	{	return (x.x & x.y & 0x80) ? 1 : 0;	}
__int _Z3allu2v2s(__short2 x)	{	return (x.x & x.y & 0x8000) ? 1 : 0;	}
__int _Z3allu2v2i(__int2 x)	{	return (x.x & x.y & 0x80000000) ? 1 : 0;	}
__int _Z3allu2v2l(__long2 x)	{	return (x.x & x.y & 0x8000000000000000) ? 1 : 0;	}
__int _Z3allu2v3c(__char4 x)	{	return (x.x & x.y & x.z & 0x80) ? 1 : 0;	}
__int _Z3allu2v3s(__short4 x)	{	return (x.x & x.y & x.z & 0x8000) ? 1 : 0;	}
__int _Z3allu2v3i(__int4 x)	{	return (x.x & x.y &  x.z & 0x80000000) ? 1 : 0;	}
__int _Z3allu2v3l(__long4 x)	{	return (x.x & x.y &  x.z & 0x8000000000000000) ? 1 : 0;	}
__int _Z3allu2v4c(__char4 x)	{	return _Z3allu2v2c(x.s01 & x.s23);	}
__int _Z3allu2v4s(__short4 x)	{	return _Z3allu2v2s(x.s01 & x.s23);	}
__int _Z3allu2v4i(__int4 x)	{	return _Z3allu2v2i(x.s01 & x.s23);	}
__int _Z3allu2v4l(__long4 x)	{	return _Z3allu2v2l(x.s01 & x.s23);	}
__int _Z3allu2v8c(__char8 x)	{	return _Z3allu2v4c(x.s0123 & x.s4567);	}
__int _Z3allu2v8s(__short8 x)	{	return _Z3allu2v4s(x.s0123 & x.s4567);	}
__int _Z3allu2v8i(__int8 x)	{	return _Z3allu2v4i(x.s0123 & x.s4567);	}
__int _Z3allu2v8l(__long8 x)	{	return _Z3allu2v4l(x.s0123 & x.s4567);	}
__int _Z3allu3v16c(__char16 x)	{	return _Z3allu2v8c(x.s01234567 & x.s89ABCDEF);	}
__int _Z3allu3v16s(__short16 x)	{	return _Z3allu2v8s(x.s01234567 & x.s89ABCDEF);	}
__int _Z3allu3v16i(__int16 x)	{	return _Z3allu2v8i(x.s01234567 & x.s89ABCDEF);	}
__int _Z3allu3v16l(__long16 x)	{	return _Z3allu2v8l(x.s01234567 & x.s89ABCDEF);	}

// isequal
__int2 _Z7isequalu2v2fu2v2f(__float2 x, __float2 y)	{	return (x == y) * -1;	}
__int4 _Z7isequalu2v3fu2v3f(__float4 x, __float4 y)	{	return (x == y) * -1;	}
__int4 _Z7isequalu2v4fu2v4f(__float4 x, __float4 y)	{	return (x == y) * -1;	}
__int8 _Z7isequalu2v8fu2v8f(__float8 x, __float8 y)	{	return (x == y) * -1;	}
__int16 _Z7isequalu3v16fu3v16f(__float16 x, __float16 y)	{	return (x == y) * -1;	}
__long2 _Z7isequalu2v2du2v2d(__double2 x, __double2 y)	{	return (x == y) * -1L;	}
__long4 _Z7isequalu2v3du2v3d(__double4 x, __double4 y)	{	return (x == y) * -1L;	}
__long4 _Z7isequalu2v4du2v4d(__double4 x, __double4 y)	{	return (x == y) * -1L;	}
__long8 _Z7isequalu2v8du2v8d(__double8 x, __double8 y)	{	return (x == y) * -1L;	}
__long16 _Z7isequalu3v16du3v16d(__double16 x, __double16 y)	{	return (x == y) * -1L;	}

// isnotequal
__int2 _Z10isnotequalu2v2fu2v2f(__float2 x, __float2 y)	{	return (x != y) * -1;	}
__int4 _Z10isnotequalu2v3fu2v3f(__float4 x, __float4 y)	{	return (x != y) * -1;	}
__int4 _Z10isnotequalu2v4fu2v4f(__float4 x, __float4 y)	{	return (x != y) * -1;	}
__int8 _Z10isnotequalu2v8fu2v8f(__float8 x, __float8 y)	{	return (x != y) * -1;	}
__int16 _Z10isnotequalu3v16fu3v16f(__float16 x, __float16 y)	{	return (x != y) * -1;	}
__long2 _Z10isnotequalu2v2du2v2d(__double2 x, __double2 y)	{	return (x != y) * -1L;	}
__long4 _Z10isnotequalu2v3du2v3d(__double4 x, __double4 y)	{	return (x != y) * -1L;	}
__long4 _Z10isnotequalu2v4du2v4d(__double4 x, __double4 y)	{	return (x != y) * -1L;	}
__long8 _Z10isnotequalu2v8du2v8d(__double8 x, __double8 y)	{	return (x != y) * -1L;	}
__long16 _Z10isnotequalu3v16du3v16d(__double16 x, __double16 y)	{	return (x != y) * -1L;	}

// isgreater
__int2 _Z9isgreateru2v2fu2v2f(__float2 x, __float2 y)	{	return (x > y) * -1;	}
__int4 _Z9isgreateru2v3fu2v3f(__float4 x, __float4 y)	{	return (x > y) * -1;	}
__int4 _Z9isgreateru2v4fu2v4f(__float4 x, __float4 y)	{	return (x > y) * -1;	}
__int8 _Z9isgreateru2v8fu2v8f(__float8 x, __float8 y)	{	return (x > y) * -1;	}
__int16 _Z9isgreateru3v16fu3v16f(__float16 x, __float16 y)	{	return (x > y) * -1;	}
__long2 _Z9isgreateru2v2du2v2d(__double2 x, __double2 y)	{	return (x > y) * -1L;	}
__long4 _Z9isgreateru2v3du2v3d(__double4 x, __double4 y)	{	return (x > y) * -1L;	}
__long4 _Z9isgreateru2v4du2v4d(__double4 x, __double4 y)	{	return (x > y) * -1L;	}
__long8 _Z9isgreateru2v8du2v8d(__double8 x, __double8 y)	{	return (x > y) * -1L;	}
__long16 _Z9isgreateru3v16du3v16d(__double16 x, __double16 y)	{	return (x > y) * -1L;	}

// isgreaterequal
__int2 _Z14isgreaterequalu2v2fu2v2f(__float2 x, __float2 y)	{	return (x >= y) * -1;	}
__int4 _Z14isgreaterequalu2v3fu2v3f(__float4 x, __float4 y)	{	return (x >= y) * -1;	}
__int4 _Z14isgreaterequalu2v4fu2v4f(__float4 x, __float4 y)	{	return (x >= y) * -1;	}
__int8 _Z14isgreaterequalu2v8fu2v8f(__float8 x, __float8 y)	{	return (x >= y) * -1;	}
__int16 _Z14isgreaterequalu3v16fu3v16f(__float16 x, __float16 y)	{	return (x >= y) * -1;	}
__long2 _Z14isgreaterequalu2v2du2v2d(__double2 x, __double2 y)	{	return (x >= y) * -1L;	}
__long4 _Z14isgreaterequalu2v3du2v3d(__double4 x, __double4 y)	{	return (x >= y) * -1L;	}
__long4 _Z14isgreaterequalu2v4du2v4d(__double4 x, __double4 y)	{	return (x >= y) * -1L;	}
__long8 _Z14isgreaterequalu2v8du2v8d(__double8 x, __double8 y)	{	return (x >= y) * -1L;	}
__long16 _Z14isgreaterequalu3v16du3v16d(__double16 x, __double16 y)	{	return (x >= y) * -1L;	}

// isless
__int2 _Z6islessu2v2fu2v2f(__float2 x, __float2 y)	{	return (x < y) * -1;	}
__int4 _Z6islessu2v3fu2v3f(__float4 x, __float4 y)	{	return (x < y) * -1;	}
__int4 _Z6islessu2v4fu2v4f(__float4 x, __float4 y)	{	return (x < y) * -1;	}
__int8 _Z6islessu2v8fu2v8f(__float8 x, __float8 y)	{	return (x < y) * -1;	}
__int16 _Z6islessu3v16fu3v16f(__float16 x, __float16 y)	{	return (x < y) * -1;	}
__long2 _Z6islessu2v2du2v2d(__double2 x, __double2 y)	{	return (x < y) * -1L;	}
__long4 _Z6islessu2v3du2v3d(__double4 x, __double4 y)	{	return (x < y) * -1L;	}
__long4 _Z6islessu2v4du2v4d(__double4 x, __double4 y)	{	return (x < y) * -1L;	}
__long8 _Z6islessu2v8du2v8d(__double8 x, __double8 y)	{	return (x < y) * -1L;	}
__long16 _Z6islessu3v16du3v16d(__double16 x, __double16 y)	{	return (x < y) * -1L;	}

// islessequal
__int2 _Z11islessequalu2v2fu2v2f(__float2 x, __float2 y)	{	return (x <= y) * -1;	}
__int4 _Z11islessequalu2v3fu2v3f(__float4 x, __float4 y)	{	return (x <= y) * -1;	}
__int4 _Z11islessequalu2v4fu2v4f(__float4 x, __float4 y)	{	return (x <= y) * -1;	}
__int8 _Z11islessequalu2v8fu2v8f(__float8 x, __float8 y)	{	return (x <= y) * -1;	}
__int16 _Z11islessequalu3v16fu3v16f(__float16 x, __float16 y)	{	return (x <= y) * -1;	}
__long2 _Z11islessequalu2v2du2v2d(__double2 x, __double2 y)	{	return (x <= y) * -1L;	}
__long4 _Z11islessequalu2v3du2v3d(__double4 x, __double4 y)	{	return (x <= y) * -1L;	}
__long4 _Z11islessequalu2v4du2v4d(__double4 x, __double4 y)	{	return (x <= y) * -1L;	}
__long8 _Z11islessequalu2v8du2v8d(__double8 x, __double8 y)	{	return (x <= y) * -1L;	}
__long16 _Z11islessequalu3v16du3v16d(__double16 x, __double16 y)	{	return (x <= y) * -1L;	}

// islessgreater
__int2 _Z13islessgreateru2v2fu2v2f(__float2 x, __float2 y)	{	return ((x < y) | (x > y)) * -1;	}
__int4 _Z13islessgreateru2v3fu2v3f(__float4 x, __float4 y)	{	return ((x < y) | (x > y)) * -1;	}
__int4 _Z13islessgreateru2v4fu2v4f(__float4 x, __float4 y)	{	return ((x < y) | (x > y)) * -1;	}
__int8 _Z13islessgreateru2v8fu2v8f(__float8 x, __float8 y)	{	return ((x < y) | (x > y)) * -1;	}
__int16 _Z13islessgreateru3v16fu3v16f(__float16 x, __float16 y)	{	return ((x < y) | (x > y)) * -1;	}
__long2 _Z13islessgreateru2v2du2v2d(__double2 x, __double2 y)	{	return ((x < y) | (x > y)) * -1L;	}
__long4 _Z13islessgreateru2v3du2v3d(__double4 x, __double4 y)	{	return ((x < y) | (x > y)) * -1L;	}
__long4 _Z13islessgreateru2v4du2v4d(__double4 x, __double4 y)	{	return ((x < y) | (x > y)) * -1L;	}
__long8 _Z13islessgreateru2v8du2v8d(__double8 x, __double8 y)	{	return ((x < y) | (x > y)) * -1L;	}
__long16 _Z13islessgreateru3v16du3v16d(__double16 x, __double16 y)	{	return ((x < y) | (x > y)) * -1L;	}

//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isfinite(S x)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = __isfinite(x.v[i]) ? -1 : 0;
//	return ret;
//}

#define IMPLEMENT_ISINF_F_N(n)\
__int##n _Z5isinfu2v##n##f(__float##n x)\
{\
	union\
	{\
		__float##n f;\
		__uint##n i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7FFFFFFFU) == 0x7F800000U;\
}
#define IMPLEMENT_ISINF_F_3()\
__int4 _Z5isinfu2v3f(__float4 x)\
{\
	union\
	{\
		__float4 f;\
		__uint4 i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7FFFFFFFU) == 0x7F800000U;\
}
#define IMPLEMENT_ISINF_F_16()\
__int16 _Z5isinfu3v16f(__float16 x)\
{\
	union\
	{\
		__float16 f;\
		__uint16 i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7FFFFFFFU) == 0x7F800000U;\
}
#define IMPLEMENT_ISINF_D_N(n)\
__long##n _Z5isinfu2v##n##d(__double##n x)\
{\
	union\
	{\
		__double##n f;\
		__ulong##n i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7FFFFFFFFFFFFFFFU) == 0x7FF0000000000000U;\
}
#define IMPLEMENT_ISINF_D_3()\
__long4 _Z5isinfu2v3d(__double4 x)\
{\
	union\
	{\
		__double4 f;\
		__ulong4 i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7FFFFFFFFFFFFFFFU) == 0x7FF0000000000000U;\
}
#define IMPLEMENT_ISINF_D_16()\
__long16 _Z5isinfu3v16d(__double16 x)\
{\
	union\
	{\
		__double16 f;\
		__ulong16 i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7FFFFFFFFFFFFFFFU) == 0x7FF0000000000000U;\
}

IMPLEMENT_ISINF_F_N(2)
IMPLEMENT_ISINF_F_3()
IMPLEMENT_ISINF_F_N(4)
IMPLEMENT_ISINF_F_N(8)
IMPLEMENT_ISINF_F_16()
IMPLEMENT_ISINF_D_N(2)
IMPLEMENT_ISINF_D_3()
IMPLEMENT_ISINF_D_N(4)
IMPLEMENT_ISINF_D_N(8)
IMPLEMENT_ISINF_D_16()

#define IMPLEMENT_ISNAN_F_N(n)\
__int##n _Z5isnanu2v##n##f(__float##n x)\
{\
	union\
	{\
		__float##n f;\
		__uint##n i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7F800000U) == 0x7F800000U && (v.i & 0x007FFFFFU);\
}
#define IMPLEMENT_ISNAN_F_3()\
__int4 _Z5isnanu2v3f(__float4 x)\
{\
	union\
	{\
		__float4 f;\
		__uint4 i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7F800000U) == 0x7F800000U && (v.i & 0x007FFFFFU);\
}
#define IMPLEMENT_ISNAN_F_16()\
__int16 _Z5isnanu3v16f(__float16 x)\
{\
	union\
	{\
		__float16 f;\
		__uint16 i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7F800000U) == 0x7F800000U && (v.i & 0x007FFFFFU);\
}
#define IMPLEMENT_ISNAN_D_N(n)\
__long##n _Z5isnanu2v##n##d(__double##n x)\
{\
	union\
	{\
		__double##n f;\
		__ulong##n i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7FF0000000000000U) == 0x7FF0000000000000U && (v.i & 0x000FFFFFFFFFFFFFU);\
}
#define IMPLEMENT_ISNAN_D_3()\
__long4 _Z5isnanu2v3d(__double4 x)\
{\
	union\
	{\
		__double4 f;\
		__ulong4 i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7FF0000000000000U) == 0x7FF0000000000000U && (v.i & 0x000FFFFFFFFFFFFFU);\
}
#define IMPLEMENT_ISNAN_D_16()\
__long16 _Z5isnanu3v16d(__double16 x)\
{\
	union\
	{\
		__double16 f;\
		__ulong16 i;\
	} v;\
	v.f = x;\
	return (v.i & 0x7FF0000000000000U) == 0x7FF0000000000000U && (v.i & 0x000FFFFFFFFFFFFFU);\
}

IMPLEMENT_ISNAN_F_N(2)
IMPLEMENT_ISNAN_F_3()
IMPLEMENT_ISNAN_F_N(4)
IMPLEMENT_ISNAN_F_N(8)
IMPLEMENT_ISNAN_F_16()
IMPLEMENT_ISNAN_D_N(2)
IMPLEMENT_ISNAN_D_3()
IMPLEMENT_ISNAN_D_N(4)
IMPLEMENT_ISNAN_D_N(8)
IMPLEMENT_ISNAN_D_16()

//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isnormal(S x)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = __isnormal(x.v[i]) ? -1 : 0;
//	return ret;
//}

//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isordered(S x, typename __vector<S>::type y)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = __isunordered(x.v[i], y.v[i]) ? 0 : -1;
//	return ret;
//}

//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isunordered(S x, typename __vector<S>::type y)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = __isunordered(x.v[i], y.v[i]) ? -1 : 0;
//	return ret;
//}

//// This is implemented in math.h
//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		signbit(S x)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = __signbit(x.v[i]) ? -1 : 0;
//	return ret;
//}
