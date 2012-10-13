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

__double _Z4sqrtd(__double);
__float _Z4sqrtf(__float);
__float _Z9half_sqrtf(__float);

// Built-in geometric functions
// floats
__float4 _Z5crossu2v4fu2v4f(const __float4 p0, const __float4 p1)
{
	__float4 ret;
	ret.x = p0.y * p1.z - p0.z * p1.y;
	ret.y = p0.z * p1.x - p0.x * p1.z;
	ret.z = p0.x * p1.y - p0.y * p1.x;
	ret.w = 0.f;
	return ret;
}

__float3 _Z5crossu2v3fu2v3f(const __float3 p0, const __float3 p1)
{
	__float3 ret;
	ret.x = p0.y * p1.z - p0.z * p1.y;
	ret.y = p0.z * p1.x - p0.x * p1.z;
	ret.z = p0.x * p1.y - p0.y * p1.x;
	return ret;
}

__float _Z3dotff(const __float p0, const __float p1)
{	return p0 * p1;	}
__float _Z3dotu2v2fu2v2f(const __float2 p0, const __float2 p1)
{
	const __float2 v = p0 * p1;
	return v.x + v.y;
}

__float _Z3dotu2v3fu2v3f(const __float3 p0, const __float3 p1)
{
	const __float3 v = p0 * p1;
	return v.x + v.y + v.z;
}
__float _Z3dotu2v4fu2v4f(const __float4 p0, const __float4 p1)
{
	const __float4 v = p0 * p1;
	return v.x + v.y + v.z + v.w;
}

__float _Z6lengthf(const __float p)		{	return _Z4sqrtf(_Z3dotff(p,p));	}
__float _Z6lengthu2v2f(const __float2 p)	{	return _Z4sqrtf(_Z3dotu2v2fu2v2f(p,p));	}
__float _Z6lengthu2v3f(const __float3 p)	{	return _Z4sqrtf(_Z3dotu2v3fu2v3f(p,p));	}
__float _Z6lengthu2v4f(const __float4 p)	{	return _Z4sqrtf(_Z3dotu2v4fu2v4f(p,p));	}

__float _Z8distanceff(const __float p0, const __float p1)	{	return _Z6lengthf(p0 - p1);	}
__float _Z8distanceu2v2fu2v2f(const __float2 p0, const __float2 p1)	{	return _Z6lengthu2v2f(p0 - p1);	}
__float _Z8distanceu2v3fu2v3f(const __float3 p0, const __float3 p1)	{	return _Z6lengthu2v3f(p0 - p1);	}
__float _Z8distanceu2v4fu2v4f(const __float4 p0, const __float4 p1)	{	return _Z6lengthu2v4f(p0 - p1);	}

__float  _Z9normalizef(const __float p)	{	return (1.0f / _Z6lengthf(p)) * p;	}
__float2 _Z9normalizeu2v2f(const __float2 p)	{	return (1.0f / _Z6lengthu2v2f(p)) * p;	}
__float3 _Z9normalizeu2v3f(const __float3 p)	{	return (1.0f / _Z6lengthu2v3f(p)) * p;	}
__float4 _Z9normalizeu2v4f(const __float4 p)	{	return (1.0f / _Z6lengthu2v4f(p)) * p;	}

__float _Z11fast_lengthf(const __float p)	{	return _Z9half_sqrtf(_Z3dotff(p,p));	}
__float _Z11fast_lengthu2v2f(const __float2 p)	{	return _Z9half_sqrtf(_Z3dotu2v2fu2v2f(p,p));	}
__float _Z11fast_lengthu2v3f(const __float3 p)	{	return _Z9half_sqrtf(_Z3dotu2v3fu2v3f(p,p));	}
__float _Z11fast_lengthu2v4f(const __float4 p)	{	return _Z9half_sqrtf(_Z3dotu2v4fu2v4f(p,p));	}

__float _Z13fast_distanceff(const __float p0, const __float p1)	{	return _Z11fast_lengthf(p0 - p1);	}
__float _Z13fast_distanceu2v2fu2v2f(const __float2 p0, const __float2 p1)	{	return _Z11fast_lengthu2v2f(p0 - p1);	}
__float _Z13fast_distanceu2v3fu2v3f(const __float3 p0, const __float3 p1)	{	return _Z11fast_lengthu2v3f(p0 - p1);	}
__float _Z13fast_distanceu2v4fu2v4f(const __float4 p0, const __float4 p1)	{	return _Z11fast_lengthu2v4f(p0 - p1);	}

__float  _Z14fast_normalizef(const __float p)	{	return _Z9half_sqrtf(_Z3dotff(p,p)) * p;	}
__float2 _Z14fast_normalizeu2v2f(const __float2 p)	{	return _Z9half_sqrtf(_Z3dotu2v2fu2v2f(p,p)) * p;	}
__float3 _Z14fast_normalizeu2v3f(const __float3 p)	{	return _Z9half_sqrtf(_Z3dotu2v3fu2v3f(p,p)) * p;	}
__float4 _Z14fast_normalizeu2v4f(const __float4 p)	{	return _Z9half_sqrtf(_Z3dotu2v4fu2v4f(p,p)) * p;	}

// doubles
__double4 _Z5crossu2v4du2v4d(const __double4 p0, const __double4 p1)
{
	__double4 ret;
	ret.x = p0.y * p1.z - p0.z * p1.y;
	ret.y = p0.z * p1.x - p0.x * p1.z;
	ret.z = p0.x * p1.y - p0.y * p1.x;
	ret.w = 0.f;
	return ret;
}
__double3 _Z5crossu2v3du2v3d(const __double3 p0, const __double3 p1)
{
	__double3 ret;
	ret.x = p0.y * p1.z - p0.z * p1.y;
	ret.y = p0.z * p1.x - p0.x * p1.z;
	ret.z = p0.x * p1.y - p0.y * p1.x;
	return ret;
}

__double _Z3dotdd(const __double p0, const __double p1)
{	return p0 * p1;	}

__double _Z3dotu2v2du2v2d(const __double2 p0, const __double2 p1)
{
	const __double2 v = p0 * p1;
	return v.x + v.y;
}

__double _Z3dotu2v3du2v3d(const __double3 p0, const __double3 p1)
{
	const __double3 v = p0 * p1;
	return v.x + v.y + v.z;
}

__double _Z3dotu2v4du2v4d(const __double4 p0, const __double4 p1)
{
	const __double4 v = p0 * p1;
	return v.x + v.y + v.z + v.w;
}

__double _Z6lengthd(const __double p)	{	return _Z4sqrtd(_Z3dotdd(p,p));	}
__double _Z6lengthu2v2d(const __double2 p)	{	return _Z4sqrtd(_Z3dotu2v2du2v2d(p,p));	}
__double _Z6lengthu2v3d(const __double3 p)	{	return _Z4sqrtd(_Z3dotu2v3du2v3d(p,p));	}
__double _Z6lengthu2v4d(const __double4 p)	{	return _Z4sqrtd(_Z3dotu2v4du2v4d(p,p));	}

__double _Z8distancedd(const __double p0, const __double p1)		{	return _Z6lengthd(p0 - p1);	}
__double _Z8distanceu2v2du2v2d(const __double2 p0, const __double2 p1)	{	return _Z6lengthu2v2d(p0 - p1);	}
__double _Z8distanceu2v3du2v3d(const __double3 p0, const __double3 p1)	{	return _Z6lengthu2v3d(p0 - p1);	}
__double _Z8distanceu2v4du2v4d(const __double4 p0, const __double4 p1)	{	return _Z6lengthu2v4d(p0 - p1);	}

__double _Z9normalized(const __double p)	{	return (1.0 / _Z6lengthd(p)) * p;	}
__double2 _Z9normalizeu2v2d(const __double2 p)	{	return (1.0 / _Z6lengthu2v2d(p)) * p;	}
__double3 _Z9normalizeu2v3d(const __double3 p)	{	return (1.0 / _Z6lengthu2v3d(p)) * p;	}
__double4 _Z9normalizeu2v4d(const __double4 p)	{	return (1.0 / _Z6lengthu2v4d(p)) * p;	}
