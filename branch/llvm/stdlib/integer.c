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

// Built-in integer functions

__long _Z5clamplll(__long, __long, __long);
__ulong _Z5clampmmm(__ulong, __ulong, __ulong);

// for __int
__uint _Z3absi(const __int x)	{	return x >= 0 ? x : -x;	}
__uint _Z8abs_diffii(__int x, __int y)	{	return x > y ? x - y : y - x;	}

__int _Z7add_satii(__int x, __int y)
{	return (__int)(_Z5clamplll(((__long)x) + ((__long)y), -0x80000000, 0x7FFFFFFF));	}

__int _Z4haddii(__int x, __int y)
{	return (__int)((((__long)x) + ((__long)y)) >> 1);	}

__int _Z5rhaddii(__int x, __int y)
{	return (__int)((((__long)x) + ((__long)y) + 1) >> 1);	}

__int _Z3maxii(__int, __int);
__int _Z3minii(__int, __int);
__int _Z5clampiii(__int x, __int minval, __int maxval)	{	return _Z3minii(_Z3maxii(x, minval), maxval);	}
__int _Z3clzi(__int x);
//__int _Z3clzi(__int x)
//{
//	const __uint y = (__uint)x;
//	__int c = ((y >> 16) == 0) << 4;
//	c += ((y >> (24 - c)) == 0) << 3;
//	c += ((y >> (28 - c)) == 0) << 2;
//	c += ((y >> (30 - c)) == 0) << 1;
//	c += ((y >> (31 - c)) == 0);
//	return c;
//}
__int _Z7mul_hiii(__int, __int);
__int _Z7mad_hiiii(__int a, __int b, __int c)	{	return _Z7mul_hiii(a, b) + c;	}
__int _Z7mad_satiii(__int a, __int b, __int c)
{	return (__int)(_Z5clamplll(((__long)a) * ((__long)b) + ((__long)c), (__long)-0x80000000, (__long)0x7FFFFFFF));	}

__int _Z3maxii(__int x, __int y)	{	return x > y ? x : y;	}
__uint _Z3maxjj(__uint x, __uint y)	{	return x > y ? x : y;	}
__int _Z3minii(__int x, __int y)	{	return x < y ? x : y;	}
__uint _Z3minjj(__uint x, __uint y)	{	return x < y ? x : y;	}
__int _Z7mul_hiii(__int x, __int y)	{	return (__int)((__long)(x) * (__long)(y) >> 32);	}
__int _Z6rotateii(__int v, __int i)	{	return (v << i) | (v >> (32 - i));	}

__int _Z7sub_satii(__int x, __int y)
{	return (__int)(_Z5clamplll(((__long)x) - ((__long)y), (__long)-0x80000000, (__long)0x7FFFFFFF));	}

// for __long
__long _Z3maxll(__long, __long);
__long _Z3minll(__long, __long);
__long _Z5clamplll(__long x, __long minval, __long maxval)	{	return _Z3minll(_Z3maxll(x, minval), maxval);	}

__long _Z3maxll(__long x, __long y)	{	return x > y ? x : y;	}
__ulong _Z3maxmm(__ulong x, __ulong y)	{	return x > y ? x : y;	}
__long _Z3minll(__long x, __long y)	{	return x < y ? x : y;	}
__ulong _Z3minmm(__ulong x, __ulong y)	{	return x < y ? x : y;	}
__ulong _Z5clampmmm(__ulong x, __ulong minval, __ulong maxval)	{	return _Z3minmm(_Z3maxmm(x, minval), maxval);	}

// upsample functions
__short _Z8upsamplech(__char hi, __uchar lo)	{	return ((__short)hi << 8) | lo;	}
__ushort _Z8upsamplehh(__uchar hi, __uchar lo)	{	return ((__ushort)hi << 8) | lo;	}
__int _Z8upsamplest(__short hi, __ushort lo)	{	return ((__int)hi << 16) | lo;	}
__uint _Z8upsamplett(__ushort hi, __ushort lo)	{	return ((__uint)hi << 16) | lo;	}
__long _Z8upsampleij(__int hi, __uint lo)	{	return ((long long)hi << 32) | lo;	}
__ulong _Z8upsamplejj(__uint hi, __uint lo)	{	return ((long long)hi << 32) | lo;	}

__ulong _Z8popcountm(__ulong x);
//__ulong _Z8popcountm(__ulong x)
//{
//	x = ((x & 0xAAAAAAAAAAAAAAAA) >> 1) + (x & 0x5555555555555555);
//	x = ((x & 0xCCCCCCCCCCCCCCCC) >> 2) + (x & 0x3333333333333333);
//	x = ((x & 0xF0F0F0F0F0F0F0F0) >> 4) + (x & 0x0F0F0F0F0F0F0F0F);
//	x = ((x & 0xFF00FF00FF00FF00) >> 8) + (x & 0x00FF00FF00FF00FF);
//	x = ((x & 0xFFFF0000FFFF0000) >> 16) + (x & 0x0000FFFF0000FFFF);
//	x = ((x & 0xFFFFFFFF00000000) >> 32) + (x & 0x00000000FFFFFFFF);
//	return x;
//}

// fast integer built-in functions
__int _Z5mad24iii(__int x, __int y, __int z)	{	return x * y + z;	}
__int _Z5mul24ii(__int x, __int y)	{	return x * y;	}

//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION3_I(clamp)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1_I(abs)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1_I(popcount)
