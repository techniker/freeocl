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
