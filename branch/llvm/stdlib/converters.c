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

__char _Z12convert_charc(const __char x)
{
	return x;
}
__char _Z16convert_char_satc(const __char x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__char _Z12convert_charh(const __uchar x)
{
	return x;
}
__char _Z16convert_char_sath(const __uchar x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__char _Z12convert_chars(const __short x)
{
	return x;
}
__char _Z16convert_char_sats(const __short x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__char _Z12convert_chart(const __ushort x)
{
	return x;
}
__char _Z16convert_char_satt(const __ushort x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__char _Z12convert_chari(const __int x)
{
	return x;
}
__char _Z16convert_char_sati(const __int x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__char _Z12convert_charj(const __uint x)
{
	return x;
}
__char _Z16convert_char_satj(const __uint x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__char _Z12convert_charl(const __long x)
{
	return x;
}
__char _Z16convert_char_satl(const __long x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__char _Z12convert_charm(const __ulong x)
{
	return x;
}
__char _Z16convert_char_satm(const __ulong x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__char _Z12convert_charf(const __float x)
{
	return x;
}
__char _Z16convert_char_satf(const __float x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__char _Z12convert_chard(const __double x)
{
	return x;
}
__char _Z16convert_char_satd(const __double x)
{
	return x < -128 ? -128 : x > 127 ? 127 : x ;
}
__uchar _Z13convert_ucharc(const __char x)
{
	return x;
}
__uchar _Z17convert_uchar_satc(const __char x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__uchar _Z13convert_ucharh(const __uchar x)
{
	return x;
}
__uchar _Z17convert_uchar_sath(const __uchar x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__uchar _Z13convert_uchars(const __short x)
{
	return x;
}
__uchar _Z17convert_uchar_sats(const __short x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__uchar _Z13convert_uchart(const __ushort x)
{
	return x;
}
__uchar _Z17convert_uchar_satt(const __ushort x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__uchar _Z13convert_uchari(const __int x)
{
	return x;
}
__uchar _Z17convert_uchar_sati(const __int x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__uchar _Z13convert_ucharj(const __uint x)
{
	return x;
}
__uchar _Z17convert_uchar_satj(const __uint x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__uchar _Z13convert_ucharl(const __long x)
{
	return x;
}
__uchar _Z17convert_uchar_satl(const __long x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__uchar _Z13convert_ucharm(const __ulong x)
{
	return x;
}
__uchar _Z17convert_uchar_satm(const __ulong x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__uchar _Z13convert_ucharf(const __float x)
{
	return x;
}
__uchar _Z17convert_uchar_satf(const __float x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__uchar _Z13convert_uchard(const __double x)
{
	return x;
}
__uchar _Z17convert_uchar_satd(const __double x)
{
	return x < 0 ? 0 : x > 255 ? 255 : x ;
}
__short _Z13convert_shortc(const __char x)
{
	return x;
}
__short _Z17convert_short_satc(const __char x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__short _Z13convert_shorth(const __uchar x)
{
	return x;
}
__short _Z17convert_short_sath(const __uchar x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__short _Z13convert_shorts(const __short x)
{
	return x;
}
__short _Z17convert_short_sats(const __short x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__short _Z13convert_shortt(const __ushort x)
{
	return x;
}
__short _Z17convert_short_satt(const __ushort x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__short _Z13convert_shorti(const __int x)
{
	return x;
}
__short _Z17convert_short_sati(const __int x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__short _Z13convert_shortj(const __uint x)
{
	return x;
}
__short _Z17convert_short_satj(const __uint x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__short _Z13convert_shortl(const __long x)
{
	return x;
}
__short _Z17convert_short_satl(const __long x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__short _Z13convert_shortm(const __ulong x)
{
	return x;
}
__short _Z17convert_short_satm(const __ulong x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__short _Z13convert_shortf(const __float x)
{
	return x;
}
__short _Z17convert_short_satf(const __float x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__short _Z13convert_shortd(const __double x)
{
	return x;
}
__short _Z17convert_short_satd(const __double x)
{
	return x < -32768 ? -32768 : x > 32767 ? 32767 : x ;
}
__ushort _Z14convert_ushortc(const __char x)
{
	return x;
}
__ushort _Z18convert_ushort_satc(const __char x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__ushort _Z14convert_ushorth(const __uchar x)
{
	return x;
}
__ushort _Z18convert_ushort_sath(const __uchar x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__ushort _Z14convert_ushorts(const __short x)
{
	return x;
}
__ushort _Z18convert_ushort_sats(const __short x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__ushort _Z14convert_ushortt(const __ushort x)
{
	return x;
}
__ushort _Z18convert_ushort_satt(const __ushort x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__ushort _Z14convert_ushorti(const __int x)
{
	return x;
}
__ushort _Z18convert_ushort_sati(const __int x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__ushort _Z14convert_ushortj(const __uint x)
{
	return x;
}
__ushort _Z18convert_ushort_satj(const __uint x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__ushort _Z14convert_ushortl(const __long x)
{
	return x;
}
__ushort _Z18convert_ushort_satl(const __long x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__ushort _Z14convert_ushortm(const __ulong x)
{
	return x;
}
__ushort _Z18convert_ushort_satm(const __ulong x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__ushort _Z14convert_ushortf(const __float x)
{
	return x;
}
__ushort _Z18convert_ushort_satf(const __float x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__ushort _Z14convert_ushortd(const __double x)
{
	return x;
}
__ushort _Z18convert_ushort_satd(const __double x)
{
	return x < 0 ? 0 : x > 65535 ? 65535 : x ;
}
__int _Z11convert_intc(const __char x)
{
	return x;
}
__int _Z15convert_int_satc(const __char x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__int _Z11convert_inth(const __uchar x)
{
	return x;
}
__int _Z15convert_int_sath(const __uchar x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__int _Z11convert_ints(const __short x)
{
	return x;
}
__int _Z15convert_int_sats(const __short x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__int _Z11convert_intt(const __ushort x)
{
	return x;
}
__int _Z15convert_int_satt(const __ushort x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__int _Z11convert_inti(const __int x)
{
	return x;
}
__int _Z15convert_int_sati(const __int x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__int _Z11convert_intj(const __uint x)
{
	return x;
}
__int _Z15convert_int_satj(const __uint x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__int _Z11convert_intl(const __long x)
{
	return x;
}
__int _Z15convert_int_satl(const __long x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__int _Z11convert_intm(const __ulong x)
{
	return x;
}
__int _Z15convert_int_satm(const __ulong x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__int _Z11convert_intf(const __float x)
{
	return x;
}
__int _Z15convert_int_satf(const __float x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__int _Z11convert_intd(const __double x)
{
	return x;
}
__int _Z15convert_int_satd(const __double x)
{
	return x < -0x10000000 ? -0x10000000 : x > 0x7FFFFFFF ? 0x7FFFFFFF : x ;
}
__uint _Z12convert_uintc(const __char x)
{
	return x;
}
__uint _Z16convert_uint_satc(const __char x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__uint _Z12convert_uinth(const __uchar x)
{
	return x;
}
__uint _Z16convert_uint_sath(const __uchar x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__uint _Z12convert_uints(const __short x)
{
	return x;
}
__uint _Z16convert_uint_sats(const __short x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__uint _Z12convert_uintt(const __ushort x)
{
	return x;
}
__uint _Z16convert_uint_satt(const __ushort x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__uint _Z12convert_uinti(const __int x)
{
	return x;
}
__uint _Z16convert_uint_sati(const __int x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__uint _Z12convert_uintj(const __uint x)
{
	return x;
}
__uint _Z16convert_uint_satj(const __uint x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__uint _Z12convert_uintl(const __long x)
{
	return x;
}
__uint _Z16convert_uint_satl(const __long x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__uint _Z12convert_uintm(const __ulong x)
{
	return x;
}
__uint _Z16convert_uint_satm(const __ulong x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__uint _Z12convert_uintf(const __float x)
{
	return x;
}
__uint _Z16convert_uint_satf(const __float x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__uint _Z12convert_uintd(const __double x)
{
	return x;
}
__uint _Z16convert_uint_satd(const __double x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFU ? 0xFFFFFFFFU : x ;
}
__long _Z12convert_longc(const __char x)
{
	return x;
}
__long _Z16convert_long_satc(const __char x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__long _Z12convert_longh(const __uchar x)
{
	return x;
}
__long _Z16convert_long_sath(const __uchar x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__long _Z12convert_longs(const __short x)
{
	return x;
}
__long _Z16convert_long_sats(const __short x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__long _Z12convert_longt(const __ushort x)
{
	return x;
}
__long _Z16convert_long_satt(const __ushort x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__long _Z12convert_longi(const __int x)
{
	return x;
}
__long _Z16convert_long_sati(const __int x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__long _Z12convert_longj(const __uint x)
{
	return x;
}
__long _Z16convert_long_satj(const __uint x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__long _Z12convert_longl(const __long x)
{
	return x;
}
__long _Z16convert_long_satl(const __long x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__long _Z12convert_longm(const __ulong x)
{
	return x;
}
__long _Z16convert_long_satm(const __ulong x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__long _Z12convert_longf(const __float x)
{
	return x;
}
__long _Z16convert_long_satf(const __float x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__long _Z12convert_longd(const __double x)
{
	return x;
}
__long _Z16convert_long_satd(const __double x)
{
	return x < -0x1000000000000000L ? -0x1000000000000000L : x > 0x7FFFFFFFFFFFFFFFL ? 0x7FFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongc(const __char x)
{
	return x;
}
__ulong _Z17convert_ulong_satc(const __char x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongh(const __uchar x)
{
	return x;
}
__ulong _Z17convert_ulong_sath(const __uchar x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongs(const __short x)
{
	return x;
}
__ulong _Z17convert_ulong_sats(const __short x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongt(const __ushort x)
{
	return x;
}
__ulong _Z17convert_ulong_satt(const __ushort x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongi(const __int x)
{
	return x;
}
__ulong _Z17convert_ulong_sati(const __int x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongj(const __uint x)
{
	return x;
}
__ulong _Z17convert_ulong_satj(const __uint x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongl(const __long x)
{
	return x;
}
__ulong _Z17convert_ulong_satl(const __long x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongm(const __ulong x)
{
	return x;
}
__ulong _Z17convert_ulong_satm(const __ulong x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongf(const __float x)
{
	return x;
}
__ulong _Z17convert_ulong_satf(const __float x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__ulong _Z13convert_ulongd(const __double x)
{
	return x;
}
__ulong _Z17convert_ulong_satd(const __double x)
{
	return x < 0 ? 0 : x > 0xFFFFFFFFFFFFFFFFL ? 0xFFFFFFFFFFFFFFFFL : x ;
}
__float _Z13convert_floatc(const __char x)
{
	return x;
}
__float _Z17convert_float_satc(const __char x)
{
	return x;
}
__float _Z13convert_floath(const __uchar x)
{
	return x;
}
__float _Z17convert_float_sath(const __uchar x)
{
	return x;
}
__float _Z13convert_floats(const __short x)
{
	return x;
}
__float _Z17convert_float_sats(const __short x)
{
	return x;
}
__float _Z13convert_floatt(const __ushort x)
{
	return x;
}
__float _Z17convert_float_satt(const __ushort x)
{
	return x;
}
__float _Z13convert_floati(const __int x)
{
	return x;
}
__float _Z17convert_float_sati(const __int x)
{
	return x;
}
__float _Z13convert_floatj(const __uint x)
{
	return x;
}
__float _Z17convert_float_satj(const __uint x)
{
	return x;
}
__float _Z13convert_floatl(const __long x)
{
	return x;
}
__float _Z17convert_float_satl(const __long x)
{
	return x;
}
__float _Z13convert_floatm(const __ulong x)
{
	return x;
}
__float _Z17convert_float_satm(const __ulong x)
{
	return x;
}
__float _Z13convert_floatf(const __float x)
{
	return x;
}
__float _Z17convert_float_satf(const __float x)
{
	return x;
}
__float _Z13convert_floatd(const __double x)
{
	return x;
}
__float _Z17convert_float_satd(const __double x)
{
	return x;
}
__double _Z14convert_doublec(const __char x)
{
	return x;
}
__double _Z18convert_double_satc(const __char x)
{
	return x;
}
__double _Z14convert_doubleh(const __uchar x)
{
	return x;
}
__double _Z18convert_double_sath(const __uchar x)
{
	return x;
}
__double _Z14convert_doubles(const __short x)
{
	return x;
}
__double _Z18convert_double_sats(const __short x)
{
	return x;
}
__double _Z14convert_doublet(const __ushort x)
{
	return x;
}
__double _Z18convert_double_satt(const __ushort x)
{
	return x;
}
__double _Z14convert_doublei(const __int x)
{
	return x;
}
__double _Z18convert_double_sati(const __int x)
{
	return x;
}
__double _Z14convert_doublej(const __uint x)
{
	return x;
}
__double _Z18convert_double_satj(const __uint x)
{
	return x;
}
__double _Z14convert_doublel(const __long x)
{
	return x;
}
__double _Z18convert_double_satl(const __long x)
{
	return x;
}
__double _Z14convert_doublem(const __ulong x)
{
	return x;
}
__double _Z18convert_double_satm(const __ulong x)
{
	return x;
}
__double _Z14convert_doublef(const __float x)
{
	return x;
}
__double _Z18convert_double_satf(const __float x)
{
	return x;
}
__double _Z14convert_doubled(const __double x)
{
	return x;
}
__double _Z18convert_double_satd(const __double x)
{
	return x;
}

__float2 _test(const __float2 x)
{
	__float2 r = { 0, 1e20 };
	return x;
}

/*template<class T> struct __type_range;
template<> struct __type_range<__char>		{	enum { __min = -128, __max = 127 };	};
template<> struct __type_range<__uchar>		{	enum { __min = 0, __max = 255 };	};
template<> struct __type_range<__short>		{	enum { __min = -32768, __max = 32767 };	};
template<> struct __type_range<__ushort>	{	enum { __min = 0, __max = 65536 };	};
template<> struct __type_range<__int>		{	enum { __min = -0x10000000, __max = 0x7FFFFFFF };	};
template<> struct __type_range<__uint>		{	enum { __min = 0, __max = 0xFFFFFFFFU };	};
template<> struct __type_range<__long>		{	enum { __min = -0x1000000000000000L, __max = 0x7FFFFFFFFFFFFFFFL };	};
template<> struct __type_range<__ulong>		{	enum { __min = 0, __max = 0xFFFFFFFFFFFFFFFFLU };	};

// Built-in type conversion functions
#define CONVERTER(X)\
template<class Scalar>\
static inline typename __if< !__match<typename __scalar<Scalar>::type, __##X>::value, __##X>::type convert_##X(const Scalar &v)	{	return (__##X)v;	}\
template<class Scalar>\
static inline const typename __if< __match<Scalar, __##X>::value, __##X>::type &convert_##X(const Scalar &v)	{	return v;	}

#define CONVERTER_SAT(X)\
template<class Scalar>\
static inline typename __if< !__match<typename __scalar<Scalar>::type, __##X>::value, __##X>::type convert_##X##_sat(const Scalar &v)\
{\
	return (__##X)(v > __type_range<__##X>::__max\
			   ? __type_range<__##X>::__max\
			   : v < __type_range<__##X>::__min\
				 ? __type_range<__##X>::__min\
				 : v);\
}\
template<class Scalar>\
static inline const typename __if< __match<Scalar, __##X>::value , __##X>::type &convert_##X##_sat(const Scalar &v)	{	return v;	}

CONVERTER(char)
CONVERTER(uchar)
CONVERTER(short)
CONVERTER(ushort)
CONVERTER(int)
CONVERTER(uint)
CONVERTER(long)
CONVERTER(ulong)
CONVERTER(float)
CONVERTER(double)

CONVERTER_SAT(char)
CONVERTER_SAT(uchar)
CONVERTER_SAT(short)
CONVERTER_SAT(ushort)
CONVERTER_SAT(int)
CONVERTER_SAT(uint)
CONVERTER_SAT(long)
CONVERTER_SAT(ulong)

#undef CONVERTER
#undef CONVERTER_SAT

#define CONVERTER(X, N)\
template<class V>\
	static inline typename __if<__vector<V>::components == N && !__match<__##X##N, V>::value, __##X##N>::type convert_##X##N(const V &v)\
{\
	__##X##N ret;\
	for(size_t i = 0 ; i < N ; ++i)\
		ret.v[i] = (__##X)v.v[i];\
	return ret;\
}\
template<class V>\
	static inline const typename __if<__match<__##X##N, V>::value, __##X##N>::type &convert_##X##N(const V &v)	{	return v;	}
#define CONVERTER_SAT(X, N)\
template<class V>\
	static inline typename __if<__vector<V>::components == N && !__match<__##X##N, V>::value, __##X##N>::type convert_##X##N##_sat(const V &v)\
{\
	__##X##N ret;\
	for(size_t i = 0 ; i < N ; ++i)\
		ret.v[i] = convert_##X##_sat(v.v[i]);\
	return ret;\
}\
template<class V>\
	static inline const typename __if<__match<__##X##N, V>::value, __##X##N>::type &convert_##X##N##_sat(const V &v)	{	return v;	}

#define CONVERTER_VECTORS(X)\
	CONVERTER(X, 2)\
	CONVERTER(X, 3)\
	CONVERTER(X, 4)\
	CONVERTER(X, 8)\
	CONVERTER(X, 16)
#define CONVERTER_VECTORS_SAT(X)\
	CONVERTER_SAT(X, 2)\
	CONVERTER_SAT(X, 3)\
	CONVERTER_SAT(X, 4)\
	CONVERTER_SAT(X, 8)\
	CONVERTER_SAT(X, 16)

CONVERTER_VECTORS(char)
CONVERTER_VECTORS(uchar)
CONVERTER_VECTORS(short)
CONVERTER_VECTORS(ushort)
CONVERTER_VECTORS(int)
CONVERTER_VECTORS(uint)
CONVERTER_VECTORS(long)
CONVERTER_VECTORS(ulong)
CONVERTER_VECTORS(float)
CONVERTER_VECTORS(double)

CONVERTER_VECTORS_SAT(char)
CONVERTER_VECTORS_SAT(uchar)
CONVERTER_VECTORS_SAT(short)
CONVERTER_VECTORS_SAT(ushort)
CONVERTER_VECTORS_SAT(int)
CONVERTER_VECTORS_SAT(uint)
CONVERTER_VECTORS_SAT(long)
CONVERTER_VECTORS_SAT(ulong)

#undef CONVERTER_VECTORS
#undef CONVERTER
#undef CONVERTER_VECTORS_SAT
#undef CONVERTER_SAT

#define AS_TYPE(Out)\
template<typename In>	static inline const __##Out &as_##Out(const In &t)	{	return reinterpret_cast<const __##Out&>(t);	}\
template<typename In>	static inline __##Out &as_##Out(In &t)	{	return reinterpret_cast<__##Out&>(t);	}

#define AS_BASE_TYPE(Out)\
AS_TYPE(Out)\
AS_TYPE(Out##2)\
AS_TYPE(Out##3)\
AS_TYPE(Out##4)\
AS_TYPE(Out##8)\
AS_TYPE(Out##16)

AS_BASE_TYPE(char)
AS_BASE_TYPE(short)
AS_BASE_TYPE(int)
AS_BASE_TYPE(long)
AS_BASE_TYPE(uchar)
AS_BASE_TYPE(ushort)
AS_BASE_TYPE(uint)
AS_BASE_TYPE(ulong)
AS_BASE_TYPE(float)
AS_BASE_TYPE(double)
AS_TYPE(size_t)

#undef AS_TYPE
#undef AS_BASE_TYPE*/
