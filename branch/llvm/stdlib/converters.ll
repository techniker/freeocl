; ModuleID = 'converters.ll'

define <2 x i8> @_Z18convert_char2u2v2c(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 -128, i8 -128>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 -128, i8 -128>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 127, i8 127>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 127, i8 127>, <2 x i8> %sel0
    ret <2 x i8> %sel1
}
define <2 x i8> @_Z18convert_char2u2v2h(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 -128, i8 -128>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 -128, i8 -128>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 127, i8 127>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 127, i8 127>, <2 x i8> %sel0
    ret <2 x i8> %sel1
}
define <2 x i8> @_Z18convert_char2u2v2s(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 -128, i16 -128>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 -128, i16 -128>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 127, i16 127>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 127, i16 127>, <2 x i16> %sel0
    %ret = trunc <2 x i16> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z18convert_char2u2v2t(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 -128, i16 -128>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 -128, i16 -128>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 127, i16 127>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 127, i16 127>, <2 x i16> %sel0
    %ret = trunc <2 x i16> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z18convert_char2u2v2i(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 -128, i32 -128>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 -128, i32 -128>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 127, i32 127>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 127, i32 127>, <2 x i32> %sel0
    %ret = trunc <2 x i32> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z18convert_char2u2v2j(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 -128, i32 -128>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 -128, i32 -128>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 127, i32 127>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 127, i32 127>, <2 x i32> %sel0
    %ret = trunc <2 x i32> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z18convert_char2u2v2l(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 -128, i64 -128>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 -128, i64 -128>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 127, i64 127>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 127, i64 127>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z18convert_char2u2v2m(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 -128, i64 -128>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 -128, i64 -128>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 127, i64 127>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 127, i64 127>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z18convert_char2u2v2f(<2 x float> %x) nounwind {
    %cmp = fcmp olt <2 x float> %x, <float 0xc060000000000000, float 0xc060000000000000>
    %sel0 = select <2 x i1> %cmp, <2 x float> <float 0xc060000000000000, float 0xc060000000000000>, <2 x float> %x
    %cmp2 = fcmp ogt <2 x float> %x, <float 0x405fc00000000000, float 0x405fc00000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x float> <float 0x405fc00000000000, float 0x405fc00000000000>, <2 x float> %sel0
    %ret = fptosi <2 x float> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z18convert_char2u2v2d(<2 x double> %x) nounwind {
    %cmp = fcmp olt <2 x double> %x, <double 0xc060000000000000, double 0xc060000000000000>
    %sel0 = select <2 x i1> %cmp, <2 x double> <double 0xc060000000000000, double 0xc060000000000000>, <2 x double> %x
    %cmp2 = fcmp ogt <2 x double> %x, <double 0x405fc00000000000, double 0x405fc00000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x double> <double 0x405fc00000000000, double 0x405fc00000000000>, <2 x double> %sel0
    %ret = fptosi <2 x double> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z19convert_uchar2u2v2c(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 0, i8 0>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 0, i8 0>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 255, i8 255>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 255, i8 255>, <2 x i8> %sel0
    ret <2 x i8> %sel1
}
define <2 x i8> @_Z19convert_uchar2u2v2h(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 0, i8 0>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 0, i8 0>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 255, i8 255>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 255, i8 255>, <2 x i8> %sel0
    ret <2 x i8> %sel1
}
define <2 x i8> @_Z19convert_uchar2u2v2s(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 0, i16 0>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 0, i16 0>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 255, i16 255>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 255, i16 255>, <2 x i16> %sel0
    %ret = trunc <2 x i16> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z19convert_uchar2u2v2t(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 0, i16 0>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 0, i16 0>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 255, i16 255>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 255, i16 255>, <2 x i16> %sel0
    %ret = trunc <2 x i16> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z19convert_uchar2u2v2i(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 0, i32 0>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 0, i32 0>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 255, i32 255>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 255, i32 255>, <2 x i32> %sel0
    %ret = trunc <2 x i32> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z19convert_uchar2u2v2j(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 0, i32 0>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 0, i32 0>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 255, i32 255>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 255, i32 255>, <2 x i32> %sel0
    %ret = trunc <2 x i32> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z19convert_uchar2u2v2l(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 0, i64 0>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 0, i64 0>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 255, i64 255>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 255, i64 255>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z19convert_uchar2u2v2m(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 0, i64 0>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 0, i64 0>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 255, i64 255>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 255, i64 255>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z19convert_uchar2u2v2f(<2 x float> %x) nounwind {
    %cmp = fcmp olt <2 x float> %x, <float 0.0, float 0.0>
    %sel0 = select <2 x i1> %cmp, <2 x float> <float 0.0, float 0.0>, <2 x float> %x
    %cmp2 = fcmp ogt <2 x float> %x, <float 0x406fe00000000000, float 0x406fe00000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x float> <float 0x406fe00000000000, float 0x406fe00000000000>, <2 x float> %sel0
    %ret = fptosi <2 x float> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i8> @_Z19convert_uchar2u2v2d(<2 x double> %x) nounwind {
    %cmp = fcmp olt <2 x double> %x, <double 0.0, double 0.0>
    %sel0 = select <2 x i1> %cmp, <2 x double> <double 0.0, double 0.0>, <2 x double> %x
    %cmp2 = fcmp ogt <2 x double> %x, <double 0x406fe00000000000, double 0x406fe00000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x double> <double 0x406fe00000000000, double 0x406fe00000000000>, <2 x double> %sel0
    %ret = fptosi <2 x double> %sel1 to <2 x i8>
    ret <2 x i8> %ret
}
define <2 x i16> @_Z19convert_short2u2v2c(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 -32768, i8 -32768>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 -32768, i8 -32768>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 32767, i8 32767>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 32767, i8 32767>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z19convert_short2u2v2h(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 -32768, i8 -32768>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 -32768, i8 -32768>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 32767, i8 32767>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 32767, i8 32767>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z19convert_short2u2v2s(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 -32768, i16 -32768>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 -32768, i16 -32768>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 32767, i16 32767>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 32767, i16 32767>, <2 x i16> %sel0
    ret <2 x i16> %sel1
}
define <2 x i16> @_Z19convert_short2u2v2t(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 -32768, i16 -32768>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 -32768, i16 -32768>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 32767, i16 32767>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 32767, i16 32767>, <2 x i16> %sel0
    ret <2 x i16> %sel1
}
define <2 x i16> @_Z19convert_short2u2v2i(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 -32768, i32 -32768>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 -32768, i32 -32768>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 32767, i32 32767>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 32767, i32 32767>, <2 x i32> %sel0
    %ret = trunc <2 x i32> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z19convert_short2u2v2j(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 -32768, i32 -32768>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 -32768, i32 -32768>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 32767, i32 32767>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 32767, i32 32767>, <2 x i32> %sel0
    %ret = trunc <2 x i32> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z19convert_short2u2v2l(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 -32768, i64 -32768>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 -32768, i64 -32768>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 32767, i64 32767>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 32767, i64 32767>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z19convert_short2u2v2m(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 -32768, i64 -32768>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 -32768, i64 -32768>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 32767, i64 32767>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 32767, i64 32767>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z19convert_short2u2v2f(<2 x float> %x) nounwind {
    %cmp = fcmp olt <2 x float> %x, <float 0xc0e0000000000000, float 0xc0e0000000000000>
    %sel0 = select <2 x i1> %cmp, <2 x float> <float 0xc0e0000000000000, float 0xc0e0000000000000>, <2 x float> %x
    %cmp2 = fcmp ogt <2 x float> %x, <float 0x40dfffc000000000, float 0x40dfffc000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x float> <float 0x40dfffc000000000, float 0x40dfffc000000000>, <2 x float> %sel0
    %ret = fptosi <2 x float> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z19convert_short2u2v2d(<2 x double> %x) nounwind {
    %cmp = fcmp olt <2 x double> %x, <double 0xc0e0000000000000, double 0xc0e0000000000000>
    %sel0 = select <2 x i1> %cmp, <2 x double> <double 0xc0e0000000000000, double 0xc0e0000000000000>, <2 x double> %x
    %cmp2 = fcmp ogt <2 x double> %x, <double 0x40dfffc000000000, double 0x40dfffc000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x double> <double 0x40dfffc000000000, double 0x40dfffc000000000>, <2 x double> %sel0
    %ret = fptosi <2 x double> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z20convert_ushort2u2v2c(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 0, i8 0>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 0, i8 0>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 65535, i8 65535>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 65535, i8 65535>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z20convert_ushort2u2v2h(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 0, i8 0>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 0, i8 0>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 65535, i8 65535>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 65535, i8 65535>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z20convert_ushort2u2v2s(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 0, i16 0>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 0, i16 0>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 65535, i16 65535>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 65535, i16 65535>, <2 x i16> %sel0
    ret <2 x i16> %sel1
}
define <2 x i16> @_Z20convert_ushort2u2v2t(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 0, i16 0>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 0, i16 0>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 65535, i16 65535>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 65535, i16 65535>, <2 x i16> %sel0
    ret <2 x i16> %sel1
}
define <2 x i16> @_Z20convert_ushort2u2v2i(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 0, i32 0>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 0, i32 0>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 65535, i32 65535>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 65535, i32 65535>, <2 x i32> %sel0
    %ret = trunc <2 x i32> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z20convert_ushort2u2v2j(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 0, i32 0>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 0, i32 0>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 65535, i32 65535>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 65535, i32 65535>, <2 x i32> %sel0
    %ret = trunc <2 x i32> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z20convert_ushort2u2v2l(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 0, i64 0>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 0, i64 0>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 65535, i64 65535>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 65535, i64 65535>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z20convert_ushort2u2v2m(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 0, i64 0>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 0, i64 0>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 65535, i64 65535>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 65535, i64 65535>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z20convert_ushort2u2v2f(<2 x float> %x) nounwind {
    %cmp = fcmp olt <2 x float> %x, <float 0.0, float 0.0>
    %sel0 = select <2 x i1> %cmp, <2 x float> <float 0.0, float 0.0>, <2 x float> %x
    %cmp2 = fcmp ogt <2 x float> %x, <float 0x40efffe000000000, float 0x40efffe000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x float> <float 0x40efffe000000000, float 0x40efffe000000000>, <2 x float> %sel0
    %ret = fptosi <2 x float> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i16> @_Z20convert_ushort2u2v2d(<2 x double> %x) nounwind {
    %cmp = fcmp olt <2 x double> %x, <double 0.0, double 0.0>
    %sel0 = select <2 x i1> %cmp, <2 x double> <double 0.0, double 0.0>, <2 x double> %x
    %cmp2 = fcmp ogt <2 x double> %x, <double 0x40efffe000000000, double 0x40efffe000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x double> <double 0x40efffe000000000, double 0x40efffe000000000>, <2 x double> %sel0
    %ret = fptosi <2 x double> %sel1 to <2 x i16>
    ret <2 x i16> %ret
}
define <2 x i32> @_Z17convert_int2u2v2c(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 -268435456, i8 -268435456>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 -268435456, i8 -268435456>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 2147483647, i8 2147483647>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 2147483647, i8 2147483647>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z17convert_int2u2v2h(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 -268435456, i8 -268435456>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 -268435456, i8 -268435456>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 2147483647, i8 2147483647>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 2147483647, i8 2147483647>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z17convert_int2u2v2s(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 -268435456, i16 -268435456>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 -268435456, i16 -268435456>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 2147483647, i16 2147483647>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 2147483647, i16 2147483647>, <2 x i16> %sel0
    %ret = sext <2 x i16> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z17convert_int2u2v2t(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 -268435456, i16 -268435456>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 -268435456, i16 -268435456>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 2147483647, i16 2147483647>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 2147483647, i16 2147483647>, <2 x i16> %sel0
    %ret = sext <2 x i16> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z17convert_int2u2v2i(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 -268435456, i32 -268435456>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 -268435456, i32 -268435456>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 2147483647, i32 2147483647>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 2147483647, i32 2147483647>, <2 x i32> %sel0
    ret <2 x i32> %sel1
}
define <2 x i32> @_Z17convert_int2u2v2j(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 -268435456, i32 -268435456>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 -268435456, i32 -268435456>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 2147483647, i32 2147483647>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 2147483647, i32 2147483647>, <2 x i32> %sel0
    ret <2 x i32> %sel1
}
define <2 x i32> @_Z17convert_int2u2v2l(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 -268435456, i64 -268435456>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 -268435456, i64 -268435456>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 2147483647, i64 2147483647>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 2147483647, i64 2147483647>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z17convert_int2u2v2m(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 -268435456, i64 -268435456>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 -268435456, i64 -268435456>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 2147483647, i64 2147483647>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 2147483647, i64 2147483647>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z17convert_int2u2v2f(<2 x float> %x) nounwind {
    %cmp = fcmp olt <2 x float> %x, <float 0xc1b0000000000000, float 0xc1b0000000000000>
    %sel0 = select <2 x i1> %cmp, <2 x float> <float 0xc1b0000000000000, float 0xc1b0000000000000>, <2 x float> %x
    %cmp2 = fcmp ogt <2 x float> %x, <float 0x41e0000000000000, float 0x41e0000000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x float> <float 0x41e0000000000000, float 0x41e0000000000000>, <2 x float> %sel0
    %ret = fptosi <2 x float> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z17convert_int2u2v2d(<2 x double> %x) nounwind {
    %cmp = fcmp olt <2 x double> %x, <double 0xc1b0000000000000, double 0xc1b0000000000000>
    %sel0 = select <2 x i1> %cmp, <2 x double> <double 0xc1b0000000000000, double 0xc1b0000000000000>, <2 x double> %x
    %cmp2 = fcmp ogt <2 x double> %x, <double 0x41dfffffffc00000, double 0x41dfffffffc00000>
    %sel1 = select <2 x i1> %cmp2, <2 x double> <double 0x41dfffffffc00000, double 0x41dfffffffc00000>, <2 x double> %sel0
    %ret = fptosi <2 x double> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z18convert_uint2u2v2c(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 0, i8 0>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 0, i8 0>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 4294967295, i8 4294967295>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 4294967295, i8 4294967295>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z18convert_uint2u2v2h(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 0, i8 0>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 0, i8 0>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 4294967295, i8 4294967295>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 4294967295, i8 4294967295>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z18convert_uint2u2v2s(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 0, i16 0>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 0, i16 0>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 4294967295, i16 4294967295>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 4294967295, i16 4294967295>, <2 x i16> %sel0
    %ret = sext <2 x i16> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z18convert_uint2u2v2t(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 0, i16 0>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 0, i16 0>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 4294967295, i16 4294967295>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 4294967295, i16 4294967295>, <2 x i16> %sel0
    %ret = sext <2 x i16> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z18convert_uint2u2v2i(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 0, i32 0>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 0, i32 0>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 4294967295, i32 4294967295>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 4294967295, i32 4294967295>, <2 x i32> %sel0
    ret <2 x i32> %sel1
}
define <2 x i32> @_Z18convert_uint2u2v2j(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 0, i32 0>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 0, i32 0>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 4294967295, i32 4294967295>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 4294967295, i32 4294967295>, <2 x i32> %sel0
    ret <2 x i32> %sel1
}
define <2 x i32> @_Z18convert_uint2u2v2l(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 0, i64 0>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 0, i64 0>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 4294967295, i64 4294967295>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 4294967295, i64 4294967295>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z18convert_uint2u2v2m(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 0, i64 0>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 0, i64 0>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 4294967295, i64 4294967295>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 4294967295, i64 4294967295>, <2 x i64> %sel0
    %ret = trunc <2 x i64> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z18convert_uint2u2v2f(<2 x float> %x) nounwind {
    %cmp = fcmp olt <2 x float> %x, <float 0.0, float 0.0>
    %sel0 = select <2 x i1> %cmp, <2 x float> <float 0.0, float 0.0>, <2 x float> %x
    %cmp2 = fcmp ogt <2 x float> %x, <float 0x41f0000000000000, float 0x41f0000000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x float> <float 0x41f0000000000000, float 0x41f0000000000000>, <2 x float> %sel0
    %ret = fptosi <2 x float> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i32> @_Z18convert_uint2u2v2d(<2 x double> %x) nounwind {
    %cmp = fcmp olt <2 x double> %x, <double 0.0, double 0.0>
    %sel0 = select <2 x i1> %cmp, <2 x double> <double 0.0, double 0.0>, <2 x double> %x
    %cmp2 = fcmp ogt <2 x double> %x, <double 0x41efffffffe00000, double 0x41efffffffe00000>
    %sel1 = select <2 x i1> %cmp2, <2 x double> <double 0x41efffffffe00000, double 0x41efffffffe00000>, <2 x double> %sel0
    %ret = fptosi <2 x double> %sel1 to <2 x i32>
    ret <2 x i32> %ret
}
define <2 x i64> @_Z18convert_long2u2v2c(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 -1152921504606846976, i8 -1152921504606846976>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 9223372036854775807, i8 9223372036854775807>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z18convert_long2u2v2h(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 -1152921504606846976, i8 -1152921504606846976>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 9223372036854775807, i8 9223372036854775807>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z18convert_long2u2v2s(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 -1152921504606846976, i16 -1152921504606846976>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 9223372036854775807, i16 9223372036854775807>, <2 x i16> %sel0
    %ret = sext <2 x i16> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z18convert_long2u2v2t(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 -1152921504606846976, i16 -1152921504606846976>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 9223372036854775807, i16 9223372036854775807>, <2 x i16> %sel0
    %ret = sext <2 x i16> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z18convert_long2u2v2i(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 -1152921504606846976, i32 -1152921504606846976>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 9223372036854775807, i32 9223372036854775807>, <2 x i32> %sel0
    %ret = sext <2 x i32> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z18convert_long2u2v2j(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 -1152921504606846976, i32 -1152921504606846976>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 9223372036854775807, i32 9223372036854775807>, <2 x i32> %sel0
    %ret = sext <2 x i32> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z18convert_long2u2v2l(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 -1152921504606846976, i64 -1152921504606846976>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64> %sel0
    ret <2 x i64> %sel1
}
define <2 x i64> @_Z18convert_long2u2v2m(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 -1152921504606846976, i64 -1152921504606846976>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 9223372036854775807, i64 9223372036854775807>, <2 x i64> %sel0
    ret <2 x i64> %sel1
}
define <2 x i64> @_Z18convert_long2u2v2f(<2 x float> %x) nounwind {
    %cmp = fcmp olt <2 x float> %x, <float 0xc3b0000000000000, float 0xc3b0000000000000>
    %sel0 = select <2 x i1> %cmp, <2 x float> <float 0xc3b0000000000000, float 0xc3b0000000000000>, <2 x float> %x
    %cmp2 = fcmp ogt <2 x float> %x, <float 0x43e0000000000000, float 0x43e0000000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x float> <float 0x43e0000000000000, float 0x43e0000000000000>, <2 x float> %sel0
    %ret = fptosi <2 x float> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z18convert_long2u2v2d(<2 x double> %x) nounwind {
    %cmp = fcmp olt <2 x double> %x, <double 0xc3b0000000000000, double 0xc3b0000000000000>
    %sel0 = select <2 x i1> %cmp, <2 x double> <double 0xc3b0000000000000, double 0xc3b0000000000000>, <2 x double> %x
    %cmp2 = fcmp ogt <2 x double> %x, <double 0x43e0000000000000, double 0x43e0000000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x double> <double 0x43e0000000000000, double 0x43e0000000000000>, <2 x double> %sel0
    %ret = fptosi <2 x double> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z19convert_ulong2u2v2c(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 0, i8 0>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 0, i8 0>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 18446744073709551615, i8 18446744073709551615>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z19convert_ulong2u2v2h(<2 x i8> %x) nounwind {
    %cmp = icmp slt <2 x i8> %x, <i8 0, i8 0>
    %sel0 = select <2 x i1> %cmp, <2 x i8> <i8 0, i8 0>, <2 x i8> %x
    %cmp2 = icmp sgt <2 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <2 x i1> %cmp2, <2 x i8> <i8 18446744073709551615, i8 18446744073709551615>, <2 x i8> %sel0
    %ret = sext <2 x i8> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z19convert_ulong2u2v2s(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 0, i16 0>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 0, i16 0>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 18446744073709551615, i16 18446744073709551615>, <2 x i16> %sel0
    %ret = sext <2 x i16> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z19convert_ulong2u2v2t(<2 x i16> %x) nounwind {
    %cmp = icmp slt <2 x i16> %x, <i16 0, i16 0>
    %sel0 = select <2 x i1> %cmp, <2 x i16> <i16 0, i16 0>, <2 x i16> %x
    %cmp2 = icmp sgt <2 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <2 x i1> %cmp2, <2 x i16> <i16 18446744073709551615, i16 18446744073709551615>, <2 x i16> %sel0
    %ret = sext <2 x i16> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z19convert_ulong2u2v2i(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 0, i32 0>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 0, i32 0>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 18446744073709551615, i32 18446744073709551615>, <2 x i32> %sel0
    %ret = sext <2 x i32> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z19convert_ulong2u2v2j(<2 x i32> %x) nounwind {
    %cmp = icmp slt <2 x i32> %x, <i32 0, i32 0>
    %sel0 = select <2 x i1> %cmp, <2 x i32> <i32 0, i32 0>, <2 x i32> %x
    %cmp2 = icmp sgt <2 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <2 x i1> %cmp2, <2 x i32> <i32 18446744073709551615, i32 18446744073709551615>, <2 x i32> %sel0
    %ret = sext <2 x i32> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z19convert_ulong2u2v2l(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 0, i64 0>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 0, i64 0>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 18446744073709551615, i64 18446744073709551615>, <2 x i64> %sel0
    ret <2 x i64> %sel1
}
define <2 x i64> @_Z19convert_ulong2u2v2m(<2 x i64> %x) nounwind {
    %cmp = icmp slt <2 x i64> %x, <i64 0, i64 0>
    %sel0 = select <2 x i1> %cmp, <2 x i64> <i64 0, i64 0>, <2 x i64> %x
    %cmp2 = icmp sgt <2 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <2 x i1> %cmp2, <2 x i64> <i64 18446744073709551615, i64 18446744073709551615>, <2 x i64> %sel0
    ret <2 x i64> %sel1
}
define <2 x i64> @_Z19convert_ulong2u2v2f(<2 x float> %x) nounwind {
    %cmp = fcmp olt <2 x float> %x, <float 0.0, float 0.0>
    %sel0 = select <2 x i1> %cmp, <2 x float> <float 0.0, float 0.0>, <2 x float> %x
    %cmp2 = fcmp ogt <2 x float> %x, <float 0x43f0000000000000, float 0x43f0000000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x float> <float 0x43f0000000000000, float 0x43f0000000000000>, <2 x float> %sel0
    %ret = fptosi <2 x float> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x i64> @_Z19convert_ulong2u2v2d(<2 x double> %x) nounwind {
    %cmp = fcmp olt <2 x double> %x, <double 0.0, double 0.0>
    %sel0 = select <2 x i1> %cmp, <2 x double> <double 0.0, double 0.0>, <2 x double> %x
    %cmp2 = fcmp ogt <2 x double> %x, <double 0x43f0000000000000, double 0x43f0000000000000>
    %sel1 = select <2 x i1> %cmp2, <2 x double> <double 0x43f0000000000000, double 0x43f0000000000000>, <2 x double> %sel0
    %ret = fptosi <2 x double> %sel1 to <2 x i64>
    ret <2 x i64> %ret
}
define <2 x float> @_Z19convert_float2u2v2c(<2 x i8> %x) nounwind {
    %ret = sitofp <2 x i8> %x to <2 x float>
    ret <2 x float> %ret
}
define <2 x float> @_Z19convert_float2u2v2h(<2 x i8> %x) nounwind {
    %ret = sitofp <2 x i8> %x to <2 x float>
    ret <2 x float> %ret
}
define <2 x float> @_Z19convert_float2u2v2s(<2 x i16> %x) nounwind {
    %ret = sitofp <2 x i16> %x to <2 x float>
    ret <2 x float> %ret
}
define <2 x float> @_Z19convert_float2u2v2t(<2 x i16> %x) nounwind {
    %ret = sitofp <2 x i16> %x to <2 x float>
    ret <2 x float> %ret
}
define <2 x float> @_Z19convert_float2u2v2i(<2 x i32> %x) nounwind {
    %ret = sitofp <2 x i32> %x to <2 x float>
    ret <2 x float> %ret
}
define <2 x float> @_Z19convert_float2u2v2j(<2 x i32> %x) nounwind {
    %ret = sitofp <2 x i32> %x to <2 x float>
    ret <2 x float> %ret
}
define <2 x float> @_Z19convert_float2u2v2l(<2 x i64> %x) nounwind {
    %ret = sitofp <2 x i64> %x to <2 x float>
    ret <2 x float> %ret
}
define <2 x float> @_Z19convert_float2u2v2m(<2 x i64> %x) nounwind {
    %ret = sitofp <2 x i64> %x to <2 x float>
    ret <2 x float> %ret
}
define <2 x float> @_Z19convert_float2u2v2f(<2 x float> %x) nounwind {
    ret <2 x float> %x
}
define <2 x float> @_Z19convert_float2u2v2d(<2 x double> %x) nounwind {
    %ret = fptrunc <2 x double> %x to <2 x float>
    ret <2 x float> %ret
}
define <2 x double> @_Z20convert_double2u2v2c(<2 x i8> %x) nounwind {
    %ret = sitofp <2 x i8> %x to <2 x double>
    ret <2 x double> %ret
}
define <2 x double> @_Z20convert_double2u2v2h(<2 x i8> %x) nounwind {
    %ret = sitofp <2 x i8> %x to <2 x double>
    ret <2 x double> %ret
}
define <2 x double> @_Z20convert_double2u2v2s(<2 x i16> %x) nounwind {
    %ret = sitofp <2 x i16> %x to <2 x double>
    ret <2 x double> %ret
}
define <2 x double> @_Z20convert_double2u2v2t(<2 x i16> %x) nounwind {
    %ret = sitofp <2 x i16> %x to <2 x double>
    ret <2 x double> %ret
}
define <2 x double> @_Z20convert_double2u2v2i(<2 x i32> %x) nounwind {
    %ret = sitofp <2 x i32> %x to <2 x double>
    ret <2 x double> %ret
}
define <2 x double> @_Z20convert_double2u2v2j(<2 x i32> %x) nounwind {
    %ret = sitofp <2 x i32> %x to <2 x double>
    ret <2 x double> %ret
}
define <2 x double> @_Z20convert_double2u2v2l(<2 x i64> %x) nounwind {
    %ret = sitofp <2 x i64> %x to <2 x double>
    ret <2 x double> %ret
}
define <2 x double> @_Z20convert_double2u2v2m(<2 x i64> %x) nounwind {
    %ret = sitofp <2 x i64> %x to <2 x double>
    ret <2 x double> %ret
}
define <2 x double> @_Z20convert_double2u2v2f(<2 x float> %x) nounwind {
    %ret = fpext <2 x float> %x to <2 x double>
    ret <2 x double> %ret
}
define <2 x double> @_Z20convert_double2u2v2d(<2 x double> %x) nounwind {
    ret <2 x double> %x
}
define <3 x i8> @_Z18convert_char3u2v3c(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 -128, i8 -128, i8 -128>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 -128, i8 -128, i8 -128>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 127, i8 127, i8 127>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 127, i8 127, i8 127>, <3 x i8> %sel0
    ret <3 x i8> %sel1
}
define <3 x i8> @_Z18convert_char3u2v3h(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 -128, i8 -128, i8 -128>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 -128, i8 -128, i8 -128>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 127, i8 127, i8 127>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 127, i8 127, i8 127>, <3 x i8> %sel0
    ret <3 x i8> %sel1
}
define <3 x i8> @_Z18convert_char3u2v3s(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 -128, i16 -128, i16 -128>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 -128, i16 -128, i16 -128>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 127, i16 127, i16 127>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 127, i16 127, i16 127>, <3 x i16> %sel0
    %ret = trunc <3 x i16> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z18convert_char3u2v3t(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 -128, i16 -128, i16 -128>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 -128, i16 -128, i16 -128>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 127, i16 127, i16 127>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 127, i16 127, i16 127>, <3 x i16> %sel0
    %ret = trunc <3 x i16> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z18convert_char3u2v3i(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 -128, i32 -128, i32 -128>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 -128, i32 -128, i32 -128>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 127, i32 127, i32 127>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 127, i32 127, i32 127>, <3 x i32> %sel0
    %ret = trunc <3 x i32> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z18convert_char3u2v3j(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 -128, i32 -128, i32 -128>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 -128, i32 -128, i32 -128>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 127, i32 127, i32 127>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 127, i32 127, i32 127>, <3 x i32> %sel0
    %ret = trunc <3 x i32> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z18convert_char3u2v3l(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 -128, i64 -128, i64 -128>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 -128, i64 -128, i64 -128>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 127, i64 127, i64 127>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 127, i64 127, i64 127>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z18convert_char3u2v3m(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 -128, i64 -128, i64 -128>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 -128, i64 -128, i64 -128>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 127, i64 127, i64 127>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 127, i64 127, i64 127>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z18convert_char3u2v3f(<3 x float> %x) nounwind {
    %cmp = fcmp olt <3 x float> %x, <float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000>
    %sel0 = select <3 x i1> %cmp, <3 x float> <float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000>, <3 x float> %x
    %cmp2 = fcmp ogt <3 x float> %x, <float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x float> <float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000>, <3 x float> %sel0
    %ret = fptosi <3 x float> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z18convert_char3u2v3d(<3 x double> %x) nounwind {
    %cmp = fcmp olt <3 x double> %x, <double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000>
    %sel0 = select <3 x i1> %cmp, <3 x double> <double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000>, <3 x double> %x
    %cmp2 = fcmp ogt <3 x double> %x, <double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x double> <double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000>, <3 x double> %sel0
    %ret = fptosi <3 x double> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z19convert_uchar3u2v3c(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 0, i8 0, i8 0>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 0, i8 0, i8 0>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 255, i8 255, i8 255>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 255, i8 255, i8 255>, <3 x i8> %sel0
    ret <3 x i8> %sel1
}
define <3 x i8> @_Z19convert_uchar3u2v3h(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 0, i8 0, i8 0>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 0, i8 0, i8 0>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 255, i8 255, i8 255>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 255, i8 255, i8 255>, <3 x i8> %sel0
    ret <3 x i8> %sel1
}
define <3 x i8> @_Z19convert_uchar3u2v3s(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 0, i16 0, i16 0>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 0, i16 0, i16 0>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 255, i16 255, i16 255>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 255, i16 255, i16 255>, <3 x i16> %sel0
    %ret = trunc <3 x i16> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z19convert_uchar3u2v3t(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 0, i16 0, i16 0>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 0, i16 0, i16 0>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 255, i16 255, i16 255>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 255, i16 255, i16 255>, <3 x i16> %sel0
    %ret = trunc <3 x i16> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z19convert_uchar3u2v3i(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 0, i32 0, i32 0>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 0, i32 0, i32 0>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 255, i32 255, i32 255>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 255, i32 255, i32 255>, <3 x i32> %sel0
    %ret = trunc <3 x i32> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z19convert_uchar3u2v3j(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 0, i32 0, i32 0>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 0, i32 0, i32 0>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 255, i32 255, i32 255>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 255, i32 255, i32 255>, <3 x i32> %sel0
    %ret = trunc <3 x i32> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z19convert_uchar3u2v3l(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 0, i64 0, i64 0>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 0, i64 0, i64 0>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 255, i64 255, i64 255>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 255, i64 255, i64 255>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z19convert_uchar3u2v3m(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 0, i64 0, i64 0>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 0, i64 0, i64 0>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 255, i64 255, i64 255>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 255, i64 255, i64 255>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z19convert_uchar3u2v3f(<3 x float> %x) nounwind {
    %cmp = fcmp olt <3 x float> %x, <float 0.0, float 0.0, float 0.0>
    %sel0 = select <3 x i1> %cmp, <3 x float> <float 0.0, float 0.0, float 0.0>, <3 x float> %x
    %cmp2 = fcmp ogt <3 x float> %x, <float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x float> <float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000>, <3 x float> %sel0
    %ret = fptosi <3 x float> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i8> @_Z19convert_uchar3u2v3d(<3 x double> %x) nounwind {
    %cmp = fcmp olt <3 x double> %x, <double 0.0, double 0.0, double 0.0>
    %sel0 = select <3 x i1> %cmp, <3 x double> <double 0.0, double 0.0, double 0.0>, <3 x double> %x
    %cmp2 = fcmp ogt <3 x double> %x, <double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x double> <double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000>, <3 x double> %sel0
    %ret = fptosi <3 x double> %sel1 to <3 x i8>
    ret <3 x i8> %ret
}
define <3 x i16> @_Z19convert_short3u2v3c(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 -32768, i8 -32768, i8 -32768>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 -32768, i8 -32768, i8 -32768>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 32767, i8 32767, i8 32767>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 32767, i8 32767, i8 32767>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z19convert_short3u2v3h(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 -32768, i8 -32768, i8 -32768>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 -32768, i8 -32768, i8 -32768>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 32767, i8 32767, i8 32767>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 32767, i8 32767, i8 32767>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z19convert_short3u2v3s(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 -32768, i16 -32768, i16 -32768>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 -32768, i16 -32768, i16 -32768>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 32767, i16 32767, i16 32767>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 32767, i16 32767, i16 32767>, <3 x i16> %sel0
    ret <3 x i16> %sel1
}
define <3 x i16> @_Z19convert_short3u2v3t(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 -32768, i16 -32768, i16 -32768>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 -32768, i16 -32768, i16 -32768>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 32767, i16 32767, i16 32767>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 32767, i16 32767, i16 32767>, <3 x i16> %sel0
    ret <3 x i16> %sel1
}
define <3 x i16> @_Z19convert_short3u2v3i(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 -32768, i32 -32768, i32 -32768>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 -32768, i32 -32768, i32 -32768>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 32767, i32 32767, i32 32767>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 32767, i32 32767, i32 32767>, <3 x i32> %sel0
    %ret = trunc <3 x i32> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z19convert_short3u2v3j(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 -32768, i32 -32768, i32 -32768>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 -32768, i32 -32768, i32 -32768>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 32767, i32 32767, i32 32767>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 32767, i32 32767, i32 32767>, <3 x i32> %sel0
    %ret = trunc <3 x i32> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z19convert_short3u2v3l(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 -32768, i64 -32768, i64 -32768>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 -32768, i64 -32768, i64 -32768>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 32767, i64 32767, i64 32767>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 32767, i64 32767, i64 32767>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z19convert_short3u2v3m(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 -32768, i64 -32768, i64 -32768>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 -32768, i64 -32768, i64 -32768>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 32767, i64 32767, i64 32767>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 32767, i64 32767, i64 32767>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z19convert_short3u2v3f(<3 x float> %x) nounwind {
    %cmp = fcmp olt <3 x float> %x, <float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000>
    %sel0 = select <3 x i1> %cmp, <3 x float> <float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000>, <3 x float> %x
    %cmp2 = fcmp ogt <3 x float> %x, <float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x float> <float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000>, <3 x float> %sel0
    %ret = fptosi <3 x float> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z19convert_short3u2v3d(<3 x double> %x) nounwind {
    %cmp = fcmp olt <3 x double> %x, <double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000>
    %sel0 = select <3 x i1> %cmp, <3 x double> <double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000>, <3 x double> %x
    %cmp2 = fcmp ogt <3 x double> %x, <double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x double> <double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000>, <3 x double> %sel0
    %ret = fptosi <3 x double> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z20convert_ushort3u2v3c(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 0, i8 0, i8 0>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 0, i8 0, i8 0>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 65535, i8 65535, i8 65535>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 65535, i8 65535, i8 65535>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z20convert_ushort3u2v3h(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 0, i8 0, i8 0>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 0, i8 0, i8 0>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 65535, i8 65535, i8 65535>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 65535, i8 65535, i8 65535>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z20convert_ushort3u2v3s(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 0, i16 0, i16 0>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 0, i16 0, i16 0>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 65535, i16 65535, i16 65535>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 65535, i16 65535, i16 65535>, <3 x i16> %sel0
    ret <3 x i16> %sel1
}
define <3 x i16> @_Z20convert_ushort3u2v3t(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 0, i16 0, i16 0>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 0, i16 0, i16 0>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 65535, i16 65535, i16 65535>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 65535, i16 65535, i16 65535>, <3 x i16> %sel0
    ret <3 x i16> %sel1
}
define <3 x i16> @_Z20convert_ushort3u2v3i(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 0, i32 0, i32 0>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 0, i32 0, i32 0>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 65535, i32 65535, i32 65535>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 65535, i32 65535, i32 65535>, <3 x i32> %sel0
    %ret = trunc <3 x i32> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z20convert_ushort3u2v3j(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 0, i32 0, i32 0>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 0, i32 0, i32 0>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 65535, i32 65535, i32 65535>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 65535, i32 65535, i32 65535>, <3 x i32> %sel0
    %ret = trunc <3 x i32> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z20convert_ushort3u2v3l(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 0, i64 0, i64 0>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 0, i64 0, i64 0>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 65535, i64 65535, i64 65535>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 65535, i64 65535, i64 65535>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z20convert_ushort3u2v3m(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 0, i64 0, i64 0>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 0, i64 0, i64 0>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 65535, i64 65535, i64 65535>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 65535, i64 65535, i64 65535>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z20convert_ushort3u2v3f(<3 x float> %x) nounwind {
    %cmp = fcmp olt <3 x float> %x, <float 0.0, float 0.0, float 0.0>
    %sel0 = select <3 x i1> %cmp, <3 x float> <float 0.0, float 0.0, float 0.0>, <3 x float> %x
    %cmp2 = fcmp ogt <3 x float> %x, <float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x float> <float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000>, <3 x float> %sel0
    %ret = fptosi <3 x float> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i16> @_Z20convert_ushort3u2v3d(<3 x double> %x) nounwind {
    %cmp = fcmp olt <3 x double> %x, <double 0.0, double 0.0, double 0.0>
    %sel0 = select <3 x i1> %cmp, <3 x double> <double 0.0, double 0.0, double 0.0>, <3 x double> %x
    %cmp2 = fcmp ogt <3 x double> %x, <double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x double> <double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000>, <3 x double> %sel0
    %ret = fptosi <3 x double> %sel1 to <3 x i16>
    ret <3 x i16> %ret
}
define <3 x i32> @_Z17convert_int3u2v3c(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 -268435456, i8 -268435456, i8 -268435456>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 -268435456, i8 -268435456, i8 -268435456>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 2147483647, i8 2147483647, i8 2147483647>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 2147483647, i8 2147483647, i8 2147483647>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z17convert_int3u2v3h(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 -268435456, i8 -268435456, i8 -268435456>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 -268435456, i8 -268435456, i8 -268435456>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 2147483647, i8 2147483647, i8 2147483647>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 2147483647, i8 2147483647, i8 2147483647>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z17convert_int3u2v3s(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 -268435456, i16 -268435456, i16 -268435456>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 -268435456, i16 -268435456, i16 -268435456>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 2147483647, i16 2147483647, i16 2147483647>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 2147483647, i16 2147483647, i16 2147483647>, <3 x i16> %sel0
    %ret = sext <3 x i16> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z17convert_int3u2v3t(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 -268435456, i16 -268435456, i16 -268435456>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 -268435456, i16 -268435456, i16 -268435456>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 2147483647, i16 2147483647, i16 2147483647>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 2147483647, i16 2147483647, i16 2147483647>, <3 x i16> %sel0
    %ret = sext <3 x i16> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z17convert_int3u2v3i(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 -268435456, i32 -268435456, i32 -268435456>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 -268435456, i32 -268435456, i32 -268435456>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 2147483647, i32 2147483647, i32 2147483647>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 2147483647, i32 2147483647, i32 2147483647>, <3 x i32> %sel0
    ret <3 x i32> %sel1
}
define <3 x i32> @_Z17convert_int3u2v3j(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 -268435456, i32 -268435456, i32 -268435456>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 -268435456, i32 -268435456, i32 -268435456>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 2147483647, i32 2147483647, i32 2147483647>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 2147483647, i32 2147483647, i32 2147483647>, <3 x i32> %sel0
    ret <3 x i32> %sel1
}
define <3 x i32> @_Z17convert_int3u2v3l(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 -268435456, i64 -268435456, i64 -268435456>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 -268435456, i64 -268435456, i64 -268435456>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 2147483647, i64 2147483647, i64 2147483647>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 2147483647, i64 2147483647, i64 2147483647>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z17convert_int3u2v3m(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 -268435456, i64 -268435456, i64 -268435456>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 -268435456, i64 -268435456, i64 -268435456>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 2147483647, i64 2147483647, i64 2147483647>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 2147483647, i64 2147483647, i64 2147483647>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z17convert_int3u2v3f(<3 x float> %x) nounwind {
    %cmp = fcmp olt <3 x float> %x, <float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000>
    %sel0 = select <3 x i1> %cmp, <3 x float> <float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000>, <3 x float> %x
    %cmp2 = fcmp ogt <3 x float> %x, <float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x float> <float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000>, <3 x float> %sel0
    %ret = fptosi <3 x float> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z17convert_int3u2v3d(<3 x double> %x) nounwind {
    %cmp = fcmp olt <3 x double> %x, <double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000>
    %sel0 = select <3 x i1> %cmp, <3 x double> <double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000>, <3 x double> %x
    %cmp2 = fcmp ogt <3 x double> %x, <double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000>
    %sel1 = select <3 x i1> %cmp2, <3 x double> <double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000>, <3 x double> %sel0
    %ret = fptosi <3 x double> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z18convert_uint3u2v3c(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 0, i8 0, i8 0>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 0, i8 0, i8 0>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 4294967295, i8 4294967295, i8 4294967295>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 4294967295, i8 4294967295, i8 4294967295>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z18convert_uint3u2v3h(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 0, i8 0, i8 0>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 0, i8 0, i8 0>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 4294967295, i8 4294967295, i8 4294967295>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 4294967295, i8 4294967295, i8 4294967295>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z18convert_uint3u2v3s(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 0, i16 0, i16 0>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 0, i16 0, i16 0>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 4294967295, i16 4294967295, i16 4294967295>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 4294967295, i16 4294967295, i16 4294967295>, <3 x i16> %sel0
    %ret = sext <3 x i16> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z18convert_uint3u2v3t(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 0, i16 0, i16 0>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 0, i16 0, i16 0>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 4294967295, i16 4294967295, i16 4294967295>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 4294967295, i16 4294967295, i16 4294967295>, <3 x i16> %sel0
    %ret = sext <3 x i16> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z18convert_uint3u2v3i(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 0, i32 0, i32 0>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 0, i32 0, i32 0>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 4294967295, i32 4294967295, i32 4294967295>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 4294967295, i32 4294967295, i32 4294967295>, <3 x i32> %sel0
    ret <3 x i32> %sel1
}
define <3 x i32> @_Z18convert_uint3u2v3j(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 0, i32 0, i32 0>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 0, i32 0, i32 0>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 4294967295, i32 4294967295, i32 4294967295>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 4294967295, i32 4294967295, i32 4294967295>, <3 x i32> %sel0
    ret <3 x i32> %sel1
}
define <3 x i32> @_Z18convert_uint3u2v3l(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 0, i64 0, i64 0>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 0, i64 0, i64 0>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 4294967295, i64 4294967295, i64 4294967295>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 4294967295, i64 4294967295, i64 4294967295>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z18convert_uint3u2v3m(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 0, i64 0, i64 0>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 0, i64 0, i64 0>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 4294967295, i64 4294967295, i64 4294967295>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 4294967295, i64 4294967295, i64 4294967295>, <3 x i64> %sel0
    %ret = trunc <3 x i64> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z18convert_uint3u2v3f(<3 x float> %x) nounwind {
    %cmp = fcmp olt <3 x float> %x, <float 0.0, float 0.0, float 0.0>
    %sel0 = select <3 x i1> %cmp, <3 x float> <float 0.0, float 0.0, float 0.0>, <3 x float> %x
    %cmp2 = fcmp ogt <3 x float> %x, <float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x float> <float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000>, <3 x float> %sel0
    %ret = fptosi <3 x float> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i32> @_Z18convert_uint3u2v3d(<3 x double> %x) nounwind {
    %cmp = fcmp olt <3 x double> %x, <double 0.0, double 0.0, double 0.0>
    %sel0 = select <3 x i1> %cmp, <3 x double> <double 0.0, double 0.0, double 0.0>, <3 x double> %x
    %cmp2 = fcmp ogt <3 x double> %x, <double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000>
    %sel1 = select <3 x i1> %cmp2, <3 x double> <double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000>, <3 x double> %sel0
    %ret = fptosi <3 x double> %sel1 to <3 x i32>
    ret <3 x i32> %ret
}
define <3 x i64> @_Z18convert_long3u2v3c(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z18convert_long3u2v3h(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z18convert_long3u2v3s(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>, <3 x i16> %sel0
    %ret = sext <3 x i16> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z18convert_long3u2v3t(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>, <3 x i16> %sel0
    %ret = sext <3 x i16> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z18convert_long3u2v3i(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>, <3 x i32> %sel0
    %ret = sext <3 x i32> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z18convert_long3u2v3j(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>, <3 x i32> %sel0
    %ret = sext <3 x i32> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z18convert_long3u2v3l(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>, <3 x i64> %sel0
    ret <3 x i64> %sel1
}
define <3 x i64> @_Z18convert_long3u2v3m(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>, <3 x i64> %sel0
    ret <3 x i64> %sel1
}
define <3 x i64> @_Z18convert_long3u2v3f(<3 x float> %x) nounwind {
    %cmp = fcmp olt <3 x float> %x, <float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000>
    %sel0 = select <3 x i1> %cmp, <3 x float> <float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000>, <3 x float> %x
    %cmp2 = fcmp ogt <3 x float> %x, <float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x float> <float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000>, <3 x float> %sel0
    %ret = fptosi <3 x float> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z18convert_long3u2v3d(<3 x double> %x) nounwind {
    %cmp = fcmp olt <3 x double> %x, <double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000>
    %sel0 = select <3 x i1> %cmp, <3 x double> <double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000>, <3 x double> %x
    %cmp2 = fcmp ogt <3 x double> %x, <double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x double> <double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000>, <3 x double> %sel0
    %ret = fptosi <3 x double> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z19convert_ulong3u2v3c(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 0, i8 0, i8 0>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 0, i8 0, i8 0>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z19convert_ulong3u2v3h(<3 x i8> %x) nounwind {
    %cmp = icmp slt <3 x i8> %x, <i8 0, i8 0, i8 0>
    %sel0 = select <3 x i1> %cmp, <3 x i8> <i8 0, i8 0, i8 0>, <3 x i8> %x
    %cmp2 = icmp sgt <3 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <3 x i1> %cmp2, <3 x i8> <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>, <3 x i8> %sel0
    %ret = sext <3 x i8> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z19convert_ulong3u2v3s(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 0, i16 0, i16 0>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 0, i16 0, i16 0>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>, <3 x i16> %sel0
    %ret = sext <3 x i16> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z19convert_ulong3u2v3t(<3 x i16> %x) nounwind {
    %cmp = icmp slt <3 x i16> %x, <i16 0, i16 0, i16 0>
    %sel0 = select <3 x i1> %cmp, <3 x i16> <i16 0, i16 0, i16 0>, <3 x i16> %x
    %cmp2 = icmp sgt <3 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <3 x i1> %cmp2, <3 x i16> <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>, <3 x i16> %sel0
    %ret = sext <3 x i16> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z19convert_ulong3u2v3i(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 0, i32 0, i32 0>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 0, i32 0, i32 0>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>, <3 x i32> %sel0
    %ret = sext <3 x i32> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z19convert_ulong3u2v3j(<3 x i32> %x) nounwind {
    %cmp = icmp slt <3 x i32> %x, <i32 0, i32 0, i32 0>
    %sel0 = select <3 x i1> %cmp, <3 x i32> <i32 0, i32 0, i32 0>, <3 x i32> %x
    %cmp2 = icmp sgt <3 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <3 x i1> %cmp2, <3 x i32> <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>, <3 x i32> %sel0
    %ret = sext <3 x i32> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z19convert_ulong3u2v3l(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 0, i64 0, i64 0>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 0, i64 0, i64 0>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>, <3 x i64> %sel0
    ret <3 x i64> %sel1
}
define <3 x i64> @_Z19convert_ulong3u2v3m(<3 x i64> %x) nounwind {
    %cmp = icmp slt <3 x i64> %x, <i64 0, i64 0, i64 0>
    %sel0 = select <3 x i1> %cmp, <3 x i64> <i64 0, i64 0, i64 0>, <3 x i64> %x
    %cmp2 = icmp sgt <3 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <3 x i1> %cmp2, <3 x i64> <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>, <3 x i64> %sel0
    ret <3 x i64> %sel1
}
define <3 x i64> @_Z19convert_ulong3u2v3f(<3 x float> %x) nounwind {
    %cmp = fcmp olt <3 x float> %x, <float 0.0, float 0.0, float 0.0>
    %sel0 = select <3 x i1> %cmp, <3 x float> <float 0.0, float 0.0, float 0.0>, <3 x float> %x
    %cmp2 = fcmp ogt <3 x float> %x, <float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x float> <float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000>, <3 x float> %sel0
    %ret = fptosi <3 x float> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x i64> @_Z19convert_ulong3u2v3d(<3 x double> %x) nounwind {
    %cmp = fcmp olt <3 x double> %x, <double 0.0, double 0.0, double 0.0>
    %sel0 = select <3 x i1> %cmp, <3 x double> <double 0.0, double 0.0, double 0.0>, <3 x double> %x
    %cmp2 = fcmp ogt <3 x double> %x, <double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000>
    %sel1 = select <3 x i1> %cmp2, <3 x double> <double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000>, <3 x double> %sel0
    %ret = fptosi <3 x double> %sel1 to <3 x i64>
    ret <3 x i64> %ret
}
define <3 x float> @_Z19convert_float3u2v3c(<3 x i8> %x) nounwind {
    %ret = sitofp <3 x i8> %x to <3 x float>
    ret <3 x float> %ret
}
define <3 x float> @_Z19convert_float3u2v3h(<3 x i8> %x) nounwind {
    %ret = sitofp <3 x i8> %x to <3 x float>
    ret <3 x float> %ret
}
define <3 x float> @_Z19convert_float3u2v3s(<3 x i16> %x) nounwind {
    %ret = sitofp <3 x i16> %x to <3 x float>
    ret <3 x float> %ret
}
define <3 x float> @_Z19convert_float3u2v3t(<3 x i16> %x) nounwind {
    %ret = sitofp <3 x i16> %x to <3 x float>
    ret <3 x float> %ret
}
define <3 x float> @_Z19convert_float3u2v3i(<3 x i32> %x) nounwind {
    %ret = sitofp <3 x i32> %x to <3 x float>
    ret <3 x float> %ret
}
define <3 x float> @_Z19convert_float3u2v3j(<3 x i32> %x) nounwind {
    %ret = sitofp <3 x i32> %x to <3 x float>
    ret <3 x float> %ret
}
define <3 x float> @_Z19convert_float3u2v3l(<3 x i64> %x) nounwind {
    %ret = sitofp <3 x i64> %x to <3 x float>
    ret <3 x float> %ret
}
define <3 x float> @_Z19convert_float3u2v3m(<3 x i64> %x) nounwind {
    %ret = sitofp <3 x i64> %x to <3 x float>
    ret <3 x float> %ret
}
define <3 x float> @_Z19convert_float3u2v3f(<3 x float> %x) nounwind {
    ret <3 x float> %x
}
define <3 x float> @_Z19convert_float3u2v3d(<3 x double> %x) nounwind {
    %ret = fptrunc <3 x double> %x to <3 x float>
    ret <3 x float> %ret
}
define <3 x double> @_Z20convert_double3u2v3c(<3 x i8> %x) nounwind {
    %ret = sitofp <3 x i8> %x to <3 x double>
    ret <3 x double> %ret
}
define <3 x double> @_Z20convert_double3u2v3h(<3 x i8> %x) nounwind {
    %ret = sitofp <3 x i8> %x to <3 x double>
    ret <3 x double> %ret
}
define <3 x double> @_Z20convert_double3u2v3s(<3 x i16> %x) nounwind {
    %ret = sitofp <3 x i16> %x to <3 x double>
    ret <3 x double> %ret
}
define <3 x double> @_Z20convert_double3u2v3t(<3 x i16> %x) nounwind {
    %ret = sitofp <3 x i16> %x to <3 x double>
    ret <3 x double> %ret
}
define <3 x double> @_Z20convert_double3u2v3i(<3 x i32> %x) nounwind {
    %ret = sitofp <3 x i32> %x to <3 x double>
    ret <3 x double> %ret
}
define <3 x double> @_Z20convert_double3u2v3j(<3 x i32> %x) nounwind {
    %ret = sitofp <3 x i32> %x to <3 x double>
    ret <3 x double> %ret
}
define <3 x double> @_Z20convert_double3u2v3l(<3 x i64> %x) nounwind {
    %ret = sitofp <3 x i64> %x to <3 x double>
    ret <3 x double> %ret
}
define <3 x double> @_Z20convert_double3u2v3m(<3 x i64> %x) nounwind {
    %ret = sitofp <3 x i64> %x to <3 x double>
    ret <3 x double> %ret
}
define <3 x double> @_Z20convert_double3u2v3f(<3 x float> %x) nounwind {
    %ret = fpext <3 x float> %x to <3 x double>
    ret <3 x double> %ret
}
define <3 x double> @_Z20convert_double3u2v3d(<3 x double> %x) nounwind {
    ret <3 x double> %x
}
define <4 x i8> @_Z18convert_char4u2v4c(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 -128, i8 -128, i8 -128, i8 -128>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 -128, i8 -128, i8 -128, i8 -128>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 127, i8 127, i8 127, i8 127>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 127, i8 127, i8 127, i8 127>, <4 x i8> %sel0
    ret <4 x i8> %sel1
}
define <4 x i8> @_Z18convert_char4u2v4h(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 -128, i8 -128, i8 -128, i8 -128>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 -128, i8 -128, i8 -128, i8 -128>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 127, i8 127, i8 127, i8 127>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 127, i8 127, i8 127, i8 127>, <4 x i8> %sel0
    ret <4 x i8> %sel1
}
define <4 x i8> @_Z18convert_char4u2v4s(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 -128, i16 -128, i16 -128, i16 -128>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 -128, i16 -128, i16 -128, i16 -128>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 127, i16 127, i16 127, i16 127>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 127, i16 127, i16 127, i16 127>, <4 x i16> %sel0
    %ret = trunc <4 x i16> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z18convert_char4u2v4t(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 -128, i16 -128, i16 -128, i16 -128>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 -128, i16 -128, i16 -128, i16 -128>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 127, i16 127, i16 127, i16 127>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 127, i16 127, i16 127, i16 127>, <4 x i16> %sel0
    %ret = trunc <4 x i16> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z18convert_char4u2v4i(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 -128, i32 -128, i32 -128, i32 -128>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 -128, i32 -128, i32 -128, i32 -128>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 127, i32 127, i32 127, i32 127>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 127, i32 127, i32 127, i32 127>, <4 x i32> %sel0
    %ret = trunc <4 x i32> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z18convert_char4u2v4j(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 -128, i32 -128, i32 -128, i32 -128>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 -128, i32 -128, i32 -128, i32 -128>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 127, i32 127, i32 127, i32 127>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 127, i32 127, i32 127, i32 127>, <4 x i32> %sel0
    %ret = trunc <4 x i32> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z18convert_char4u2v4l(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 -128, i64 -128, i64 -128, i64 -128>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 -128, i64 -128, i64 -128, i64 -128>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 127, i64 127, i64 127, i64 127>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 127, i64 127, i64 127, i64 127>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z18convert_char4u2v4m(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 -128, i64 -128, i64 -128, i64 -128>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 -128, i64 -128, i64 -128, i64 -128>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 127, i64 127, i64 127, i64 127>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 127, i64 127, i64 127, i64 127>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z18convert_char4u2v4f(<4 x float> %x) nounwind {
    %cmp = fcmp olt <4 x float> %x, <float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000>
    %sel0 = select <4 x i1> %cmp, <4 x float> <float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000>, <4 x float> %x
    %cmp2 = fcmp ogt <4 x float> %x, <float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x float> <float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000>, <4 x float> %sel0
    %ret = fptosi <4 x float> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z18convert_char4u2v4d(<4 x double> %x) nounwind {
    %cmp = fcmp olt <4 x double> %x, <double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000>
    %sel0 = select <4 x i1> %cmp, <4 x double> <double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000>, <4 x double> %x
    %cmp2 = fcmp ogt <4 x double> %x, <double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x double> <double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000>, <4 x double> %sel0
    %ret = fptosi <4 x double> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z19convert_uchar4u2v4c(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 0, i8 0, i8 0, i8 0>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 255, i8 255, i8 255, i8 255>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 255, i8 255, i8 255, i8 255>, <4 x i8> %sel0
    ret <4 x i8> %sel1
}
define <4 x i8> @_Z19convert_uchar4u2v4h(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 0, i8 0, i8 0, i8 0>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 255, i8 255, i8 255, i8 255>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 255, i8 255, i8 255, i8 255>, <4 x i8> %sel0
    ret <4 x i8> %sel1
}
define <4 x i8> @_Z19convert_uchar4u2v4s(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 0, i16 0, i16 0, i16 0>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 255, i16 255, i16 255, i16 255>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 255, i16 255, i16 255, i16 255>, <4 x i16> %sel0
    %ret = trunc <4 x i16> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z19convert_uchar4u2v4t(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 0, i16 0, i16 0, i16 0>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 255, i16 255, i16 255, i16 255>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 255, i16 255, i16 255, i16 255>, <4 x i16> %sel0
    %ret = trunc <4 x i16> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z19convert_uchar4u2v4i(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 255, i32 255, i32 255, i32 255>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 255, i32 255, i32 255, i32 255>, <4 x i32> %sel0
    %ret = trunc <4 x i32> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z19convert_uchar4u2v4j(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 255, i32 255, i32 255, i32 255>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 255, i32 255, i32 255, i32 255>, <4 x i32> %sel0
    %ret = trunc <4 x i32> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z19convert_uchar4u2v4l(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 0, i64 0, i64 0, i64 0>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 255, i64 255, i64 255, i64 255>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 255, i64 255, i64 255, i64 255>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z19convert_uchar4u2v4m(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 0, i64 0, i64 0, i64 0>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 255, i64 255, i64 255, i64 255>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 255, i64 255, i64 255, i64 255>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z19convert_uchar4u2v4f(<4 x float> %x) nounwind {
    %cmp = fcmp olt <4 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <4 x i1> %cmp, <4 x float> <float 0.0, float 0.0, float 0.0, float 0.0>, <4 x float> %x
    %cmp2 = fcmp ogt <4 x float> %x, <float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x float> <float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000>, <4 x float> %sel0
    %ret = fptosi <4 x float> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i8> @_Z19convert_uchar4u2v4d(<4 x double> %x) nounwind {
    %cmp = fcmp olt <4 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <4 x i1> %cmp, <4 x double> <double 0.0, double 0.0, double 0.0, double 0.0>, <4 x double> %x
    %cmp2 = fcmp ogt <4 x double> %x, <double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x double> <double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000>, <4 x double> %sel0
    %ret = fptosi <4 x double> %sel1 to <4 x i8>
    ret <4 x i8> %ret
}
define <4 x i16> @_Z19convert_short4u2v4c(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 -32768, i8 -32768, i8 -32768, i8 -32768>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 -32768, i8 -32768, i8 -32768, i8 -32768>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 32767, i8 32767, i8 32767, i8 32767>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 32767, i8 32767, i8 32767, i8 32767>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z19convert_short4u2v4h(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 -32768, i8 -32768, i8 -32768, i8 -32768>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 -32768, i8 -32768, i8 -32768, i8 -32768>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 32767, i8 32767, i8 32767, i8 32767>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 32767, i8 32767, i8 32767, i8 32767>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z19convert_short4u2v4s(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 -32768, i16 -32768, i16 -32768, i16 -32768>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 -32768, i16 -32768, i16 -32768, i16 -32768>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 32767, i16 32767, i16 32767, i16 32767>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 32767, i16 32767, i16 32767, i16 32767>, <4 x i16> %sel0
    ret <4 x i16> %sel1
}
define <4 x i16> @_Z19convert_short4u2v4t(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 -32768, i16 -32768, i16 -32768, i16 -32768>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 -32768, i16 -32768, i16 -32768, i16 -32768>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 32767, i16 32767, i16 32767, i16 32767>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 32767, i16 32767, i16 32767, i16 32767>, <4 x i16> %sel0
    ret <4 x i16> %sel1
}
define <4 x i16> @_Z19convert_short4u2v4i(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 -32768, i32 -32768, i32 -32768, i32 -32768>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 -32768, i32 -32768, i32 -32768, i32 -32768>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 32767, i32 32767, i32 32767, i32 32767>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, <4 x i32> %sel0
    %ret = trunc <4 x i32> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z19convert_short4u2v4j(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 -32768, i32 -32768, i32 -32768, i32 -32768>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 -32768, i32 -32768, i32 -32768, i32 -32768>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 32767, i32 32767, i32 32767, i32 32767>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 32767, i32 32767, i32 32767, i32 32767>, <4 x i32> %sel0
    %ret = trunc <4 x i32> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z19convert_short4u2v4l(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 -32768, i64 -32768, i64 -32768, i64 -32768>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 -32768, i64 -32768, i64 -32768, i64 -32768>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 32767, i64 32767, i64 32767, i64 32767>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 32767, i64 32767, i64 32767, i64 32767>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z19convert_short4u2v4m(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 -32768, i64 -32768, i64 -32768, i64 -32768>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 -32768, i64 -32768, i64 -32768, i64 -32768>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 32767, i64 32767, i64 32767, i64 32767>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 32767, i64 32767, i64 32767, i64 32767>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z19convert_short4u2v4f(<4 x float> %x) nounwind {
    %cmp = fcmp olt <4 x float> %x, <float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000>
    %sel0 = select <4 x i1> %cmp, <4 x float> <float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000>, <4 x float> %x
    %cmp2 = fcmp ogt <4 x float> %x, <float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x float> <float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000>, <4 x float> %sel0
    %ret = fptosi <4 x float> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z19convert_short4u2v4d(<4 x double> %x) nounwind {
    %cmp = fcmp olt <4 x double> %x, <double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000>
    %sel0 = select <4 x i1> %cmp, <4 x double> <double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000>, <4 x double> %x
    %cmp2 = fcmp ogt <4 x double> %x, <double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x double> <double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000>, <4 x double> %sel0
    %ret = fptosi <4 x double> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z20convert_ushort4u2v4c(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 0, i8 0, i8 0, i8 0>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 65535, i8 65535, i8 65535, i8 65535>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 65535, i8 65535, i8 65535, i8 65535>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z20convert_ushort4u2v4h(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 0, i8 0, i8 0, i8 0>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 65535, i8 65535, i8 65535, i8 65535>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 65535, i8 65535, i8 65535, i8 65535>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z20convert_ushort4u2v4s(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 0, i16 0, i16 0, i16 0>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 65535, i16 65535, i16 65535, i16 65535>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 65535, i16 65535, i16 65535, i16 65535>, <4 x i16> %sel0
    ret <4 x i16> %sel1
}
define <4 x i16> @_Z20convert_ushort4u2v4t(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 0, i16 0, i16 0, i16 0>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 65535, i16 65535, i16 65535, i16 65535>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 65535, i16 65535, i16 65535, i16 65535>, <4 x i16> %sel0
    ret <4 x i16> %sel1
}
define <4 x i16> @_Z20convert_ushort4u2v4i(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 65535, i32 65535, i32 65535, i32 65535>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 65535, i32 65535, i32 65535, i32 65535>, <4 x i32> %sel0
    %ret = trunc <4 x i32> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z20convert_ushort4u2v4j(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 65535, i32 65535, i32 65535, i32 65535>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 65535, i32 65535, i32 65535, i32 65535>, <4 x i32> %sel0
    %ret = trunc <4 x i32> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z20convert_ushort4u2v4l(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 0, i64 0, i64 0, i64 0>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 65535, i64 65535, i64 65535, i64 65535>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 65535, i64 65535, i64 65535, i64 65535>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z20convert_ushort4u2v4m(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 0, i64 0, i64 0, i64 0>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 65535, i64 65535, i64 65535, i64 65535>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 65535, i64 65535, i64 65535, i64 65535>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z20convert_ushort4u2v4f(<4 x float> %x) nounwind {
    %cmp = fcmp olt <4 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <4 x i1> %cmp, <4 x float> <float 0.0, float 0.0, float 0.0, float 0.0>, <4 x float> %x
    %cmp2 = fcmp ogt <4 x float> %x, <float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x float> <float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000>, <4 x float> %sel0
    %ret = fptosi <4 x float> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i16> @_Z20convert_ushort4u2v4d(<4 x double> %x) nounwind {
    %cmp = fcmp olt <4 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <4 x i1> %cmp, <4 x double> <double 0.0, double 0.0, double 0.0, double 0.0>, <4 x double> %x
    %cmp2 = fcmp ogt <4 x double> %x, <double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x double> <double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000>, <4 x double> %sel0
    %ret = fptosi <4 x double> %sel1 to <4 x i16>
    ret <4 x i16> %ret
}
define <4 x i32> @_Z17convert_int4u2v4c(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z17convert_int4u2v4h(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z17convert_int4u2v4s(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>, <4 x i16> %sel0
    %ret = sext <4 x i16> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z17convert_int4u2v4t(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>, <4 x i16> %sel0
    %ret = sext <4 x i16> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z17convert_int4u2v4i(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %sel0
    ret <4 x i32> %sel1
}
define <4 x i32> @_Z17convert_int4u2v4j(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <4 x i32> %sel0
    ret <4 x i32> %sel1
}
define <4 x i32> @_Z17convert_int4u2v4l(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z17convert_int4u2v4m(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z17convert_int4u2v4f(<4 x float> %x) nounwind {
    %cmp = fcmp olt <4 x float> %x, <float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000>
    %sel0 = select <4 x i1> %cmp, <4 x float> <float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000>, <4 x float> %x
    %cmp2 = fcmp ogt <4 x float> %x, <float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x float> <float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000>, <4 x float> %sel0
    %ret = fptosi <4 x float> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z17convert_int4u2v4d(<4 x double> %x) nounwind {
    %cmp = fcmp olt <4 x double> %x, <double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000>
    %sel0 = select <4 x i1> %cmp, <4 x double> <double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000>, <4 x double> %x
    %cmp2 = fcmp ogt <4 x double> %x, <double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000>
    %sel1 = select <4 x i1> %cmp2, <4 x double> <double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000>, <4 x double> %sel0
    %ret = fptosi <4 x double> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z18convert_uint4u2v4c(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 0, i8 0, i8 0, i8 0>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z18convert_uint4u2v4h(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 0, i8 0, i8 0, i8 0>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z18convert_uint4u2v4s(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 0, i16 0, i16 0, i16 0>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>, <4 x i16> %sel0
    %ret = sext <4 x i16> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z18convert_uint4u2v4t(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 0, i16 0, i16 0, i16 0>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>, <4 x i16> %sel0
    %ret = sext <4 x i16> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z18convert_uint4u2v4i(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>, <4 x i32> %sel0
    ret <4 x i32> %sel1
}
define <4 x i32> @_Z18convert_uint4u2v4j(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>, <4 x i32> %sel0
    ret <4 x i32> %sel1
}
define <4 x i32> @_Z18convert_uint4u2v4l(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 0, i64 0, i64 0, i64 0>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z18convert_uint4u2v4m(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 0, i64 0, i64 0, i64 0>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>, <4 x i64> %sel0
    %ret = trunc <4 x i64> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z18convert_uint4u2v4f(<4 x float> %x) nounwind {
    %cmp = fcmp olt <4 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <4 x i1> %cmp, <4 x float> <float 0.0, float 0.0, float 0.0, float 0.0>, <4 x float> %x
    %cmp2 = fcmp ogt <4 x float> %x, <float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x float> <float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000>, <4 x float> %sel0
    %ret = fptosi <4 x float> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i32> @_Z18convert_uint4u2v4d(<4 x double> %x) nounwind {
    %cmp = fcmp olt <4 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <4 x i1> %cmp, <4 x double> <double 0.0, double 0.0, double 0.0, double 0.0>, <4 x double> %x
    %cmp2 = fcmp ogt <4 x double> %x, <double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000>
    %sel1 = select <4 x i1> %cmp2, <4 x double> <double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000>, <4 x double> %sel0
    %ret = fptosi <4 x double> %sel1 to <4 x i32>
    ret <4 x i32> %ret
}
define <4 x i64> @_Z18convert_long4u2v4c(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z18convert_long4u2v4h(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z18convert_long4u2v4s(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>, <4 x i16> %sel0
    %ret = sext <4 x i16> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z18convert_long4u2v4t(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>, <4 x i16> %sel0
    %ret = sext <4 x i16> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z18convert_long4u2v4i(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>, <4 x i32> %sel0
    %ret = sext <4 x i32> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z18convert_long4u2v4j(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>, <4 x i32> %sel0
    %ret = sext <4 x i32> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z18convert_long4u2v4l(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>, <4 x i64> %sel0
    ret <4 x i64> %sel1
}
define <4 x i64> @_Z18convert_long4u2v4m(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>, <4 x i64> %sel0
    ret <4 x i64> %sel1
}
define <4 x i64> @_Z18convert_long4u2v4f(<4 x float> %x) nounwind {
    %cmp = fcmp olt <4 x float> %x, <float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000>
    %sel0 = select <4 x i1> %cmp, <4 x float> <float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000>, <4 x float> %x
    %cmp2 = fcmp ogt <4 x float> %x, <float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x float> <float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000>, <4 x float> %sel0
    %ret = fptosi <4 x float> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z18convert_long4u2v4d(<4 x double> %x) nounwind {
    %cmp = fcmp olt <4 x double> %x, <double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000>
    %sel0 = select <4 x i1> %cmp, <4 x double> <double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000>, <4 x double> %x
    %cmp2 = fcmp ogt <4 x double> %x, <double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x double> <double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000>, <4 x double> %sel0
    %ret = fptosi <4 x double> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z19convert_ulong4u2v4c(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 0, i8 0, i8 0, i8 0>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z19convert_ulong4u2v4h(<4 x i8> %x) nounwind {
    %cmp = icmp slt <4 x i8> %x, <i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <4 x i1> %cmp, <4 x i8> <i8 0, i8 0, i8 0, i8 0>, <4 x i8> %x
    %cmp2 = icmp sgt <4 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <4 x i1> %cmp2, <4 x i8> <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>, <4 x i8> %sel0
    %ret = sext <4 x i8> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z19convert_ulong4u2v4s(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 0, i16 0, i16 0, i16 0>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>, <4 x i16> %sel0
    %ret = sext <4 x i16> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z19convert_ulong4u2v4t(<4 x i16> %x) nounwind {
    %cmp = icmp slt <4 x i16> %x, <i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <4 x i1> %cmp, <4 x i16> <i16 0, i16 0, i16 0, i16 0>, <4 x i16> %x
    %cmp2 = icmp sgt <4 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <4 x i1> %cmp2, <4 x i16> <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>, <4 x i16> %sel0
    %ret = sext <4 x i16> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z19convert_ulong4u2v4i(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>, <4 x i32> %sel0
    %ret = sext <4 x i32> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z19convert_ulong4u2v4j(<4 x i32> %x) nounwind {
    %cmp = icmp slt <4 x i32> %x, <i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <4 x i1> %cmp, <4 x i32> <i32 0, i32 0, i32 0, i32 0>, <4 x i32> %x
    %cmp2 = icmp sgt <4 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <4 x i1> %cmp2, <4 x i32> <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>, <4 x i32> %sel0
    %ret = sext <4 x i32> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z19convert_ulong4u2v4l(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 0, i64 0, i64 0, i64 0>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>, <4 x i64> %sel0
    ret <4 x i64> %sel1
}
define <4 x i64> @_Z19convert_ulong4u2v4m(<4 x i64> %x) nounwind {
    %cmp = icmp slt <4 x i64> %x, <i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <4 x i1> %cmp, <4 x i64> <i64 0, i64 0, i64 0, i64 0>, <4 x i64> %x
    %cmp2 = icmp sgt <4 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <4 x i1> %cmp2, <4 x i64> <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>, <4 x i64> %sel0
    ret <4 x i64> %sel1
}
define <4 x i64> @_Z19convert_ulong4u2v4f(<4 x float> %x) nounwind {
    %cmp = fcmp olt <4 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <4 x i1> %cmp, <4 x float> <float 0.0, float 0.0, float 0.0, float 0.0>, <4 x float> %x
    %cmp2 = fcmp ogt <4 x float> %x, <float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x float> <float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000>, <4 x float> %sel0
    %ret = fptosi <4 x float> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x i64> @_Z19convert_ulong4u2v4d(<4 x double> %x) nounwind {
    %cmp = fcmp olt <4 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <4 x i1> %cmp, <4 x double> <double 0.0, double 0.0, double 0.0, double 0.0>, <4 x double> %x
    %cmp2 = fcmp ogt <4 x double> %x, <double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000>
    %sel1 = select <4 x i1> %cmp2, <4 x double> <double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000>, <4 x double> %sel0
    %ret = fptosi <4 x double> %sel1 to <4 x i64>
    ret <4 x i64> %ret
}
define <4 x float> @_Z19convert_float4u2v4c(<4 x i8> %x) nounwind {
    %ret = sitofp <4 x i8> %x to <4 x float>
    ret <4 x float> %ret
}
define <4 x float> @_Z19convert_float4u2v4h(<4 x i8> %x) nounwind {
    %ret = sitofp <4 x i8> %x to <4 x float>
    ret <4 x float> %ret
}
define <4 x float> @_Z19convert_float4u2v4s(<4 x i16> %x) nounwind {
    %ret = sitofp <4 x i16> %x to <4 x float>
    ret <4 x float> %ret
}
define <4 x float> @_Z19convert_float4u2v4t(<4 x i16> %x) nounwind {
    %ret = sitofp <4 x i16> %x to <4 x float>
    ret <4 x float> %ret
}
define <4 x float> @_Z19convert_float4u2v4i(<4 x i32> %x) nounwind {
    %ret = sitofp <4 x i32> %x to <4 x float>
    ret <4 x float> %ret
}
define <4 x float> @_Z19convert_float4u2v4j(<4 x i32> %x) nounwind {
    %ret = sitofp <4 x i32> %x to <4 x float>
    ret <4 x float> %ret
}
define <4 x float> @_Z19convert_float4u2v4l(<4 x i64> %x) nounwind {
    %ret = sitofp <4 x i64> %x to <4 x float>
    ret <4 x float> %ret
}
define <4 x float> @_Z19convert_float4u2v4m(<4 x i64> %x) nounwind {
    %ret = sitofp <4 x i64> %x to <4 x float>
    ret <4 x float> %ret
}
define <4 x float> @_Z19convert_float4u2v4f(<4 x float> %x) nounwind {
    ret <4 x float> %x
}
define <4 x float> @_Z19convert_float4u2v4d(<4 x double> %x) nounwind {
    %ret = fptrunc <4 x double> %x to <4 x float>
    ret <4 x float> %ret
}
define <4 x double> @_Z20convert_double4u2v4c(<4 x i8> %x) nounwind {
    %ret = sitofp <4 x i8> %x to <4 x double>
    ret <4 x double> %ret
}
define <4 x double> @_Z20convert_double4u2v4h(<4 x i8> %x) nounwind {
    %ret = sitofp <4 x i8> %x to <4 x double>
    ret <4 x double> %ret
}
define <4 x double> @_Z20convert_double4u2v4s(<4 x i16> %x) nounwind {
    %ret = sitofp <4 x i16> %x to <4 x double>
    ret <4 x double> %ret
}
define <4 x double> @_Z20convert_double4u2v4t(<4 x i16> %x) nounwind {
    %ret = sitofp <4 x i16> %x to <4 x double>
    ret <4 x double> %ret
}
define <4 x double> @_Z20convert_double4u2v4i(<4 x i32> %x) nounwind {
    %ret = sitofp <4 x i32> %x to <4 x double>
    ret <4 x double> %ret
}
define <4 x double> @_Z20convert_double4u2v4j(<4 x i32> %x) nounwind {
    %ret = sitofp <4 x i32> %x to <4 x double>
    ret <4 x double> %ret
}
define <4 x double> @_Z20convert_double4u2v4l(<4 x i64> %x) nounwind {
    %ret = sitofp <4 x i64> %x to <4 x double>
    ret <4 x double> %ret
}
define <4 x double> @_Z20convert_double4u2v4m(<4 x i64> %x) nounwind {
    %ret = sitofp <4 x i64> %x to <4 x double>
    ret <4 x double> %ret
}
define <4 x double> @_Z20convert_double4u2v4f(<4 x float> %x) nounwind {
    %ret = fpext <4 x float> %x to <4 x double>
    ret <4 x double> %ret
}
define <4 x double> @_Z20convert_double4u2v4d(<4 x double> %x) nounwind {
    ret <4 x double> %x
}
define <8 x i8> @_Z18convert_char8u2v8c(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>, <8 x i8> %sel0
    ret <8 x i8> %sel1
}
define <8 x i8> @_Z18convert_char8u2v8h(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>, <8 x i8> %sel0
    ret <8 x i8> %sel1
}
define <8 x i8> @_Z18convert_char8u2v8s(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127>, <8 x i16> %sel0
    %ret = trunc <8 x i16> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z18convert_char8u2v8t(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127>, <8 x i16> %sel0
    %ret = trunc <8 x i16> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z18convert_char8u2v8i(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>, <8 x i32> %sel0
    %ret = trunc <8 x i32> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z18convert_char8u2v8j(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>, <8 x i32> %sel0
    %ret = trunc <8 x i32> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z18convert_char8u2v8l(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z18convert_char8u2v8m(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z18convert_char8u2v8f(<8 x float> %x) nounwind {
    %cmp = fcmp olt <8 x float> %x, <float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000>
    %sel0 = select <8 x i1> %cmp, <8 x float> <float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000>, <8 x float> %x
    %cmp2 = fcmp ogt <8 x float> %x, <float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x float> <float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000>, <8 x float> %sel0
    %ret = fptosi <8 x float> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z18convert_char8u2v8d(<8 x double> %x) nounwind {
    %cmp = fcmp olt <8 x double> %x, <double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000>
    %sel0 = select <8 x i1> %cmp, <8 x double> <double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000>, <8 x double> %x
    %cmp2 = fcmp ogt <8 x double> %x, <double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x double> <double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000>, <8 x double> %sel0
    %ret = fptosi <8 x double> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z19convert_uchar8u2v8c(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255>, <8 x i8> %sel0
    ret <8 x i8> %sel1
}
define <8 x i8> @_Z19convert_uchar8u2v8h(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255>, <8 x i8> %sel0
    ret <8 x i8> %sel1
}
define <8 x i8> @_Z19convert_uchar8u2v8s(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, <8 x i16> %sel0
    %ret = trunc <8 x i16> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z19convert_uchar8u2v8t(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, <8 x i16> %sel0
    %ret = trunc <8 x i16> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z19convert_uchar8u2v8i(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, <8 x i32> %sel0
    %ret = trunc <8 x i32> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z19convert_uchar8u2v8j(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, <8 x i32> %sel0
    %ret = trunc <8 x i32> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z19convert_uchar8u2v8l(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z19convert_uchar8u2v8m(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z19convert_uchar8u2v8f(<8 x float> %x) nounwind {
    %cmp = fcmp olt <8 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <8 x i1> %cmp, <8 x float> <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>, <8 x float> %x
    %cmp2 = fcmp ogt <8 x float> %x, <float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x float> <float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000>, <8 x float> %sel0
    %ret = fptosi <8 x float> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i8> @_Z19convert_uchar8u2v8d(<8 x double> %x) nounwind {
    %cmp = fcmp olt <8 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <8 x i1> %cmp, <8 x double> <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>, <8 x double> %x
    %cmp2 = fcmp ogt <8 x double> %x, <double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x double> <double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000>, <8 x double> %sel0
    %ret = fptosi <8 x double> %sel1 to <8 x i8>
    ret <8 x i8> %ret
}
define <8 x i16> @_Z19convert_short8u2v8c(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z19convert_short8u2v8h(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z19convert_short8u2v8s(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767>, <8 x i16> %sel0
    ret <8 x i16> %sel1
}
define <8 x i16> @_Z19convert_short8u2v8t(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767>, <8 x i16> %sel0
    ret <8 x i16> %sel1
}
define <8 x i16> @_Z19convert_short8u2v8i(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767>, <8 x i32> %sel0
    %ret = trunc <8 x i32> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z19convert_short8u2v8j(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767>, <8 x i32> %sel0
    %ret = trunc <8 x i32> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z19convert_short8u2v8l(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z19convert_short8u2v8m(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z19convert_short8u2v8f(<8 x float> %x) nounwind {
    %cmp = fcmp olt <8 x float> %x, <float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000>
    %sel0 = select <8 x i1> %cmp, <8 x float> <float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000>, <8 x float> %x
    %cmp2 = fcmp ogt <8 x float> %x, <float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x float> <float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000>, <8 x float> %sel0
    %ret = fptosi <8 x float> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z19convert_short8u2v8d(<8 x double> %x) nounwind {
    %cmp = fcmp olt <8 x double> %x, <double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000>
    %sel0 = select <8 x i1> %cmp, <8 x double> <double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000>, <8 x double> %x
    %cmp2 = fcmp ogt <8 x double> %x, <double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x double> <double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000>, <8 x double> %sel0
    %ret = fptosi <8 x double> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z20convert_ushort8u2v8c(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z20convert_ushort8u2v8h(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z20convert_ushort8u2v8s(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535>, <8 x i16> %sel0
    ret <8 x i16> %sel1
}
define <8 x i16> @_Z20convert_ushort8u2v8t(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535>, <8 x i16> %sel0
    ret <8 x i16> %sel1
}
define <8 x i16> @_Z20convert_ushort8u2v8i(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>, <8 x i32> %sel0
    %ret = trunc <8 x i32> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z20convert_ushort8u2v8j(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>, <8 x i32> %sel0
    %ret = trunc <8 x i32> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z20convert_ushort8u2v8l(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z20convert_ushort8u2v8m(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z20convert_ushort8u2v8f(<8 x float> %x) nounwind {
    %cmp = fcmp olt <8 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <8 x i1> %cmp, <8 x float> <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>, <8 x float> %x
    %cmp2 = fcmp ogt <8 x float> %x, <float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x float> <float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000>, <8 x float> %sel0
    %ret = fptosi <8 x float> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i16> @_Z20convert_ushort8u2v8d(<8 x double> %x) nounwind {
    %cmp = fcmp olt <8 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <8 x i1> %cmp, <8 x double> <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>, <8 x double> %x
    %cmp2 = fcmp ogt <8 x double> %x, <double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x double> <double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000>, <8 x double> %sel0
    %ret = fptosi <8 x double> %sel1 to <8 x i16>
    ret <8 x i16> %ret
}
define <8 x i32> @_Z17convert_int8u2v8c(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z17convert_int8u2v8h(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z17convert_int8u2v8s(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>, <8 x i16> %sel0
    %ret = sext <8 x i16> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z17convert_int8u2v8t(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>, <8 x i16> %sel0
    %ret = sext <8 x i16> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z17convert_int8u2v8i(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <8 x i32> %sel0
    ret <8 x i32> %sel1
}
define <8 x i32> @_Z17convert_int8u2v8j(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <8 x i32> %sel0
    ret <8 x i32> %sel1
}
define <8 x i32> @_Z17convert_int8u2v8l(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z17convert_int8u2v8m(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z17convert_int8u2v8f(<8 x float> %x) nounwind {
    %cmp = fcmp olt <8 x float> %x, <float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000>
    %sel0 = select <8 x i1> %cmp, <8 x float> <float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000>, <8 x float> %x
    %cmp2 = fcmp ogt <8 x float> %x, <float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x float> <float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000>, <8 x float> %sel0
    %ret = fptosi <8 x float> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z17convert_int8u2v8d(<8 x double> %x) nounwind {
    %cmp = fcmp olt <8 x double> %x, <double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000>
    %sel0 = select <8 x i1> %cmp, <8 x double> <double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000>, <8 x double> %x
    %cmp2 = fcmp ogt <8 x double> %x, <double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000>
    %sel1 = select <8 x i1> %cmp2, <8 x double> <double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000>, <8 x double> %sel0
    %ret = fptosi <8 x double> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z18convert_uint8u2v8c(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z18convert_uint8u2v8h(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z18convert_uint8u2v8s(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>, <8 x i16> %sel0
    %ret = sext <8 x i16> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z18convert_uint8u2v8t(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>, <8 x i16> %sel0
    %ret = sext <8 x i16> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z18convert_uint8u2v8i(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>, <8 x i32> %sel0
    ret <8 x i32> %sel1
}
define <8 x i32> @_Z18convert_uint8u2v8j(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>, <8 x i32> %sel0
    ret <8 x i32> %sel1
}
define <8 x i32> @_Z18convert_uint8u2v8l(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z18convert_uint8u2v8m(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>, <8 x i64> %sel0
    %ret = trunc <8 x i64> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z18convert_uint8u2v8f(<8 x float> %x) nounwind {
    %cmp = fcmp olt <8 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <8 x i1> %cmp, <8 x float> <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>, <8 x float> %x
    %cmp2 = fcmp ogt <8 x float> %x, <float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x float> <float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000>, <8 x float> %sel0
    %ret = fptosi <8 x float> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i32> @_Z18convert_uint8u2v8d(<8 x double> %x) nounwind {
    %cmp = fcmp olt <8 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <8 x i1> %cmp, <8 x double> <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>, <8 x double> %x
    %cmp2 = fcmp ogt <8 x double> %x, <double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000>
    %sel1 = select <8 x i1> %cmp2, <8 x double> <double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000>, <8 x double> %sel0
    %ret = fptosi <8 x double> %sel1 to <8 x i32>
    ret <8 x i32> %ret
}
define <8 x i64> @_Z18convert_long8u2v8c(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z18convert_long8u2v8h(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z18convert_long8u2v8s(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>, <8 x i16> %sel0
    %ret = sext <8 x i16> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z18convert_long8u2v8t(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>, <8 x i16> %sel0
    %ret = sext <8 x i16> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z18convert_long8u2v8i(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>, <8 x i32> %sel0
    %ret = sext <8 x i32> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z18convert_long8u2v8j(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>, <8 x i32> %sel0
    %ret = sext <8 x i32> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z18convert_long8u2v8l(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>, <8 x i64> %sel0
    ret <8 x i64> %sel1
}
define <8 x i64> @_Z18convert_long8u2v8m(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>, <8 x i64> %sel0
    ret <8 x i64> %sel1
}
define <8 x i64> @_Z18convert_long8u2v8f(<8 x float> %x) nounwind {
    %cmp = fcmp olt <8 x float> %x, <float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000>
    %sel0 = select <8 x i1> %cmp, <8 x float> <float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000>, <8 x float> %x
    %cmp2 = fcmp ogt <8 x float> %x, <float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x float> <float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000>, <8 x float> %sel0
    %ret = fptosi <8 x float> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z18convert_long8u2v8d(<8 x double> %x) nounwind {
    %cmp = fcmp olt <8 x double> %x, <double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000>
    %sel0 = select <8 x i1> %cmp, <8 x double> <double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000>, <8 x double> %x
    %cmp2 = fcmp ogt <8 x double> %x, <double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x double> <double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000>, <8 x double> %sel0
    %ret = fptosi <8 x double> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z19convert_ulong8u2v8c(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z19convert_ulong8u2v8h(<8 x i8> %x) nounwind {
    %cmp = icmp slt <8 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <8 x i1> %cmp, <8 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <8 x i8> %x
    %cmp2 = icmp sgt <8 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <8 x i1> %cmp2, <8 x i8> <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>, <8 x i8> %sel0
    %ret = sext <8 x i8> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z19convert_ulong8u2v8s(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>, <8 x i16> %sel0
    %ret = sext <8 x i16> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z19convert_ulong8u2v8t(<8 x i16> %x) nounwind {
    %cmp = icmp slt <8 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <8 x i1> %cmp, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %x
    %cmp2 = icmp sgt <8 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <8 x i1> %cmp2, <8 x i16> <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>, <8 x i16> %sel0
    %ret = sext <8 x i16> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z19convert_ulong8u2v8i(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>, <8 x i32> %sel0
    %ret = sext <8 x i32> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z19convert_ulong8u2v8j(<8 x i32> %x) nounwind {
    %cmp = icmp slt <8 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <8 x i1> %cmp, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <8 x i32> %x
    %cmp2 = icmp sgt <8 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <8 x i1> %cmp2, <8 x i32> <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>, <8 x i32> %sel0
    %ret = sext <8 x i32> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z19convert_ulong8u2v8l(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>, <8 x i64> %sel0
    ret <8 x i64> %sel1
}
define <8 x i64> @_Z19convert_ulong8u2v8m(<8 x i64> %x) nounwind {
    %cmp = icmp slt <8 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <8 x i1> %cmp, <8 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <8 x i64> %x
    %cmp2 = icmp sgt <8 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <8 x i1> %cmp2, <8 x i64> <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>, <8 x i64> %sel0
    ret <8 x i64> %sel1
}
define <8 x i64> @_Z19convert_ulong8u2v8f(<8 x float> %x) nounwind {
    %cmp = fcmp olt <8 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <8 x i1> %cmp, <8 x float> <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>, <8 x float> %x
    %cmp2 = fcmp ogt <8 x float> %x, <float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x float> <float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000>, <8 x float> %sel0
    %ret = fptosi <8 x float> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x i64> @_Z19convert_ulong8u2v8d(<8 x double> %x) nounwind {
    %cmp = fcmp olt <8 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <8 x i1> %cmp, <8 x double> <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>, <8 x double> %x
    %cmp2 = fcmp ogt <8 x double> %x, <double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000>
    %sel1 = select <8 x i1> %cmp2, <8 x double> <double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000>, <8 x double> %sel0
    %ret = fptosi <8 x double> %sel1 to <8 x i64>
    ret <8 x i64> %ret
}
define <8 x float> @_Z19convert_float8u2v8c(<8 x i8> %x) nounwind {
    %ret = sitofp <8 x i8> %x to <8 x float>
    ret <8 x float> %ret
}
define <8 x float> @_Z19convert_float8u2v8h(<8 x i8> %x) nounwind {
    %ret = sitofp <8 x i8> %x to <8 x float>
    ret <8 x float> %ret
}
define <8 x float> @_Z19convert_float8u2v8s(<8 x i16> %x) nounwind {
    %ret = sitofp <8 x i16> %x to <8 x float>
    ret <8 x float> %ret
}
define <8 x float> @_Z19convert_float8u2v8t(<8 x i16> %x) nounwind {
    %ret = sitofp <8 x i16> %x to <8 x float>
    ret <8 x float> %ret
}
define <8 x float> @_Z19convert_float8u2v8i(<8 x i32> %x) nounwind {
    %ret = sitofp <8 x i32> %x to <8 x float>
    ret <8 x float> %ret
}
define <8 x float> @_Z19convert_float8u2v8j(<8 x i32> %x) nounwind {
    %ret = sitofp <8 x i32> %x to <8 x float>
    ret <8 x float> %ret
}
define <8 x float> @_Z19convert_float8u2v8l(<8 x i64> %x) nounwind {
    %ret = sitofp <8 x i64> %x to <8 x float>
    ret <8 x float> %ret
}
define <8 x float> @_Z19convert_float8u2v8m(<8 x i64> %x) nounwind {
    %ret = sitofp <8 x i64> %x to <8 x float>
    ret <8 x float> %ret
}
define <8 x float> @_Z19convert_float8u2v8f(<8 x float> %x) nounwind {
    ret <8 x float> %x
}
define <8 x float> @_Z19convert_float8u2v8d(<8 x double> %x) nounwind {
    %ret = fptrunc <8 x double> %x to <8 x float>
    ret <8 x float> %ret
}
define <8 x double> @_Z20convert_double8u2v8c(<8 x i8> %x) nounwind {
    %ret = sitofp <8 x i8> %x to <8 x double>
    ret <8 x double> %ret
}
define <8 x double> @_Z20convert_double8u2v8h(<8 x i8> %x) nounwind {
    %ret = sitofp <8 x i8> %x to <8 x double>
    ret <8 x double> %ret
}
define <8 x double> @_Z20convert_double8u2v8s(<8 x i16> %x) nounwind {
    %ret = sitofp <8 x i16> %x to <8 x double>
    ret <8 x double> %ret
}
define <8 x double> @_Z20convert_double8u2v8t(<8 x i16> %x) nounwind {
    %ret = sitofp <8 x i16> %x to <8 x double>
    ret <8 x double> %ret
}
define <8 x double> @_Z20convert_double8u2v8i(<8 x i32> %x) nounwind {
    %ret = sitofp <8 x i32> %x to <8 x double>
    ret <8 x double> %ret
}
define <8 x double> @_Z20convert_double8u2v8j(<8 x i32> %x) nounwind {
    %ret = sitofp <8 x i32> %x to <8 x double>
    ret <8 x double> %ret
}
define <8 x double> @_Z20convert_double8u2v8l(<8 x i64> %x) nounwind {
    %ret = sitofp <8 x i64> %x to <8 x double>
    ret <8 x double> %ret
}
define <8 x double> @_Z20convert_double8u2v8m(<8 x i64> %x) nounwind {
    %ret = sitofp <8 x i64> %x to <8 x double>
    ret <8 x double> %ret
}
define <8 x double> @_Z20convert_double8u2v8f(<8 x float> %x) nounwind {
    %ret = fpext <8 x float> %x to <8 x double>
    ret <8 x double> %ret
}
define <8 x double> @_Z20convert_double8u2v8d(<8 x double> %x) nounwind {
    ret <8 x double> %x
}
define <16 x i8> @_Z20convert_char16u2v16c(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>, <16 x i8> %sel0
    ret <16 x i8> %sel1
}
define <16 x i8> @_Z20convert_char16u2v16h(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128, i8 -128>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127, i8 127>, <16 x i8> %sel0
    ret <16 x i8> %sel1
}
define <16 x i8> @_Z20convert_char16u2v16s(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127>, <16 x i16> %sel0
    %ret = trunc <16 x i16> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z20convert_char16u2v16t(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128, i16 -128>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127, i16 127>, <16 x i16> %sel0
    %ret = trunc <16 x i16> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z20convert_char16u2v16i(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>, <16 x i32> %sel0
    %ret = trunc <16 x i32> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z20convert_char16u2v16j(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128, i32 -128>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>, <16 x i32> %sel0
    %ret = trunc <16 x i32> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z20convert_char16u2v16l(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z20convert_char16u2v16m(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128, i64 -128>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127, i64 127>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z20convert_char16u2v16f(<16 x float> %x) nounwind {
    %cmp = fcmp olt <16 x float> %x, <float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000>
    %sel0 = select <16 x i1> %cmp, <16 x float> <float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000, float 0xc060000000000000>, <16 x float> %x
    %cmp2 = fcmp ogt <16 x float> %x, <float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x float> <float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000, float 0x405fc00000000000>, <16 x float> %sel0
    %ret = fptosi <16 x float> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z20convert_char16u2v16d(<16 x double> %x) nounwind {
    %cmp = fcmp olt <16 x double> %x, <double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000>
    %sel0 = select <16 x i1> %cmp, <16 x double> <double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000, double 0xc060000000000000>, <16 x double> %x
    %cmp2 = fcmp ogt <16 x double> %x, <double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x double> <double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000, double 0x405fc00000000000>, <16 x double> %sel0
    %ret = fptosi <16 x double> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z21convert_uchar16u2v16c(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255>, <16 x i8> %sel0
    ret <16 x i8> %sel1
}
define <16 x i8> @_Z21convert_uchar16u2v16h(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255, i8 255>, <16 x i8> %sel0
    ret <16 x i8> %sel1
}
define <16 x i8> @_Z21convert_uchar16u2v16s(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, <16 x i16> %sel0
    %ret = trunc <16 x i16> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z21convert_uchar16u2v16t(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255, i16 255>, <16 x i16> %sel0
    %ret = trunc <16 x i16> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z21convert_uchar16u2v16i(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, <16 x i32> %sel0
    %ret = trunc <16 x i32> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z21convert_uchar16u2v16j(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255>, <16 x i32> %sel0
    %ret = trunc <16 x i32> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z21convert_uchar16u2v16l(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z21convert_uchar16u2v16m(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255, i64 255>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z21convert_uchar16u2v16f(<16 x float> %x) nounwind {
    %cmp = fcmp olt <16 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <16 x i1> %cmp, <16 x float> <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>, <16 x float> %x
    %cmp2 = fcmp ogt <16 x float> %x, <float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x float> <float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000, float 0x406fe00000000000>, <16 x float> %sel0
    %ret = fptosi <16 x float> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i8> @_Z21convert_uchar16u2v16d(<16 x double> %x) nounwind {
    %cmp = fcmp olt <16 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <16 x i1> %cmp, <16 x double> <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>, <16 x double> %x
    %cmp2 = fcmp ogt <16 x double> %x, <double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x double> <double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000, double 0x406fe00000000000>, <16 x double> %sel0
    %ret = fptosi <16 x double> %sel1 to <16 x i8>
    ret <16 x i8> %ret
}
define <16 x i16> @_Z21convert_short16u2v16c(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z21convert_short16u2v16h(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768, i8 -32768>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767, i8 32767>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z21convert_short16u2v16s(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767>, <16 x i16> %sel0
    ret <16 x i16> %sel1
}
define <16 x i16> @_Z21convert_short16u2v16t(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768, i16 -32768>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767, i16 32767>, <16 x i16> %sel0
    ret <16 x i16> %sel1
}
define <16 x i16> @_Z21convert_short16u2v16i(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767>, <16 x i32> %sel0
    %ret = trunc <16 x i32> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z21convert_short16u2v16j(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768, i32 -32768>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767, i32 32767>, <16 x i32> %sel0
    %ret = trunc <16 x i32> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z21convert_short16u2v16l(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z21convert_short16u2v16m(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768, i64 -32768>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767, i64 32767>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z21convert_short16u2v16f(<16 x float> %x) nounwind {
    %cmp = fcmp olt <16 x float> %x, <float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000>
    %sel0 = select <16 x i1> %cmp, <16 x float> <float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000, float 0xc0e0000000000000>, <16 x float> %x
    %cmp2 = fcmp ogt <16 x float> %x, <float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x float> <float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000, float 0x40dfffc000000000>, <16 x float> %sel0
    %ret = fptosi <16 x float> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z21convert_short16u2v16d(<16 x double> %x) nounwind {
    %cmp = fcmp olt <16 x double> %x, <double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000>
    %sel0 = select <16 x i1> %cmp, <16 x double> <double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000, double 0xc0e0000000000000>, <16 x double> %x
    %cmp2 = fcmp ogt <16 x double> %x, <double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x double> <double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000, double 0x40dfffc000000000>, <16 x double> %sel0
    %ret = fptosi <16 x double> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z22convert_ushort16u2v16c(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z22convert_ushort16u2v16h(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535, i8 65535>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z22convert_ushort16u2v16s(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535>, <16 x i16> %sel0
    ret <16 x i16> %sel1
}
define <16 x i16> @_Z22convert_ushort16u2v16t(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535, i16 65535>, <16 x i16> %sel0
    ret <16 x i16> %sel1
}
define <16 x i16> @_Z22convert_ushort16u2v16i(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>, <16 x i32> %sel0
    %ret = trunc <16 x i32> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z22convert_ushort16u2v16j(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535, i32 65535>, <16 x i32> %sel0
    %ret = trunc <16 x i32> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z22convert_ushort16u2v16l(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z22convert_ushort16u2v16m(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535, i64 65535>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z22convert_ushort16u2v16f(<16 x float> %x) nounwind {
    %cmp = fcmp olt <16 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <16 x i1> %cmp, <16 x float> <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>, <16 x float> %x
    %cmp2 = fcmp ogt <16 x float> %x, <float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x float> <float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000, float 0x40efffe000000000>, <16 x float> %sel0
    %ret = fptosi <16 x float> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i16> @_Z22convert_ushort16u2v16d(<16 x double> %x) nounwind {
    %cmp = fcmp olt <16 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <16 x i1> %cmp, <16 x double> <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>, <16 x double> %x
    %cmp2 = fcmp ogt <16 x double> %x, <double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x double> <double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000, double 0x40efffe000000000>, <16 x double> %sel0
    %ret = fptosi <16 x double> %sel1 to <16 x i16>
    ret <16 x i16> %ret
}
define <16 x i32> @_Z19convert_int16u2v16c(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z19convert_int16u2v16h(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456, i8 -268435456>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647, i8 2147483647>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z19convert_int16u2v16s(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>, <16 x i16> %sel0
    %ret = sext <16 x i16> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z19convert_int16u2v16t(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456, i16 -268435456>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647, i16 2147483647>, <16 x i16> %sel0
    %ret = sext <16 x i16> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z19convert_int16u2v16i(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <16 x i32> %sel0
    ret <16 x i32> %sel1
}
define <16 x i32> @_Z19convert_int16u2v16j(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456, i32 -268435456>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647>, <16 x i32> %sel0
    ret <16 x i32> %sel1
}
define <16 x i32> @_Z19convert_int16u2v16l(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z19convert_int16u2v16m(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456, i64 -268435456>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647, i64 2147483647>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z19convert_int16u2v16f(<16 x float> %x) nounwind {
    %cmp = fcmp olt <16 x float> %x, <float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000>
    %sel0 = select <16 x i1> %cmp, <16 x float> <float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000, float 0xc1b0000000000000>, <16 x float> %x
    %cmp2 = fcmp ogt <16 x float> %x, <float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x float> <float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000, float 0x41e0000000000000>, <16 x float> %sel0
    %ret = fptosi <16 x float> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z19convert_int16u2v16d(<16 x double> %x) nounwind {
    %cmp = fcmp olt <16 x double> %x, <double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000>
    %sel0 = select <16 x i1> %cmp, <16 x double> <double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000, double 0xc1b0000000000000>, <16 x double> %x
    %cmp2 = fcmp ogt <16 x double> %x, <double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000>
    %sel1 = select <16 x i1> %cmp2, <16 x double> <double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000, double 0x41dfffffffc00000>, <16 x double> %sel0
    %ret = fptosi <16 x double> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z20convert_uint16u2v16c(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z20convert_uint16u2v16h(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295, i8 4294967295>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z20convert_uint16u2v16s(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>, <16 x i16> %sel0
    %ret = sext <16 x i16> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z20convert_uint16u2v16t(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295, i16 4294967295>, <16 x i16> %sel0
    %ret = sext <16 x i16> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z20convert_uint16u2v16i(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>, <16 x i32> %sel0
    ret <16 x i32> %sel1
}
define <16 x i32> @_Z20convert_uint16u2v16j(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295, i32 4294967295>, <16 x i32> %sel0
    ret <16 x i32> %sel1
}
define <16 x i32> @_Z20convert_uint16u2v16l(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z20convert_uint16u2v16m(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295, i64 4294967295>, <16 x i64> %sel0
    %ret = trunc <16 x i64> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z20convert_uint16u2v16f(<16 x float> %x) nounwind {
    %cmp = fcmp olt <16 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <16 x i1> %cmp, <16 x float> <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>, <16 x float> %x
    %cmp2 = fcmp ogt <16 x float> %x, <float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x float> <float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000, float 0x41f0000000000000>, <16 x float> %sel0
    %ret = fptosi <16 x float> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i32> @_Z20convert_uint16u2v16d(<16 x double> %x) nounwind {
    %cmp = fcmp olt <16 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <16 x i1> %cmp, <16 x double> <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>, <16 x double> %x
    %cmp2 = fcmp ogt <16 x double> %x, <double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000>
    %sel1 = select <16 x i1> %cmp2, <16 x double> <double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000, double 0x41efffffffe00000>, <16 x double> %sel0
    %ret = fptosi <16 x double> %sel1 to <16 x i32>
    ret <16 x i32> %ret
}
define <16 x i64> @_Z20convert_long16u2v16c(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z20convert_long16u2v16h(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976, i8 -1152921504606846976>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807, i8 9223372036854775807>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z20convert_long16u2v16s(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>, <16 x i16> %sel0
    %ret = sext <16 x i16> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z20convert_long16u2v16t(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976, i16 -1152921504606846976>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807, i16 9223372036854775807>, <16 x i16> %sel0
    %ret = sext <16 x i16> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z20convert_long16u2v16i(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>, <16 x i32> %sel0
    %ret = sext <16 x i32> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z20convert_long16u2v16j(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976, i32 -1152921504606846976>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807, i32 9223372036854775807>, <16 x i32> %sel0
    %ret = sext <16 x i32> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z20convert_long16u2v16l(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>, <16 x i64> %sel0
    ret <16 x i64> %sel1
}
define <16 x i64> @_Z20convert_long16u2v16m(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976, i64 -1152921504606846976>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807>, <16 x i64> %sel0
    ret <16 x i64> %sel1
}
define <16 x i64> @_Z20convert_long16u2v16f(<16 x float> %x) nounwind {
    %cmp = fcmp olt <16 x float> %x, <float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000>
    %sel0 = select <16 x i1> %cmp, <16 x float> <float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000, float 0xc3b0000000000000>, <16 x float> %x
    %cmp2 = fcmp ogt <16 x float> %x, <float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x float> <float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000, float 0x43e0000000000000>, <16 x float> %sel0
    %ret = fptosi <16 x float> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z20convert_long16u2v16d(<16 x double> %x) nounwind {
    %cmp = fcmp olt <16 x double> %x, <double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000>
    %sel0 = select <16 x i1> %cmp, <16 x double> <double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000, double 0xc3b0000000000000>, <16 x double> %x
    %cmp2 = fcmp ogt <16 x double> %x, <double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x double> <double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000, double 0x43e0000000000000>, <16 x double> %sel0
    %ret = fptosi <16 x double> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z21convert_ulong16u2v16c(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z21convert_ulong16u2v16h(<16 x i8> %x) nounwind {
    %cmp = icmp slt <16 x i8> %x, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>
    %sel0 = select <16 x i1> %cmp, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %x
    %cmp2 = icmp sgt <16 x i8> %x, <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>
    %sel1 = select <16 x i1> %cmp2, <16 x i8> <i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615, i8 18446744073709551615>, <16 x i8> %sel0
    %ret = sext <16 x i8> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z21convert_ulong16u2v16s(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>, <16 x i16> %sel0
    %ret = sext <16 x i16> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z21convert_ulong16u2v16t(<16 x i16> %x) nounwind {
    %cmp = icmp slt <16 x i16> %x, <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>
    %sel0 = select <16 x i1> %cmp, <16 x i16> <i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <16 x i16> %x
    %cmp2 = icmp sgt <16 x i16> %x, <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>
    %sel1 = select <16 x i1> %cmp2, <16 x i16> <i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615, i16 18446744073709551615>, <16 x i16> %sel0
    %ret = sext <16 x i16> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z21convert_ulong16u2v16i(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>, <16 x i32> %sel0
    %ret = sext <16 x i32> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z21convert_ulong16u2v16j(<16 x i32> %x) nounwind {
    %cmp = icmp slt <16 x i32> %x, <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>
    %sel0 = select <16 x i1> %cmp, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, <16 x i32> %x
    %cmp2 = icmp sgt <16 x i32> %x, <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>
    %sel1 = select <16 x i1> %cmp2, <16 x i32> <i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615, i32 18446744073709551615>, <16 x i32> %sel0
    %ret = sext <16 x i32> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z21convert_ulong16u2v16l(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>, <16 x i64> %sel0
    ret <16 x i64> %sel1
}
define <16 x i64> @_Z21convert_ulong16u2v16m(<16 x i64> %x) nounwind {
    %cmp = icmp slt <16 x i64> %x, <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>
    %sel0 = select <16 x i1> %cmp, <16 x i64> <i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, <16 x i64> %x
    %cmp2 = icmp sgt <16 x i64> %x, <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>
    %sel1 = select <16 x i1> %cmp2, <16 x i64> <i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615, i64 18446744073709551615>, <16 x i64> %sel0
    ret <16 x i64> %sel1
}
define <16 x i64> @_Z21convert_ulong16u2v16f(<16 x float> %x) nounwind {
    %cmp = fcmp olt <16 x float> %x, <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>
    %sel0 = select <16 x i1> %cmp, <16 x float> <float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0, float 0.0>, <16 x float> %x
    %cmp2 = fcmp ogt <16 x float> %x, <float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x float> <float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000, float 0x43f0000000000000>, <16 x float> %sel0
    %ret = fptosi <16 x float> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x i64> @_Z21convert_ulong16u2v16d(<16 x double> %x) nounwind {
    %cmp = fcmp olt <16 x double> %x, <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>
    %sel0 = select <16 x i1> %cmp, <16 x double> <double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0, double 0.0>, <16 x double> %x
    %cmp2 = fcmp ogt <16 x double> %x, <double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000>
    %sel1 = select <16 x i1> %cmp2, <16 x double> <double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000, double 0x43f0000000000000>, <16 x double> %sel0
    %ret = fptosi <16 x double> %sel1 to <16 x i64>
    ret <16 x i64> %ret
}
define <16 x float> @_Z21convert_float16u2v16c(<16 x i8> %x) nounwind {
    %ret = sitofp <16 x i8> %x to <16 x float>
    ret <16 x float> %ret
}
define <16 x float> @_Z21convert_float16u2v16h(<16 x i8> %x) nounwind {
    %ret = sitofp <16 x i8> %x to <16 x float>
    ret <16 x float> %ret
}
define <16 x float> @_Z21convert_float16u2v16s(<16 x i16> %x) nounwind {
    %ret = sitofp <16 x i16> %x to <16 x float>
    ret <16 x float> %ret
}
define <16 x float> @_Z21convert_float16u2v16t(<16 x i16> %x) nounwind {
    %ret = sitofp <16 x i16> %x to <16 x float>
    ret <16 x float> %ret
}
define <16 x float> @_Z21convert_float16u2v16i(<16 x i32> %x) nounwind {
    %ret = sitofp <16 x i32> %x to <16 x float>
    ret <16 x float> %ret
}
define <16 x float> @_Z21convert_float16u2v16j(<16 x i32> %x) nounwind {
    %ret = sitofp <16 x i32> %x to <16 x float>
    ret <16 x float> %ret
}
define <16 x float> @_Z21convert_float16u2v16l(<16 x i64> %x) nounwind {
    %ret = sitofp <16 x i64> %x to <16 x float>
    ret <16 x float> %ret
}
define <16 x float> @_Z21convert_float16u2v16m(<16 x i64> %x) nounwind {
    %ret = sitofp <16 x i64> %x to <16 x float>
    ret <16 x float> %ret
}
define <16 x float> @_Z21convert_float16u2v16f(<16 x float> %x) nounwind {
    ret <16 x float> %x
}
define <16 x float> @_Z21convert_float16u2v16d(<16 x double> %x) nounwind {
    %ret = fptrunc <16 x double> %x to <16 x float>
    ret <16 x float> %ret
}
define <16 x double> @_Z22convert_double16u2v16c(<16 x i8> %x) nounwind {
    %ret = sitofp <16 x i8> %x to <16 x double>
    ret <16 x double> %ret
}
define <16 x double> @_Z22convert_double16u2v16h(<16 x i8> %x) nounwind {
    %ret = sitofp <16 x i8> %x to <16 x double>
    ret <16 x double> %ret
}
define <16 x double> @_Z22convert_double16u2v16s(<16 x i16> %x) nounwind {
    %ret = sitofp <16 x i16> %x to <16 x double>
    ret <16 x double> %ret
}
define <16 x double> @_Z22convert_double16u2v16t(<16 x i16> %x) nounwind {
    %ret = sitofp <16 x i16> %x to <16 x double>
    ret <16 x double> %ret
}
define <16 x double> @_Z22convert_double16u2v16i(<16 x i32> %x) nounwind {
    %ret = sitofp <16 x i32> %x to <16 x double>
    ret <16 x double> %ret
}
define <16 x double> @_Z22convert_double16u2v16j(<16 x i32> %x) nounwind {
    %ret = sitofp <16 x i32> %x to <16 x double>
    ret <16 x double> %ret
}
define <16 x double> @_Z22convert_double16u2v16l(<16 x i64> %x) nounwind {
    %ret = sitofp <16 x i64> %x to <16 x double>
    ret <16 x double> %ret
}
define <16 x double> @_Z22convert_double16u2v16m(<16 x i64> %x) nounwind {
    %ret = sitofp <16 x i64> %x to <16 x double>
    ret <16 x double> %ret
}
define <16 x double> @_Z22convert_double16u2v16f(<16 x float> %x) nounwind {
    %ret = fpext <16 x float> %x to <16 x double>
    ret <16 x double> %ret
}
define <16 x double> @_Z22convert_double16u2v16d(<16 x double> %x) nounwind {
    ret <16 x double> %x
}
