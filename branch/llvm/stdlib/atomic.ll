;
;    FreeOCL - a free OpenCL implementation for CPU
;    Copyright (C) 2011  Roland Brochard

;    This program is free software: you can redistribute it and/or modify
;    it under the terms of the GNU Lesser General Public License as published by
;    the Free Software Foundation, either version 3 of the License, or
;    (at your option) any later version.

;    This program is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU Lesser General Public License for more details.

;    You should have received a copy of the GNU Lesser General Public License
;    along with this program.  If not, see <http://www.gnu.org/licenses/>
;
; ModuleID = 'atomic.ll'

; Built-in atomic functions
; 32-bit atomics

define i32 @_Z10atomic_addPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile add i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z10atomic_addPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile add i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z10atomic_subPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile sub i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z10atomic_subPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile sub i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z11atomic_xchgPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile xchg i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z11atomic_xchgPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile xchg i32* %p, i32 %val monotonic
    ret i32 %ret
}
define float @_Z11atomic_xchgPU2A1ff(float* %p, float %val) nounwind {
    %vi = bitcast float %val to i32
    %pi = bitcast float* %p to i32*
    %reti = atomicrmw volatile xchg i32* %pi, i32 %vi monotonic
    %ret = bitcast i32 %reti to float
    ret float %ret
}

define i32 @_Z10atomic_incPU2A1i(i32* %p) nounwind {
    %ret = atomicrmw volatile add i32* %p, i32 1 monotonic
    ret i32 %ret
}
define i32 @_Z10atomic_incPU2A1j(i32* %p) nounwind {
    %ret = atomicrmw volatile add i32* %p, i32 1 monotonic
    ret i32 %ret
}

define i32 @_Z10atomic_decPU2A1i(i32* %p) nounwind {
    %ret = atomicrmw volatile sub i32* %p, i32 1 monotonic
    ret i32 %ret
}
define i32 @_Z10atomic_decPU2A1j(i32* %p) nounwind {
    %ret = atomicrmw volatile sub i32* %p, i32 1 monotonic
    ret i32 %ret
}

define i32 @_Z14atomic_cmpxchgPU2A1iii(i32* %p, i32 %cmp, i32 %val) nounwind {
    %ret = cmpxchg volatile i32* %p, i32 %cmp, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z14atomic_cmpxchgPU2A1jjj(i32* %p, i32 %cmp, i32 %val) nounwind {
    %ret = cmpxchg volatile i32* %p, i32 %cmp, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z10atomic_minPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile min i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z10atomic_minPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile umin i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z10atomic_maxPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile max i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z10atomic_maxPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile umax i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z10atomic_andPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile and i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z10atomic_andPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile and i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z9atomic_orPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile or i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z9atomic_orPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile or i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z10atomic_xorPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile xor i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z10atomic_xorPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw volatile xor i32* %p, i32 %val monotonic
    ret i32 %ret
}

; 64-bit atomics
define i64 @_Z10atomic_addPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile add i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z10atomic_addPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile add i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z10atomic_subPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile sub i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z10atomic_subPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile sub i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z11atomic_xchgPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile xchg i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z11atomic_xchgPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile xchg i64* %p, i64 %val monotonic
    ret i64 %ret
}
define double @_Z11atomic_xchgPU2A1dd(double* %p, double %val) nounwind {
    %vi = bitcast double %val to i64
    %pi = bitcast double* %p to i64*
    %reti = atomicrmw volatile xchg i64* %pi, i64 %vi monotonic
    %ret = bitcast i64 %reti to double
    ret double %ret
}

define i64 @_Z10atomic_incPU2A1l(i64* %p) nounwind {
    %ret = atomicrmw volatile add i64* %p, i64 1 monotonic
    ret i64 %ret
}
define i64 @_Z10atomic_incPU2A1m(i64* %p) nounwind {
    %ret = atomicrmw volatile add i64* %p, i64 1 monotonic
    ret i64 %ret
}

define i64 @_Z10atomic_decPU2A1l(i64* %p) nounwind {
    %ret = atomicrmw volatile sub i64* %p, i64 1 monotonic
    ret i64 %ret
}
define i64 @_Z10atomic_decPU2A1m(i64* %p) nounwind {
    %ret = atomicrmw volatile sub i64* %p, i64 1 monotonic
    ret i64 %ret
}

define i64 @_Z14atomic_cmpxchgPU2A1lll(i64* %p, i64 %cmp, i64 %val) nounwind {
    %ret = cmpxchg volatile i64* %p, i64 %cmp, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z14atomic_cmpxchgPU2A1mmm(i64* %p, i64 %cmp, i64 %val) nounwind {
    %ret = cmpxchg volatile i64* %p, i64 %cmp, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z10atomic_minPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile min i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z10atomic_minPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile umin i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z10atomic_maxPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile max i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z10atomic_maxPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile umax i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z10atomic_andPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile and i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z10atomic_andPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile and i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z9atomic_orPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile or i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z9atomic_orPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile or i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z10atomic_xorPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile xor i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z10atomic_xorPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw volatile xor i64* %p, i64 %val monotonic
    ret i64 %ret
}

; atom_* versions (which use non-volatile pointers)
; 32-bit atomics
define i32 @_Z8atom_addPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw add i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z8atom_addPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw add i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z8atom_subPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw sub i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z8atom_subPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw sub i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z9atom_xchgPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw xchg i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z9atom_xchgPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw xchg i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z8atom_incPU2A1i(i32* %p) nounwind {
    %ret = atomicrmw add i32* %p, i32 1 monotonic
    ret i32 %ret
}
define i32 @_Z8atom_incPU2A1j(i32* %p) nounwind {
    %ret = atomicrmw add i32* %p, i32 1 monotonic
    ret i32 %ret
}

define i32 @_Z8atom_decPU2A1i(i32* %p) nounwind {
    %ret = atomicrmw sub i32* %p, i32 1 monotonic
    ret i32 %ret
}
define i32 @_Z8atom_decPU2A1j(i32* %p) nounwind {
    %ret = atomicrmw sub i32* %p, i32 1 monotonic
    ret i32 %ret
}

define i32 @_Z12atom_cmpxchgPU2A1iii(i32* %p, i32 %cmp, i32 %val) nounwind {
    %ret = cmpxchg i32* %p, i32 %cmp, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z12atom_cmpxchgPU2A1jjj(i32* %p, i32 %cmp, i32 %val) nounwind {
    %ret = cmpxchg i32* %p, i32 %cmp, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z8atom_minPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw min i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z8atom_minPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw umin i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z8atom_maxPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw max i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z8atom_maxPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw umax i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z8atom_andPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw and i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z8atom_andPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw and i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z7atom_orPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw or i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z7atom_orPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw or i32* %p, i32 %val monotonic
    ret i32 %ret
}

define i32 @_Z8atom_xorPU2A1ii(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw xor i32* %p, i32 %val monotonic
    ret i32 %ret
}
define i32 @_Z8atom_xorPU2A1jj(i32* %p, i32 %val) nounwind {
    %ret = atomicrmw xor i32* %p, i32 %val monotonic
    ret i32 %ret
}

; 64-bit atomics
define i64 @_Z8atom_addPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw add i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z8atom_addPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw add i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z8atom_subPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw sub i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z8atom_subPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw sub i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z9atom_xchgPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw xchg i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z9atom_xchgPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw xchg i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z8atom_incPU2A1l(i64* %p) nounwind {
    %ret = atomicrmw add i64* %p, i64 1 monotonic
    ret i64 %ret
}
define i64 @_Z8atom_incPU2A1m(i64* %p) nounwind {
    %ret = atomicrmw add i64* %p, i64 1 monotonic
    ret i64 %ret
}

define i64 @_Z8atom_decPU2A1l(i64* %p) nounwind {
    %ret = atomicrmw sub i64* %p, i64 1 monotonic
    ret i64 %ret
}
define i64 @_Z8atom_decPU2A1m(i64* %p) nounwind {
    %ret = atomicrmw sub i64* %p, i64 1 monotonic
    ret i64 %ret
}

define i64 @_Z12atom_cmpxchgPU2A1lll(i64* %p, i64 %cmp, i64 %val) nounwind {
    %ret = cmpxchg i64* %p, i64 %cmp, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z12atom_cmpxchgPU2A1mmm(i64* %p, i64 %cmp, i64 %val) nounwind {
    %ret = cmpxchg i64* %p, i64 %cmp, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z8atom_minPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw min i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z8atom_minPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw min i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z8atom_maxPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw max i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z8atom_maxPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw max i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z8atom_andPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw and i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z8atom_andPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw and i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z7atom_orPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw or i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z7atom_orPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw or i64* %p, i64 %val monotonic
    ret i64 %ret
}

define i64 @_Z8atom_xorPU2A1ll(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw xor i64* %p, i64 %val monotonic
    ret i64 %ret
}
define i64 @_Z8atom_xorPU2A1mm(i64* %p, i64 %val) nounwind {
    %ret = atomicrmw xor i64* %p, i64 %val monotonic
    ret i64 %ret
}
