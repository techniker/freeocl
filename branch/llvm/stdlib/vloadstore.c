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

//"PK" + base_type->mangled_name();
//"PU2A1K" + base_type->mangled_name();
//"PU2A2K" + base_type->mangled_name();
//"PU2A3K" + base_type->mangled_name();

// Built-in vector load and store functions
// vloadn
#define IMPLEMENT_VLOAD_N(type, n, m)\
type##n _Z6vload##n##u2szPK##m(__size_t offset, const type *p)	{	return ((const type##n*)p)[offset];	}\
type##n _Z6vload##n##u2szPU2A1K##m(__size_t offset, const type *p)	{	return ((const type##n*)p)[offset];	}\
type##n _Z6vload##n##u2szPU2A2K##m(__size_t offset, const type *p)	{	return ((const type##n*)p)[offset];	}\
type##n _Z6vload##n##u2szPU2A3K##m(__size_t offset, const type *p)	{	return ((const type##n*)p)[offset];	}

#define IMPLEMENT_VLOAD_3(type, m)\
type##4 _Z6vload##n##u2szPK##m(__size_t offset, const type *p)	{	type##4 ret = { p[offset * 3], p[offset * 3 + 1], p[offset * 3 + 2] };	return ret;	}\
type##4 _Z6vload##n##u2szPU2A1K##m(__size_t offset, const type *p)	{	type##4 ret = { p[offset * 3], p[offset * 3 + 1], p[offset * 3 + 2] };	return ret;	}\
type##4 _Z6vload##n##u2szPU2A2K##m(__size_t offset, const type *p)	{	type##4 ret = { p[offset * 3], p[offset * 3 + 1], p[offset * 3 + 2] };	return ret;	}\
type##4 _Z6vload##n##u2szPU2A3K##m(__size_t offset, const type *p)	{	type##4 ret = { p[offset * 3], p[offset * 3 + 1], p[offset * 3 + 2] };	return ret;	}

#define IMPLEMENT_VLOAD_T(type, m)\
IMPLEMENT_VLOAD_N(type, 2, m)\
IMPLEMENT_VLOAD_3(type, m)\
IMPLEMENT_VLOAD_N(type, 4, m)\
IMPLEMENT_VLOAD_N(type, 8, m)\
IMPLEMENT_VLOAD_N(type, 16, m)

IMPLEMENT_VLOAD_T(__char, c)
IMPLEMENT_VLOAD_T(__uchar, h)
IMPLEMENT_VLOAD_T(__short, s)
IMPLEMENT_VLOAD_T(__ushort, t)
IMPLEMENT_VLOAD_T(__int, i)
IMPLEMENT_VLOAD_T(__uint, j)
IMPLEMENT_VLOAD_T(__long, l)
IMPLEMENT_VLOAD_T(__ulong, m)
IMPLEMENT_VLOAD_T(__float, f)
IMPLEMENT_VLOAD_T(__double, d)

// vstoren
#define IMPLEMENT_VSTORE_N(type, n, m)\
void _Z7vstore##n##u2v##n##m##u2szP##m(type##n data, __size_t offset, type *p)	{	((type##n*)p)[offset] = data;	}\
void _Z7vstore##n##u2v##n##m##u2szPU2A1##m(type##n data, __size_t offset, type *p)	{	((type##n*)p)[offset] = data;	}\
void _Z7vstore##n##u2v##n##m##u2szPU2A3##m(type##n data, __size_t offset, type *p)	{	((type##n*)p)[offset] = data;	}

#define IMPLEMENT_VSTORE_3(type, m)\
void _Z7vstore3u2v3##m##u2szP##m(type##4 data, __size_t offset, type *p)	{	((type##4*)p)[offset].xyz = data.xyz;	}\
void _Z7vstore3u2v3##m##u2szPU2A1##m(type##4 data, __size_t offset, type *p)	{	((type##4*)p)[offset].xyz = data.xyz;	}\
void _Z7vstore3u2v3##m##u2szPU2A3##m(type##4 data, __size_t offset, type *p)	{	((type##4*)p)[offset].xyz = data.xyz;	}

#define IMPLEMENT_VSTORE_16(type, m)\
void _Z8vstore16u3v16##m##u2szP##m(type##16 data, __size_t offset, type *p)	{	((type##16*)p)[offset] = data;	}\
void _Z8vstore16u3v16##m##u2szPU2A1##m(type##16 data, __size_t offset, type *p)	{	((type##16*)p)[offset] = data;	}\
void _Z8vstore16u3v16##m##u2szPU2A3##m(type##16 data, __size_t offset, type *p)	{	((type##16*)p)[offset] = data;	}

#define IMPLEMENT_VSTORE_T(type, m)\
IMPLEMENT_VSTORE_N(type, 2, m)\
IMPLEMENT_VSTORE_3(type, m)\
IMPLEMENT_VSTORE_N(type, 4, m)\
IMPLEMENT_VSTORE_N(type, 8, m)\
IMPLEMENT_VSTORE_16(type, m)

IMPLEMENT_VSTORE_T(__char, c)
IMPLEMENT_VSTORE_T(__uchar, h)
IMPLEMENT_VSTORE_T(__short, s)
IMPLEMENT_VSTORE_T(__ushort, t)
IMPLEMENT_VSTORE_T(__int, i)
IMPLEMENT_VSTORE_T(__uint, j)
IMPLEMENT_VSTORE_T(__long, l)
IMPLEMENT_VSTORE_T(__ulong, m)
IMPLEMENT_VSTORE_T(__float, f)
IMPLEMENT_VSTORE_T(__double, d)


//// vload_half
//static inline float vload_half(size_t offset, const half *p)
//{
//	return p[offset];
//}

//// vstore_half_*
//static inline void vstore_half(float data, size_t offset, half *p)
//{
//	p[offset] = half::from_float(data);
//}

//static inline void vstore_half_rte(float data, size_t offset, half *p)
//{
//	p[offset] = half::from_float(data);
//}
