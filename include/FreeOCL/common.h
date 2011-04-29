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
#ifndef __FREEOCL_OPENCL_C_PREINCLUDE_COMMON_H__
#define __FREEOCL_OPENCL_C_PREINCLUDE_COMMON_H__
// Built-in common functions
// for float
inline float clamp(float x, float minval, float maxval)	{	return fmin(fmax(x, minval), maxval);	}
inline float degrees(float radians)	{	return radians * 57.295779513082f;	}
inline float max(float x, float y)	{	return x < y ? y : x;	}
inline float min(float x, float y)	{	return y < x ? y : x;	}
inline float mix(float x, float y, float a)	{	return x + (y - x) * a;	}
inline float radians(float degrees)	{	return degrees * 0.017453292519943f;	}
inline float step(float edge, float x)	{	return x < edge ? 0.0f : 1.0f;	}
inline float smoothstep(float edge0, float edge1, float x)
{
	float t = clamp((x - edge0) / (edge1 - edge0), 0.0f, 1.0f);
	return t * t * (3.0f - 2.0f * t);
}
inline float sign(float x)
{
	return x > 0.0f ? 1.0f : x < 0.0f ? -1.0f : isnan(x) ? 0.0f : x;
}

#endif
