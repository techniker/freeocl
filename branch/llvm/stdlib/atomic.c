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

// Built-in atomic functions
// 32-bit atomics

__int _Z10atomic_addPU2A3ii(volatile __int *p, __int val)		{	const __int v = *p;	*p += val;	return v;	}
__uint _Z10atomic_addPU2A3jj(volatile __uint *p, __uint val)	{	const __uint v = *p;	*p += val;	return v;	}

__int _Z10atomic_subPU2A3ii(volatile __int *p, __int val)		{	const __int v = *p;	*p -= val;	return v;	}
__uint _Z10atomic_subPU2A3jj(volatile __uint *p, __uint val)	{	const __uint v = *p;	*p -= val;	return v;	}

__int _Z11atomic_xchgPU2A3ii(volatile __int *p, __int val)		{	const __int v = *p;	*p = val;	return v;	}
__uint _Z11atomic_xchgPU2A3jj(volatile __uint *p, __uint val)	{	const __uint v = *p;	*p = val;	return v;	}
__float _Z11atomic_xchgPU2A3ff(volatile __float *p, __float val)	{	const __float v = *p;	*p = val;	return v;	}

__int _Z10atomic_incPU2A3i(volatile __int *p)		{	return (*p)++;	}
__uint _Z10atomic_incPU2A3j(volatile __uint *p)	{	return (*p)++;	}

__int _Z10atomic_decPU2A3i(volatile __int *p)		{	return (*p)--;	}
__uint _Z10atomic_decPU2A3j(volatile __uint *p)	{	return (*p)--;	}

__int _Z14atomic_cmpxchgPU2A3iii(volatile __int *p, __int cmp, __int val)
{
	const __int v = *p;
	if (v == cmp)	*p = val;
	return v;
}
__uint _Z14atomic_cmpxchgPU2A3jjj(volatile __uint *p, __uint cmp, __uint val)
{
	const __uint v = *p;
	if (v == cmp)	*p = val;
	return v;
}

__int _Z10atomic_minPU2A3ii(volatile __int *p, __int val)
{
	const __int v = *p;
	if (v > val)	*p = val;
	return v;
}
__uint _Z10atomic_minPU2A3jj(volatile __uint *p, __uint val)
{
	const __uint v = *p;
	if (v > val)	*p = val;
	return v;
}

__int _Z10atomic_maxPU2A3ii(volatile __int *p, __int val)
{
	const __int v = *p;
	if (v < val)	*p = val;
	return v;
}
__uint _Z10atomic_maxPU2A3jj(volatile __uint *p, __uint val)
{
	const __uint v = *p;
	if (v < val)	*p = val;
	return v;
}

__int _Z10atomic_andPU2A3ii(volatile __int *p, __int val)		{	const __int v = *p;	*p &= val;	return v;	}
__uint _Z10atomic_andPU2A3jj(volatile __uint *p, __uint val)	{	const __uint v = *p;	*p &= val;	return v;	}

__int _Z9atomic_orPU2A3ii(volatile __int *p, __int val)	{	const __int v = *p;	*p |= val;	return v;	}
__uint _Z9atomic_orPU2A3jj(volatile __uint *p, __uint val)	{	const __uint v = *p;	*p |= val;	return v;	}

__int _Z10atomic_xorPU2A3ii(volatile __int *p, __int val)		{	const __int v = *p;	*p ^= val;	return v;	}
__uint _Z10atomic_xorPU2A3jj(volatile __uint *p, __uint val)	{	const __uint v = *p;	*p ^= val;	return v;	}

// 64-bit atomics
__long _Z10atomic_addPU2A3ll(volatile __long *p, __long val)	{	const __long v = *p;	*p += val;	return v;	}
__ulong _Z10atomic_addPU2A3mm(volatile __ulong *p, __ulong val)	{	const __ulong v = *p;	*p += val;	return v;	}

__long _Z10atomic_subPU2A3ll(volatile __long *p, __long val)	{	const __long v = *p;	*p -= val;	return v;	}
__ulong _Z10atomic_subPU2A3mm(volatile __ulong *p, __ulong val)	{	const __ulong v = *p;	*p -= val;	return v;	}

__long _Z11atomic_xchgPU2A3ll(volatile __long *p, __long val)	{	const __long v = *p;	*p = val;	return v;	}
__ulong _Z11atomic_xchgPU2A3mm(volatile __ulong *p, __ulong val)	{	const __ulong v = *p;	*p = val;	return v;	}

__long _Z10atomic_incPU2A3l(volatile __long *p)	{	return (*p)++;	}
__ulong _Z10atomic_incPU2A3m(volatile __ulong *p)	{	return (*p)++;	}

__long _Z10atomic_decPU2A3l(volatile __long *p)	{	return (*p)--;	}
__ulong _Z10atomic_decPU2A3m(volatile __ulong *p)	{	return (*p)--;	}

__long _Z14atomic_cmpxchgPU2A3lll(volatile __long *p, __long cmp, __long val)
{
	const __long v = *p;
	if (v == cmp)	*p = val;
	return v;
}
__ulong _Z14atomic_cmpxchgPU2A3mmm(volatile __ulong *p, __ulong cmp, __ulong val)
{
	const __ulong v = *p;
	if (v == cmp)	*p = val;
	return v;
}

__long _Z10atomic_minPU2A3ll(volatile __long *p, __long val)
{
	const __long v = *p;
	if (v > val)	*p = val;
	return v;
}
__ulong _Z10atomic_minPU2A3mm(volatile __ulong *p, __ulong val)
{
	const __ulong v = *p;
	if (v > val)	*p = val;
	return v;
}

__long _Z10atomic_maxPU2A3ll(volatile __long *p, __long val)
{
	const __long v = *p;
	if (v < val)	*p = val;
	return v;
}
__ulong _Z10atomic_maxPU2A3mm(volatile __ulong *p, __ulong val)
{
	const __ulong v = *p;
	if (v < val)	*p = val;
	return v;
}

__long _Z10atomic_andPU2A3ll(volatile __long *p, __long val)	{	const __long v = *p;	*p &= val;	return v;	}
__ulong _Z10atomic_andPU2A3mm(volatile __ulong *p, __ulong val)	{	const __ulong v = *p;	*p &= val;	return v;	}

__long _Z9atomic_orPU2A3ll(volatile __long *p, __long val)		{	const __long v = *p;	*p |= val;	return v;	}
__ulong _Z9atomic_orPU2A3mm(volatile __ulong *p, __ulong val)	{	const __ulong v = *p;	*p |= val;	return v;	}

__long _Z10atomic_xorPU2A3ll(volatile __long *p, __long val)	{	const __long v = *p;	*p ^= val;	return v;	}
__ulong _Z10atomic_xorPU2A3mm(volatile __ulong *p, __ulong val)	{	const __ulong v = *p;	*p ^= val;	return v;	}

// atom_* versions (which use non-volatile pointers)
// 32-bit atomics
__int _Z10atom_addPU2A3ii(__int *p, __int val)	{	const __int v = *p;	*p += val;	return v;	}
__uint _Z10atom_addPU2A3jj(__uint *p, __uint val)	{	const __uint v = *p; *p += val;	return v;	}

__int _Z10atom_subPU2A3ii(__int *p, __int val)		{	const __int v = *p;	*p -= val;	return v;	}
__uint _Z10atom_subPU2A3jj(__uint *p, __uint val)	{	const __uint v = *p; *p -= val;	return v;	}

__int _Z11atom_xchgPU2A3ii(__int *p, __int val)		{	const __int v = *p;	*p = val;	return v;	}
__uint _Z11atom_xchgPU2A3jj(__uint *p, __uint val)	{	const __uint v = *p; *p = val;	return v;	}

__int _Z10atom_incPU2A3i(__int *p)		{	return (*p)++;	}
__uint _Z10atom_incPU2A3j(__uint *p)	{	return (*p)++;	}

__int _Z10atom_decPU2A3i(__int *p)		{	return (*p)--;	}
__uint _Z10atom_decPU2A3j(__uint *p)	{	return (*p)--;	}

__int _Z14atom_cmpxchgPU2A3iii(__int *p, __int cmp, __int val)
{
	const __int v = *p;
	if (v == cmp)	*p = val;
	return v;
}
__uint _Z14atom_cmpxchgPU2A3jjj(__uint *p, __uint cmp, __uint val)
{
	const __uint v = *p;
	if (v == cmp)	*p = val;
	return v;
}

__int _Z10atom_minPU2A3ii(__int *p, __int val)
{
	const __int v = *p;
	if (v > val)	*p = val;
	return v;
}
__uint _Z10atom_minPU2A3jj(__uint *p, __uint val)
{
	const __uint v = *p;
	if (v > val)	*p = val;
	return v;
}

__int _Z10atom_maxPU2A3ii(__int *p, __int val)
{
	const __int v = *p;
	if (v < val)	*p = val;
	return v;
}
__uint _Z10atom_maxPU2A3jj(__uint *p, __uint val)
{
	const __uint v = *p;
	if (v < val)	*p = val;
	return v;
}

__int _Z10atom_andPU2A3ii(__int *p, __int val)	{	const __int v = *p;	*p &= val;	return v;	}
__uint _Z10atom_andPU2A3jj(__uint *p, __uint val)	{	const __uint v = *p; *p &= val;	return v;	}

__int _Z9atom_orPU2A3ii(__int *p, __int val)	{	const __int v = *p;	*p |= val;	return v;	}
__uint _Z9atom_orPU2A3jj(__uint *p, __uint val)	{	const __uint v = *p; *p |= val;	return v;	}

__int _Z10atom_xorPU2A3ii(__int *p, __int val)	{	const __int v = *p;	*p ^= val;	return v;	}
__uint _Z10atom_xorPU2A3jj(__uint *p, __uint val)	{	const __uint v = *p; *p ^= val;	return v;	}

// 64-bit atomics
__long _Z10atom_addPU2A3ll(__long *p, __long val)	{	const __long v = *p;	*p += val;	return v;	}
__ulong _Z10atom_addPU2A3mm(__ulong *p, __ulong val)	{	const __ulong v = *p; *p += val;	return v;	}

__long _Z10atom_subPU2A3ll(__long *p, __long val)	{	const __long v = *p;	*p -= val;	return v;	}
__ulong _Z10atom_subPU2A3mm(__ulong *p, __ulong val)	{	const __ulong v = *p; *p -= val;	return v;	}

__long _Z11atom_xchgPU2A3ll(__long *p, __long val)	{	const __long v = *p;	*p = val;	return v;	}
__ulong _Z11atom_xchgPU2A3mm(__ulong *p, __ulong val)	{	const __ulong v = *p; *p = val;	return v;	}

__long _Z10atom_incPU2A3l(__long *p)	{	return (*p)++;	}
__ulong _Z10atom_incPU2A3m(__ulong *p)	{	return (*p)++;	}

__long _Z10atom_decPU2A3l(__long *p)	{	return (*p)--;	}
__ulong _Z10atom_decPU2A3m(__ulong *p)	{	return (*p)--;	}

__long _Z14atom_cmpxchgPU2A3lll(__long *p, __long cmp, __long val)
{
	const __long v = *p;
	if (v == cmp)	*p = val;
	return v;
}
__ulong _Z14atom_cmpxchgPU2A3mmm(__ulong *p, __ulong cmp, __ulong val)
{
	const __ulong v = *p;
	if (v == cmp)	*p = val;
	return v;
}

__long _Z10atom_minPU2A3ll(__long *p, __long val)
{
	const __long v = *p;
	if (v > val)	*p = val;
	return v;
}
__ulong _Z10atom_minPU2A3mm(__ulong *p, __ulong val)
{
	const __ulong v = *p;
	if (v > val)	*p = val;
	return v;
}

__long _Z10atom_maxPU2A3ll(__long *p, __long val)
{
	const __long v = *p;
	if (v < val)	*p = val;
	return v;
}
__ulong _Z10atom_maxPU2A3mm(__ulong *p, __ulong val)
{
	const __ulong v = *p;
	if (v < val)	*p = val;
	return v;
}

__long _Z10atom_andPU2A3ll(__long *p, __long val)	{	const __long v = *p;	*p &= val;	return v;	}
__ulong _Z10atom_andPU2A3mm(__ulong *p, __ulong val)	{	const __ulong v = *p; *p &= val;	return v;	}

__long _Z9atom_orPU2A3ll(__long *p, __long val)	{	const __long v = *p;	*p |= val;	return v;	}
__ulong _Z9atom_orPU2A3mm(__ulong *p, __ulong val)	{	const __ulong v = *p;	*p |= val;	return v;	}

__long _Z10atom_xorPU2A3ll(__long *p, __long val)	{	const __long v = *p;	*p ^= val;	return v;	}
__ulong _Z10atom_xorPU2A3mm(__ulong *p, __ulong val)	{	const __ulong v = *p; *p ^= val;	return v;	}
