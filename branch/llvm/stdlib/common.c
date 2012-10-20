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

__float _Z5isnanf(__float);
__double _Z5isnand(__double);

// Built-in common functions
// for __float
__float _Z3maxff(__float x, __float y)	{	return x < y ? y : x;	}
__float _Z3minff(__float x, __float y)	{	return y < x ? y : x;	}
__float _Z5clampfff(__float x, __float minval, __float maxval)	{	return _Z3minff(_Z3maxff(x, minval), maxval);	}
__float _Z7degreesf(__float radians)	{	return radians * 57.295779513082f;	}
__float _Z3mixfff(__float x, __float y, __float a)	{	return x + (y - x) * a;	}
__float _Z7radiansf(__float degrees)	{	return degrees * 0.017453292519943f;	}
__float _Z4stepff(__float edge, __float x)	{	return x < edge ? 0.0f : 1.0f;	}
__float _Z10smoothstepfff(__float edge0, __float edge1, __float x)
{
	__float t = _Z5clampfff((x - edge0) / (edge1 - edge0), 0.0f, 1.0f);
	return t * t * (3.0f - 2.0f * t);
}
__float _Z4signf(__float x)
{
	return x > 0.0f ? 1.0f : x < 0.0f ? -1.0f : _Z5isnanf(x) ? 0.0f : x;
}

// for __double
__double _Z3maxdd(__double x, __double y)	{	return x < y ? y : x;	}
__double _Z3mindd(__double x, __double y)	{	return y < x ? y : x;	}
__double _Z5clampddd(__double x, __double minval, __double maxval)	{	return _Z3mindd(_Z3maxdd(x, minval), maxval);	}
__double _Z7degreesd(__double radians)	{	return radians * 57.295779513082;	}
__double _Z3mixddd(__double x, __double y, __double a)	{	return x + (y - x) * a;	}
__double _Z7radiansd(__double degrees)	{	return degrees * 0.017453292519943;	}
__double _Z4stepdd(__double edge, __double x)	{	return x < edge ? 0.0 : 1.0;	}
__double _Z10smoothstepddd(__double edge0, __double edge1, __double x)
{
	__double t = _Z5clampddd((x - edge0) / (edge1 - edge0), 0.0, 1.0);
	return t * t * (3.0 - 2.0 * t);
}
__double _Z4signd(__double x)
{
	return x > 0.0 ? 1.0 : x < 0.0 ? -1.0 : _Z5isnand(x) ? 0.0 : x;
}

// Vector versions
__float2 _Z7degreesu2v2f(__float2 radians)	{	return radians * 57.295779513082f;	}
__float4 _Z7degreesu2v3f(__float4 radians)	{	return radians * 57.295779513082f;	}
__float4 _Z7degreesu2v4f(__float4 radians)	{	return radians * 57.295779513082f;	}
__float8 _Z7degreesu2v8f(__float8 radians)	{	return radians * 57.295779513082f;	}
__float16 _Z7degreesu3v16f(__float16 radians)	{	return radians * 57.295779513082f;	}
__double2 _Z7degreesu2v2d(__double2 radians)	{	return radians * 57.295779513082;	}
__double4 _Z7degreesu2v3d(__double4 radians)	{	return radians * 57.295779513082;	}
__double4 _Z7degreesu2v4d(__double4 radians)	{	return radians * 57.295779513082;	}
__double8 _Z7degreesu2v8d(__double8 radians)	{	return radians * 57.295779513082;	}
__double16 _Z7degreesu3v16d(__double16 radians)	{	return radians * 57.295779513082;	}

__float2 _Z7radiansu2v2f(__float2 degrees)	{	return degrees * 0.017453292519943f;	}
__float4 _Z7radiansu2v3f(__float4 degrees)	{	return degrees * 0.017453292519943f;	}
__float4 _Z7radiansu2v4f(__float4 degrees)	{	return degrees * 0.017453292519943f;	}
__float8 _Z7radiansu2v8f(__float8 degrees)	{	return degrees * 0.017453292519943f;	}
__float16 _Z7radiansu3v16f(__float16 degrees)	{	return degrees * 0.017453292519943f;	}
__double2 _Z7radiansu2v2d(__double2 degrees)	{	return degrees * 0.017453292519943;	}
__double4 _Z7radiansu2v3d(__double4 degrees)	{	return degrees * 0.017453292519943;	}
__double4 _Z7radiansu2v4d(__double4 degrees)	{	return degrees * 0.017453292519943;	}
__double8 _Z7radiansu2v8d(__double8 degrees)	{	return degrees * 0.017453292519943;	}
__double16 _Z7radiansu3v16d(__double16 degrees)	{	return degrees * 0.017453292519943;	}

//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION3(mix)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION3_S(mix)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2(step)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION2S_(step)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION3(smoothstep)
//VECTOR_IMPLEMENTATION_FROM_SCALAR_IMPLEMENTATION3SS_(smoothstep)
