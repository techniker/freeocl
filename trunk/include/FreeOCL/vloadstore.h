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
#ifndef __FREEOCL_OPENCL_C_PREINCLUDE_VLOADSTORE_H__
#define __FREEOCL_OPENCL_C_PREINCLUDE_VLOADSTORE_H__
// Built-in vector load and store functions
// vloadn
template<typename S>
inline typename __vector_type<S, 2>::type vload2(size_t offset, const S *p)
{	return *((typename __vector_type<S, 2>::type*)(p + offset * 2));	}

template<typename S>
inline typename __vector_type<S, 3>::type vload3(size_t offset, const S *p)
{	return *((typename __vector_type<S, 3>::type*)(p + offset * 3));	}

template<typename S>
inline typename __vector_type<S, 4>::type vload4(size_t offset, const S *p)
{	return *((typename __vector_type<S, 4>::type*)(p + offset * 4));	}

template<typename S>
inline typename __vector_type<S, 8>::type vload8(size_t offset, const S *p)
{	return *((typename __vector_type<S, 8>::type*)(p + offset * 8));	}

template<typename S>
inline typename __vector_type<S, 16>::type vload16(size_t offset, const S *p)
{	return *((typename __vector_type<S, 16>::type*)(p + offset * 16));	}

// vstoren
template<typename S>
inline void vstore2(const typename __vector_type<S, 2>::type &v, size_t offset, S *p)
{	*(typename __vector_type<S, 2>::type*)(p + offset * 2) = v;	}

template<typename S>
inline void vstore3(const typename __vector_type<S, 3>::type &v, size_t offset, S *p)
{	*(typename __vector_type<S, 3>::type __attribute__((packed))*)(p + offset * 3) = reinterpret_cast<typename __vector_type<S, 3>::type __attribute__((packed))&>(v);	}

template<typename S>
inline void vstore4(const typename __vector_type<S, 4>::type &v, size_t offset, S *p)
{	*(typename __vector_type<S, 4>::type*)(p + offset * 4) = v;	}

template<typename S>
inline void vstore8(const typename __vector_type<S, 8>::type &v, size_t offset, S *p)
{	*(typename __vector_type<S, 8>::type*)(p + offset * 8) = v;	}

template<typename S>
inline void vstore16(const typename __vector_type<S, 16>::type &v, size_t offset, S *p)
{	*(typename __vector_type<S, 16>::type*)(p + offset * 16) = v;	}

// vload_half
inline float vload_half(size_t offset, const half *p)
{
	return p[offset];
}

// vstore_half_*
inline void vstore_half(float data, size_t offset, half *p)
{
	p[offset] = half::from_float(data);
}

inline void vstore_half_rte(float data, size_t offset, half *p)
{
	p[offset] = half::from_float(data);
}

#endif