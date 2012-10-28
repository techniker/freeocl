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

// Built-in math functions
// for double
__double _Z4acosd(__double x)	{	return acos(x);	}
__double _Z5acoshd(__double x)	{	return acosh(x);	}
__double _Z6acospid(__double x)	{	return acos(x) / M_PI;	}
__double _Z4asind(__double x)	{	return asin(x);	}
__double _Z5asinhd(__double x)	{	return asinh(x);	}
__double _Z6asinpid(__double x)	{	return asin(x) / M_PI;	}
__double _Z4atand(__double x)	{	return atan(x);	}
__double _Z5atan2dd(__double y, __double x)	{	return atan2(y, x);	}
__double _Z5atanhd(__double x)	{	return atanh(x);	}
__double _Z6atanpid(__double x)	{	return atan(x) / M_PI;	}
__double _Z7atan2pidd(__double y, __double x)	{	return atan2(y, x) / M_PI;	}
__double _Z4cbrtd(__double x)	{	return cbrt(x);	}
__double _Z4ceild(__double x)	{	return ceil(x);	}
__double _Z8copysigndd(__double x, __double y)	{	return copysign(x, y);	}
//__double _Z3cosd(__double x)	{	return cos(x);	}
__double _Z3cosd(__double x);
__double _Z4coshd(__double x)	{	return cosh(x);	}
__double _Z5cospid(__double x)	{	return _Z3cosd(M_PI * x);	}
__double _Z4erfcd(__double x)	{	return erfc(x);	}
__double _Z3erfd(__double x)	{	return erf(x);	}
//__double _Z3expd(__double x)	{	return exp(x);	}
__double _Z3expd(__double x);
__double _Z4exp2d(__double x)	{	return exp2(x);	}
__double _Z5exp10d(__double x)
{
#ifdef _GNU_SOURCE
	return exp10(x);
#else
	return _Z3expd(x * 2.3025851);
#endif
}
__double _Z5expm1d(__double x)	{	return expm1(x);	}
//__double _Z4fabsd(__double x)	{	return fabs(x);	}
__double _Z4fabsd(__double x);
__double _Z4fdimd(__double x, __double y)	{	return fdim(x, y);	}
//__double _Z5floord(__double x)	{	return floor(x);	}
__double _Z5floord(__double x);
//__double _Z3fmaddd(__double a, __double b, __double c)	{	return fma(a, b, c);	}
__double _Z3fmaddd(__double a, __double b, __double c);
__double _Z4fmaxdd(__double x, __double y)	{	return fmax(x, y);	}
__double _Z4fmindd(__double x, __double y)	{	return fmin(x, y);	}
__double _Z4fmoddd(__double x, __double y)	{	return fmod(x, y);	}
__double _Z5fractdPd(__double x, __double *iptr)
{
	const __double _x = _Z5floord(x);
	*iptr = _x;
	return _Z4fmindd(x - _x, 0x1.fffffep-1f);
}
__double _Z5frexpdPi(__double x, __int *exp)	{	return frexp(x, exp);	}
__double _Z5hypotdd(__double x, __double y)	{	return hypot(x, y);	}
__double _Z5ldexpdi(__double x, __int n)	{	return ldexp(x, n);	}
__double _Z6lgammad(__double x)	{	return lgamma(x);	}
__double _Z8lgamma_rdPi(__double x, __int *signp)	{	return lgamma_r(x, signp);	}
//__double _Z3logd(__double x)	{	return log(x);	}
__double _Z3logd(__double x);
__double _Z4log2d(__double x)	{	return log2(x);	}
__double _Z5log10d(__double x)	{	return log10(x);	}
__double _Z5log1pd(__double x)	{	return log1p(x);	}
__double _Z4logbd(__double x)	{	return logb(x);	}
__double _Z3madddd(__double a, __double b, __double c)	{	return a * b + c;	}
__double _Z6maxmagdd(__double x, __double y)	{	return _Z4fmaxdd(_Z4fabsd(x), _Z4fabsd(y));	}
__double _Z6minmagdd(__double x, __double y)	{	return _Z4fmindd(_Z4fabsd(x), _Z4fabsd(y));	}
//__double _Z3powdd(__double x, __double y)	{	return pow(x, y);	}
__double _Z3powdd(__double x, __double y);
//__double _Z4powndi(__double x, __int n)
//{
//	__double _m = 1.0;
//	if (n < 0)
//	{
//		x = 1.0 / x;
//		n = -n;
//	}
//	for( ; n > 0 ; n >>= 1)
//	{
//		if (n & 1)
//			_m *= x;
//	}
//	return _m;
//}
__double _Z4powrdd(__double x, __double y)	{	return _Z3powdd(x, y);	}
__double _Z5rootndi(__double x, __int y)	{	return _Z3powdd(x, 1.0 / y);	}
__double _Z4sqrtd(__double x);
__double _Z5rsqrtd(__double x)	{	return 1.0 / _Z4sqrtd(x);	}
__double _Z3sind(__double x);
__double _Z6sincosdPd(__double x, __double *cosval)
{
#ifdef _GNU_SOURCE
	__double _sin;
	sincos(x, &_sin, cosval);
	return _sin;
#else
	*cosval = _Z3cosd(x);
	return _Z3sind(x);
#endif
}
//__double _Z3sind(__double x)	{	return sin(x);	}
__double _Z4sinhd(__double x)	{	return sinh(x);	}
__double _Z5sinpid(__double x)	{	return _Z3sind(M_PI * x);	}
//__double _Z4sqrtd(__double x)	{	return sqrt(x);	}
__double _Z5tanpid(__double x)	{	return tan(M_PI * x);	}

// for float
__float _Z4acosf(__float x)	{	return acosf(x);	}
__float _Z5acoshf(__float x)	{	return acoshf(x);	}
__float _Z6acospif(__float x)	{	return acosf(x) / (__float)M_PI;	}
__float _Z4asinf(__float x)	{	return asinf(x);	}
__float _Z5asinhf(__float x)	{	return asinhf(x);	}
__float _Z6asinpif(__float x)	{	return asinf(x) / (__float)M_PI;	}
__float _Z4atanf(__float x)	{	return atanf(x);	}
__float _Z5atan2ff(__float y, __float x)	{	return atan2f(y, x);	}
__float _Z5atanhf(__float x)	{	return atanhf(x);	}
__float _Z6atanpif(__float x)	{	return atanf(x) / ((__float)M_PI);	}
__float _Z7atan2piff(__float y, __float x)	{	return atan2f(y, x) / ((__float)M_PI);	}
__float _Z4cbrtf(__float x)	{	return cbrtf(x);	}
__float _Z4ceilf(__float x)	{	return ceilf(x);	}
__float _Z8copysignff(__float x, __float y)	{	return copysignf(x, y);	}
//__float _Z3cosf(__float x)	{	return cosf(x);	}
__float _Z3cosf(__float x);
__float _Z4coshf(__float x)	{	return coshf(x);	}
__float _Z5cospif(__float x)	{	return cosf(((__float)M_PI) * x);	}
__float _Z4erfcf(__float x)	{	return erfcf(x);	}
__float _Z3erff(__float x)	{	return erff(x);	}
//__float _Z3expf(__float x)	{	return expf(x);	}
__float _Z3expf(__float x);
__float _Z4exp2f(__float x)	{	return exp2f(x);	}
__float _Z5exp10f(__float x)
{
#ifdef _GNU_SOURCE
	return exp10f(x);
#else
	return _Z3expf(x * 2.3025851f);
#endif
}
__float _Z5expm1f(__float x)	{	return expm1f(x);	}
//__float _Z4fabsf(__float x)	{	return fabsf(x);	}
__float _Z4fabsf(__float x);
__float _Z4fdimff(__float x, __float y)	{	return fdimf(x, y);	}
//__float _Z5floorf(__float x)	{	return floorf(x);	}
__float _Z5floorf(__float x);
//__float _Z3fmafff(__float a, __float b, __float c)	{	return fmaf(a, b, c);	}
__float _Z3fmafff(__float a, __float b, __float c);
__float _Z4fmaxff(__float x, __float y)	{	return fmaxf(x, y);	}
__float _Z4fminff(__float x, __float y)	{	return fminf(x, y);	}
__float _Z4fmodff(__float x, __float y)	{	return fmodf(x, y);	}
__float _Z5fractfPf(__float x, __float *iptr)
{
	const __float _x = _Z5floorf(x);
	*iptr = _x;
	return _Z4fminff(x - _x, 0x1.fffffep-1f);
}
__float _Z5frexpfPi(__float x, __int *exp)	{	return frexpf(x, exp);	}
__float _Z5hypotff(__float x, __float y)	{	return hypotf(x, y);	}
__float _Z5ldexpfi(__float x, __int n)	{	return ldexpf(x, n);	}
__float _Z6lgammaf(__float x)	{	return lgammaf(x);	}
__float _Z8lgamma_rfPi(__float x, __int *signp)	{	return lgammaf_r(x, signp);	}
//__float _Z3logf(__float x)	{	return logf(x);	}
__float _Z3logf(__float x);
__float _Z4log2f(__float x)	{	return log2f(x);	}
__float _Z5log10f(__float x)	{	return log10f(x);	}
__float _Z5log1pf(__float x)	{	return log1pf(x);	}
__float _Z4logbf(__float x)	{	return logbf(x);	}
__float _Z3madfff(__float a, __float b, __float c)	{	return a * b + c;	}
__float _Z6maxmagff(__float x, __float y)	{	return fmax(fabs(x), fabs(y));	}
__float _Z6minmagff(__float x, __float y)	{	return fmin(fabs(x), fabs(y));	}
__float _Z4modffPf(__float x, __float *iptr)	{	return modff(x, iptr);	}
__float _Z3nanj(__uint nancode)
{
	union
	{
		__uint i;
		__float f;
	} v;
	v.i = (nancode | 0x7F800000U);
	return v.f;
}
__float _Z9nextafterff(__float x, __float y)	{	return nextafterf(x, y);	}
//__float _Z3powff(__float x, __float y)	{	return powf(x, y);	}
__float _Z3powff(__float x, __float y);
//__float _Z4pownfi(__float x, __int n)
//{
//	__float _m = 1.0f;
//	if (n < 0)
//	{
//		x = 1.0f / x;
//		n = -n;
//	}
//	for( ; n > 0 ; n >>= 1)
//	{
//		if (n & 1)
//			_m *= x;
//	}
//	return _m;
//}
__float _Z4powrff(__float x, __float y)	{	return _Z3powff(x, y);	}
__float _Z9remainderff(__float x, __float y)	{	return remainderf(x, y);	}
__float _Z6remquoffPi(__float x, __float y, __int *quo)	{	return remquof(x, y, quo);	}
__float _Z4rintf(__float x)	{	return rintf(x);	}
__float _Z5rootnfi(__float x, __int y)	{	return _Z3powff(x, 1.0f / y);	}
__float _Z5roundf(__float x)	{	return roundf(x);	}
__float _Z4sqrtf(__float x);
__float _Z5rsqrtf(__float x)	{	return 1.0f / _Z4sqrtf(x);	}
//__float _Z3sinf(__float x)	{	return sinf(x);	}
__float _Z3sinf(__float x);
__float _Z6sincosfPf(__float x, __float *cosval)
{
#ifdef _GNU_SOURCE
	__float _sin;
	sincosf(x, &_sin, cosval);
	return _sin;
#else
	*cosval = _Z3cosf(x);
	return _Z3sinf(x);
#endif
}
__float _Z4sinhf(__float x)	{	return sinhf(x);	}
__float _Z5sinpif(__float x)	{	return _Z3sinf(((__float)M_PI) * x);	}
//__float _Z4sqrtf(__float x)	{	return sqrtf(x);	}
__float _Z3tanf(__float x)	{	return tanf(x);	}
__float _Z4tanhf(__float x)	{	return tanhf(x);	}
__float _Z5tanpif(__float x)	{	return _Z3tanf(((__float)M_PI) * x);	}
__float _Z6tgammaf(__float x)	{	return tgammaf(x);	}
__float _Z5truncf(__float x)	{	return truncf(x);	}

// half_ versions
__float _Z8half_cosf(__float x)	{	return _Z3cosf(x);	}
__float _Z11half_divideff(__float x, __float y)	{	return x / y;	}
__float _Z8half_expf(__float x)	{	return _Z3expf(x);	}
__float _Z9half_exp2f(__float x)	{	return _Z4exp2f(x);	}
__float _Z10half_exp10f(__float x)	{	return _Z5exp10f(x);	}
__float _Z8half_logf(__float x)	{	return _Z3logf(x);	}
__float _Z9half_log2f(__float x)	{	return _Z4log2f(x);	}
__float _Z10half_log10f(__float x)	{	return _Z5log10f(x);	}
__float _Z9half_powrff(__float x, __float y)	{	return _Z4powrff(x, y);	}
__float _Z10half_recipf(__float x)	{	return 1.0f / x;	}
__float _Z10half_rsqrtf(__float x)	{	return 1.0f / _Z4sqrtf(x);	}
__float _Z8half_sinf(__float x)	{	return _Z3sinf(x);	}
__float _Z9half_sqrtf(__float x)	{	return _Z4sqrtf(x);	}
__float _Z8half_tanf(__float x)	{	return _Z3tanf(x);	}

// native_ versions
//__float native_cos(__float x)	{	return cos(x);	}
__float _Z13native_divideff(__float x, __float y)	{	return x / y;	}
//__float native_exp(__float x)	{	return exp(x);	}
__float _Z11native_exp2f(__float x)	{	return _Z4exp2f(x);	}
__float _Z12native_exp10f(__float x)	{	return _Z5exp10f(x);	}
//__float native_log(__float x)	{	return log(x);	}
__float _Z11native_log2f(__float x)	{	return _Z4log2f(x);	}
__float _Z12native_log10f(__float x)	{	return _Z5log10f(x);	}
//__float native_powr(__float x, __float y)	{	return powr(x, y);	}
__float _Z12native_recipf(__float x)	{	return 1.0f / x;	}
__float _Z12native_rsqrtf(__float x)	{	return 1.0f / _Z4sqrtf(x);	}
//__float native_sin(__float x)	{	return sin(x);	}
__float _Z11native_sqrtf(__float x)	{	return _Z4sqrtf(x);	}
//__float native_tan(__float x)	{	return tan(x);	}

__float _Z10native_sinf(const __float x)
{
	__float sign, y;
	if (x < 0.0f)
	{
		sign = -1.0f;
		y = -x;
	}
	else
	{
		sign = 1.0f;
		y = x;
	}
	__int q = y * (__float)(1.0 / M_PI_2);
	y -= q * (__float)(M_PI_2);
	if (q & 2)
		sign = -sign;
	if (q & 1)
		y = ((__float)M_PI_2) - y;

	const __float y2 = y * y;
	__float z;
	z = (__float)(1.0 / 362880.0);
	z = z * y2 - (__float)(1.0 / 5040.0);
	z = z * y2 + (__float)(1.0 / 120.0);
	z = z * y2 - (__float)(1.0 / 6.0);
	z = z * y2 + 1.0f;
	z *= y;
	return sign * z;
}

__float _Z10native_cosf(const __float x)
{
	__float sign = 1.0f, y;
	if (x < 0.0f)
		y = -x;
	else
		y = x;
	__int q = y * (__float)(1.0 / M_PI_2);
	y -= q * (__float)(M_PI_2);
	q &= 3;
	if (q == 1 || q == 2)
		sign = -sign;
	if (q & 1)
		y = ((__float)M_PI_2) - y;

	y *= y;
	__float z;
	z = (__float)(1.0 / 40320.0);
	z = z * y - (__float)(1.0 / 720.0);
	z = z * y + (__float)(1.0 / 24.0);
	z = z * y - (__float)(1.0 / 2.0);
	z = z * y + 1.0f;
	return sign * z;
}

__float _Z12native_ldexpfi(const __float x, const __int exp)
{
	union
	{
		__uint i;
		__float f;
	} v;
	v.f = x;
	const __uint ix = v.i;
	const __uint e = (ix & 0x7F800000U) + (exp << 23);
	const __uint f = (ix & ~0x7F800000U) | e;
	v.i = f;
	return v.f;
}

__float _Z10native_expf(const __float x)
{
//	if (x > 88.7228f)
//		return __float(INFINITY);
//	if (x < -87.3365f)
//		return 0.0f;
	__float y = x * (__float)(1.0 / M_LN2);
	const __int j = y;
	y = _Z4fmodff(y, 1.0f);
	y *= (__float)(M_LN2);
	__float z;
	z = (__float)(1.0 / 720.0);
	z = z * y  + (__float)(1.0 / 120.0);
	z = z * y  + (__float)(1.0 / 24.0);
	z = z * y  + (__float)(1.0 / 6.0);
	z = z * y  + (__float)(1.0 / 2.0);
	z = z * y  + 1.0f;
	z = z * y  + 1.0f;
	return _Z12native_ldexpfi(z, j);
}

__float _Z10native_logf(const __float x)
{
	__int e;
	const __float y = frexpf(x, &e) - 1.0f;
	__float z;
	z = -(__float)(1.0 / 10.0);
	z = z * y  + (__float)(1.0 / 9.0);
	z = z * y  - (__float)(1.0 / 8.0);
	z = z * y  + (__float)(1.0 / 7.0);
	z = z * y  - (__float)(1.0 / 6.0);
	z = z * y  + (__float)(1.0 / 5.0);
	z = z * y  - (__float)(1.0 / 4.0);
	z = z * y  + (__float)(1.0 / 3.0);
	z = z * y  - (__float)(1.0 / 2.0);
	z = z * y  + 1.0f;
	z = z * y;
	return z + e * (__float)(M_LN2);
}

__float _Z10native_tanf(const __float x)
{
	return _Z10native_sinf(x) / _Z10native_cosf(x);
}

__float _Z11native_powrff(const __float x, const __float y)
{
	return _Z10native_expf(y * _Z10native_logf(x));
}

// Vector versions
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(acos)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(acosh)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(acospi)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(asin)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(asinh)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(asinpi)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(atan)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(atan2)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(atanh)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(atanpi)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(atan2pi)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(cbrt)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(ceil)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(copysign)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(cos)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(cosh)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(cospi)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(erfc)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(erf)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(exp)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(exp2)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(exp10)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(expm1)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(fabs)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(fdim)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(floor)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION3(fma)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(fmax)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(fmin)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(fmod)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2PB(fract)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2PI(frexp)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(hypot)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2I(ldexp)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(lgamma)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2PI(lgamma_r)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(log)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(log2)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(log10)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(log1p)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(logb)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION3(mad)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(maxmag)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(minmag)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2PB(modf)
__float2 _Z3nanu2v2j(__uint2 nancode)
{
	union
	{
		__uint2 i;
		__float2 f;
	} v;
	v.i = (nancode | 0x7F800000U);
	return v.f;
}
__float3 _Z3nanu2v3j(__uint3 nancode)
{
	union
	{
		__uint3 i;
		__float3 f;
	} v;
	v.i = (nancode | 0x7F800000U);
	return v.f;
}
__float4 _Z3nanu2v4j(__uint4 nancode)
{
	union
	{
		__uint4 i;
		__float4 f;
	} v;
	v.i = (nancode | 0x7F800000U);
	return v.f;
}
__float8 _Z3nanu2v8j(__uint8 nancode)
{
	union
	{
		__uint8 i;
		__float8 f;
	} v;
	v.i = (nancode | 0x7F800000U);
	return v.f;
}
__float16 _Z3nanu3v16j(__uint16 nancode)
{
	union
	{
		__uint16 i;
		__float16 f;
	} v;
	v.i = (nancode | 0x7F800000U);
	return v.f;
}
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(nextafter)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(pow)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2I(pown)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(powr)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(remainder)
//template<class V> static inline CHECK(V) remquo(const V &x, const V &y, const typename __vector_type<__int, __vector<V>::components>::type &z)
//{
//	V ret;
//	for(size_t i = 0 ; i < __vector<V>::components ; ++i)
//		ret.v[i] = F(x.v[i], y.v[i], (__int*)z + i);
//	return ret;
//}
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(rint)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2I(rootn)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(round)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(rsqrt)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(sin)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2PB(sincos)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(sinh)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(sinpi)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(sqrt)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(tan)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(tanh)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(tanpi)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(tgamma)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(trunc)

// half_ versions
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_cos)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(half_divide)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_exp)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_exp2)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_exp10)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_log)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_log2)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_log10)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(half_powr)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_recip)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_rsqrt)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_sin)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_sqrt)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(half_tan)

//// native_ versions
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_cos)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(native_divide)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_exp)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_exp2)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_exp10)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_log)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_log2)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_log10)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(native_powr)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_recip)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_rsqrt)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_sin)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_sqrt)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION1(native_tan)
