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
// for scalar types
//template<typename S>
//__int isequal(S x, typename __scalar<S>::type y)	{	return x == y;	}
//template<typename S>
//__int isnotequal(S x, typename __scalar<S>::type y)	{	return x != y;	}
//template<typename S>
//__int isgreater(S x, typename __scalar<S>::type y)	{	return x > y;	}
//template<typename S>
//__int isgreaterequal(S x, typename __scalar<S>::type y)	{	return x >= y;	}
//template<typename S>
//__int isless(S x, typename __scalar<S>::type y)	{	return x < y;	}
//template<typename S>
//__int islessequal(S x, typename __scalar<S>::type y)	{	return x <= y;	}
//template<typename S>
//__int islessgreater(S x, typename __scalar<S>::type y)	{	return x < y || x > y;	}

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

//template<typename S, typename I>
//typename __scalar<S>::type select(S a, S b, I c)
//{	return c ? b : a;	}

//// for vector types

//template<typename I>
//__int any(I x)
//{
//	const __size_t mask = 1U << (sizeof(typename __vector<I>::base_type) * 8 - 1);
//	for(__size_t i = 0 ; i < __vector<I>::components ; ++i)
//		if (x.v[i] & mask)
//			return 1;
//	return 0;
//}

//template<typename I>
//__int all(I x)
//{
//	const __size_t mask = 1U << (sizeof(typename __vector<I>::base_type) * 8 - 1);
//	for(__size_t i = 0 ; i < __vector<I>::components ; ++i)
//		if (!(x.v[i] & mask))
//			return 0;
//	return 1;
//}

//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isequal(S x, typename __vector<S>::type y)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = x.v[i] == y.v[i] ? -1 : 0;
//	return ret;
//}
//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isnotequal(S x, typename __vector<S>::type y)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = x.v[i] != y.v[i] ? -1 : 0;
//	return ret;
//}
//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isgreater(S x, typename __vector<S>::type y)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = x.v[i] > y.v[i] ? -1 : 0;
//	return ret;
//}
//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isgreaterequal(S x, typename __vector<S>::type y)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = x.v[i] >= y.v[i] ? -1 : 0;
//	return ret;
//}
//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isless(S x, typename __vector<S>::type y)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = x.v[i] < y.v[i] ? -1 : 0;
//	return ret;
//}
//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		islessequal(S x, typename __vector<S>::type y)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = x.v[i] <= y.v[i] ? -1 : 0;
//	return ret;
//}
//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		islessgreater(S x, typename __vector<S>::type y)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = (x.v[i] < y.v[i] || x.v[i] > y.v[i]) ? -1 : 0;
//	return ret;
//}

//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isfinite(S x)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = __isfinite(x.v[i]) ? -1 : 0;
//	return ret;
//}
//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isinf(S x)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = __isinf(x.v[i]) ? -1 : 0;
//	return ret;
//}
//template<typename S>
//static inline typename __vector_type<__int, __vector<S>::components>::type
//		isnan(S x)
//{
//	typename __vector_type<__int, __vector<S>::components>::type ret;
//	for(__size_t i = 0 ; i < __vector<S>::components ; ++i)
//		ret.v[i] = __isnan(x.v[i]) ? -1 : 0;
//	return ret;
//}
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

//template<typename V, typename I>
//static inline typename __vector<V>::type select(V a, V b, I c)
//{
//	V ret;
//	const __size_t mask = 1U << (sizeof(typename __vector<I>::base_type) * 8 - 1);
//	for(__size_t i = 0 ; i < __vector<V>::components ; ++i)
//		ret.v[i] = (c.v[i] & mask) ? b.v[i] : a.v[i];
//	return ret;
//}
