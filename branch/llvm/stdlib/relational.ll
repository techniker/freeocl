; ModuleID = 'relation.ll'

define <2 x i32> @_Z7isequalu2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp oeq <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i32> < i32 -1, i32 -1 >, <2 x i32> zeroinitializer
	ret <2 x i32> %ret
}
define <2 x i32> @_Z10isnotequalu2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp une <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i32> < i32 -1, i32 -1 >, <2 x i32> zeroinitializer
	ret <2 x i32> %ret
}
define <2 x i32> @_Z9isgreateru2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp ogt <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i32> < i32 -1, i32 -1 >, <2 x i32> zeroinitializer
	ret <2 x i32> %ret
}
define <2 x i32> @_Z14isgreaterequalu2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp oge <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i32> < i32 -1, i32 -1 >, <2 x i32> zeroinitializer
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6islessu2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp olt <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i32> < i32 -1, i32 -1 >, <2 x i32> zeroinitializer
	ret <2 x i32> %ret
}
define <2 x i32> @_Z11islessequalu2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp ole <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i32> < i32 -1, i32 -1 >, <2 x i32> zeroinitializer
	ret <2 x i32> %ret
}
define <2 x i32> @_Z13islessgreateru2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp one <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i32> < i32 -1, i32 -1 >, <2 x i32> zeroinitializer
	ret <2 x i32> %ret
}
define <2 x i32> @_Z5isinfu2v2f(<2 x float> %a) nounwind {
	%b = bitcast <2 x float> %a to <2 x i32>
	%bits = and <2 x i32> %b, < i32 2147483647, i32 2147483647 >
	%cmp = icmp ne <2 x i32> %bits, < i32 2139095040, i32 2139095040 >
	%ret = select <2 x i1> %cmp, <2 x i32> < i32 -1, i32 -1 >, <2 x i32> zeroinitializer
	ret <2 x i32> %ret
}
define <2 x i32> @_Z5isnanu2v2f(<2 x float> %a) nounwind {
	%b = bitcast <2 x float> %a to <2 x i32>
	%bits0 = and <2 x i32> %b, < i32 2139095040, i32 2139095040 >
	%cmp0 = icmp eq <2 x i32> %bits0, < i32 2139095040, i32 2139095040 >
	%bits1 = and <2 x i32> %b, < i32 8388607, i32 8388607 >
	%cmp1 = icmp ne <2 x i32> %bits1, zeroinitializer 
	%cmp = and <2 x i1> %cmp0, %cmp1
	%ret = select <2 x i1> %cmp, <2 x i32> < i32 -1, i32 -1 >, <2 x i32> zeroinitializer
	ret <2 x i32> %ret
}
define <2 x i64> @_Z7isequalu2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp oeq <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i64> < i64 -1, i64 -1 >, <2 x i64> zeroinitializer
	ret <2 x i64> %ret
}
define <2 x i64> @_Z10isnotequalu2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp une <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i64> < i64 -1, i64 -1 >, <2 x i64> zeroinitializer
	ret <2 x i64> %ret
}
define <2 x i64> @_Z9isgreateru2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp ogt <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i64> < i64 -1, i64 -1 >, <2 x i64> zeroinitializer
	ret <2 x i64> %ret
}
define <2 x i64> @_Z14isgreaterequalu2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp oge <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i64> < i64 -1, i64 -1 >, <2 x i64> zeroinitializer
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6islessu2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp olt <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i64> < i64 -1, i64 -1 >, <2 x i64> zeroinitializer
	ret <2 x i64> %ret
}
define <2 x i64> @_Z11islessequalu2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp ole <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i64> < i64 -1, i64 -1 >, <2 x i64> zeroinitializer
	ret <2 x i64> %ret
}
define <2 x i64> @_Z13islessgreateru2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp one <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x i64> < i64 -1, i64 -1 >, <2 x i64> zeroinitializer
	ret <2 x i64> %ret
}
define <2 x i64> @_Z5isinfu2v2d(<2 x double> %a) nounwind {
	%b = bitcast <2 x double> %a to <2 x i64>
	%bits = and <2 x i64> %b, < i64 9223372036854775807, i64 9223372036854775807 >
	%cmp = icmp ne <2 x i64> %bits, < i64 9218868437227405312, i64 9218868437227405312 >
	%ret = select <2 x i1> %cmp, <2 x i64> < i64 -1, i64 -1 >, <2 x i64> zeroinitializer
	ret <2 x i64> %ret
}
define <2 x i64> @_Z5isnanu2v2d(<2 x double> %a) nounwind {
	%b = bitcast <2 x double> %a to <2 x i64>
	%bits0 = and <2 x i64> %b, < i64 9218868437227405312, i64 9218868437227405312 >
	%cmp0 = icmp eq <2 x i64> %bits0, < i64 9218868437227405312, i64 9218868437227405312 >
	%bits1 = and <2 x i64> %b, < i64 4503599627370495, i64 4503599627370495 >
	%cmp1 = icmp ne <2 x i64> %bits1, zeroinitializer 
	%cmp = and <2 x i1> %cmp0, %cmp1
	%ret = select <2 x i1> %cmp, <2 x i64> < i64 -1, i64 -1 >, <2 x i64> zeroinitializer
	ret <2 x i64> %ret
}
define <4 x i32> @_Z7isequalu2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp oeq <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z10isnotequalu2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp une <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z9isgreateru2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp ogt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z14isgreaterequalu2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp oge <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6islessu2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp olt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z11islessequalu2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp ole <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z13islessgreateru2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp one <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z5isinfu2v3f(<4 x float> %a) nounwind {
	%b = bitcast <4 x float> %a to <4 x i32>
	%bits = and <4 x i32> %b, < i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647 >
	%cmp = icmp ne <4 x i32> %bits, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z5isnanu2v3f(<4 x float> %a) nounwind {
	%b = bitcast <4 x float> %a to <4 x i32>
	%bits0 = and <4 x i32> %b, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%cmp0 = icmp eq <4 x i32> %bits0, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%bits1 = and <4 x i32> %b, < i32 8388607, i32 8388607, i32 8388607, i32 8388607 >
	%cmp1 = icmp ne <4 x i32> %bits1, zeroinitializer 
	%cmp = and <4 x i1> %cmp0, %cmp1
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i64> @_Z7isequalu2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp oeq <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z10isnotequalu2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp une <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z9isgreateru2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp ogt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z14isgreaterequalu2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp oge <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6islessu2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp olt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z11islessequalu2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp ole <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z13islessgreateru2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp one <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z5isinfu2v3d(<4 x double> %a) nounwind {
	%b = bitcast <4 x double> %a to <4 x i64>
	%bits = and <4 x i64> %b, < i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807 >
	%cmp = icmp ne <4 x i64> %bits, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z5isnanu2v3d(<4 x double> %a) nounwind {
	%b = bitcast <4 x double> %a to <4 x i64>
	%bits0 = and <4 x i64> %b, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%cmp0 = icmp eq <4 x i64> %bits0, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%bits1 = and <4 x i64> %b, < i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495 >
	%cmp1 = icmp ne <4 x i64> %bits1, zeroinitializer 
	%cmp = and <4 x i1> %cmp0, %cmp1
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i32> @_Z7isequalu2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp oeq <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z10isnotequalu2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp une <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z9isgreateru2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp ogt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z14isgreaterequalu2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp oge <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6islessu2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp olt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z11islessequalu2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp ole <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z13islessgreateru2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp one <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z5isinfu2v4f(<4 x float> %a) nounwind {
	%b = bitcast <4 x float> %a to <4 x i32>
	%bits = and <4 x i32> %b, < i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647 >
	%cmp = icmp ne <4 x i32> %bits, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i32> @_Z5isnanu2v4f(<4 x float> %a) nounwind {
	%b = bitcast <4 x float> %a to <4 x i32>
	%bits0 = and <4 x i32> %b, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%cmp0 = icmp eq <4 x i32> %bits0, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%bits1 = and <4 x i32> %b, < i32 8388607, i32 8388607, i32 8388607, i32 8388607 >
	%cmp1 = icmp ne <4 x i32> %bits1, zeroinitializer 
	%cmp = and <4 x i1> %cmp0, %cmp1
	%ret = select <4 x i1> %cmp, <4 x i32> < i32 -1, i32 -1, i32 -1, i32 -1 >, <4 x i32> zeroinitializer
	ret <4 x i32> %ret
}
define <4 x i64> @_Z7isequalu2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp oeq <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z10isnotequalu2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp une <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z9isgreateru2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp ogt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z14isgreaterequalu2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp oge <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6islessu2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp olt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z11islessequalu2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp ole <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z13islessgreateru2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp one <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z5isinfu2v4d(<4 x double> %a) nounwind {
	%b = bitcast <4 x double> %a to <4 x i64>
	%bits = and <4 x i64> %b, < i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807 >
	%cmp = icmp ne <4 x i64> %bits, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <4 x i64> @_Z5isnanu2v4d(<4 x double> %a) nounwind {
	%b = bitcast <4 x double> %a to <4 x i64>
	%bits0 = and <4 x i64> %b, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%cmp0 = icmp eq <4 x i64> %bits0, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%bits1 = and <4 x i64> %b, < i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495 >
	%cmp1 = icmp ne <4 x i64> %bits1, zeroinitializer 
	%cmp = and <4 x i1> %cmp0, %cmp1
	%ret = select <4 x i1> %cmp, <4 x i64> < i64 -1, i64 -1, i64 -1, i64 -1 >, <4 x i64> zeroinitializer
	ret <4 x i64> %ret
}
define <8 x i32> @_Z7isequalu2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp oeq <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <8 x i32> zeroinitializer
	ret <8 x i32> %ret
}
define <8 x i32> @_Z10isnotequalu2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp une <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <8 x i32> zeroinitializer
	ret <8 x i32> %ret
}
define <8 x i32> @_Z9isgreateru2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp ogt <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <8 x i32> zeroinitializer
	ret <8 x i32> %ret
}
define <8 x i32> @_Z14isgreaterequalu2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp oge <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <8 x i32> zeroinitializer
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6islessu2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp olt <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <8 x i32> zeroinitializer
	ret <8 x i32> %ret
}
define <8 x i32> @_Z11islessequalu2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp ole <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <8 x i32> zeroinitializer
	ret <8 x i32> %ret
}
define <8 x i32> @_Z13islessgreateru2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp one <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <8 x i32> zeroinitializer
	ret <8 x i32> %ret
}
define <8 x i32> @_Z5isinfu2v8f(<8 x float> %a) nounwind {
	%b = bitcast <8 x float> %a to <8 x i32>
	%bits = and <8 x i32> %b, < i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647 >
	%cmp = icmp ne <8 x i32> %bits, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%ret = select <8 x i1> %cmp, <8 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <8 x i32> zeroinitializer
	ret <8 x i32> %ret
}
define <8 x i32> @_Z5isnanu2v8f(<8 x float> %a) nounwind {
	%b = bitcast <8 x float> %a to <8 x i32>
	%bits0 = and <8 x i32> %b, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%cmp0 = icmp eq <8 x i32> %bits0, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%bits1 = and <8 x i32> %b, < i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607 >
	%cmp1 = icmp ne <8 x i32> %bits1, zeroinitializer 
	%cmp = and <8 x i1> %cmp0, %cmp1
	%ret = select <8 x i1> %cmp, <8 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <8 x i32> zeroinitializer
	ret <8 x i32> %ret
}
define <8 x i64> @_Z7isequalu2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp oeq <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <8 x i64> zeroinitializer
	ret <8 x i64> %ret
}
define <8 x i64> @_Z10isnotequalu2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp une <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <8 x i64> zeroinitializer
	ret <8 x i64> %ret
}
define <8 x i64> @_Z9isgreateru2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp ogt <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <8 x i64> zeroinitializer
	ret <8 x i64> %ret
}
define <8 x i64> @_Z14isgreaterequalu2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp oge <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <8 x i64> zeroinitializer
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6islessu2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp olt <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <8 x i64> zeroinitializer
	ret <8 x i64> %ret
}
define <8 x i64> @_Z11islessequalu2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp ole <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <8 x i64> zeroinitializer
	ret <8 x i64> %ret
}
define <8 x i64> @_Z13islessgreateru2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp one <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <8 x i64> zeroinitializer
	ret <8 x i64> %ret
}
define <8 x i64> @_Z5isinfu2v8d(<8 x double> %a) nounwind {
	%b = bitcast <8 x double> %a to <8 x i64>
	%bits = and <8 x i64> %b, < i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807 >
	%cmp = icmp ne <8 x i64> %bits, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%ret = select <8 x i1> %cmp, <8 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <8 x i64> zeroinitializer
	ret <8 x i64> %ret
}
define <8 x i64> @_Z5isnanu2v8d(<8 x double> %a) nounwind {
	%b = bitcast <8 x double> %a to <8 x i64>
	%bits0 = and <8 x i64> %b, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%cmp0 = icmp eq <8 x i64> %bits0, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%bits1 = and <8 x i64> %b, < i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495 >
	%cmp1 = icmp ne <8 x i64> %bits1, zeroinitializer 
	%cmp = and <8 x i1> %cmp0, %cmp1
	%ret = select <8 x i1> %cmp, <8 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <8 x i64> zeroinitializer
	ret <8 x i64> %ret
}
define <16 x i32> @_Z7isequalu3v16fu3v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp oeq <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <16 x i32> zeroinitializer
	ret <16 x i32> %ret
}
define <16 x i32> @_Z10isnotequalu3v16fu3v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp une <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <16 x i32> zeroinitializer
	ret <16 x i32> %ret
}
define <16 x i32> @_Z9isgreateru3v16fu3v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp ogt <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <16 x i32> zeroinitializer
	ret <16 x i32> %ret
}
define <16 x i32> @_Z14isgreaterequalu3v16fu3v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp oge <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <16 x i32> zeroinitializer
	ret <16 x i32> %ret
}
define <16 x i32> @_Z6islessu3v16fu3v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp olt <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <16 x i32> zeroinitializer
	ret <16 x i32> %ret
}
define <16 x i32> @_Z11islessequalu3v16fu3v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp ole <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <16 x i32> zeroinitializer
	ret <16 x i32> %ret
}
define <16 x i32> @_Z13islessgreateru3v16fu3v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp one <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <16 x i32> zeroinitializer
	ret <16 x i32> %ret
}
define <16 x i32> @_Z5isinfu3v16f(<16 x float> %a) nounwind {
	%b = bitcast <16 x float> %a to <16 x i32>
	%bits = and <16 x i32> %b, < i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647, i32 2147483647 >
	%cmp = icmp ne <16 x i32> %bits, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%ret = select <16 x i1> %cmp, <16 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <16 x i32> zeroinitializer
	ret <16 x i32> %ret
}
define <16 x i32> @_Z5isnanu3v16f(<16 x float> %a) nounwind {
	%b = bitcast <16 x float> %a to <16 x i32>
	%bits0 = and <16 x i32> %b, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%cmp0 = icmp eq <16 x i32> %bits0, < i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040 >
	%bits1 = and <16 x i32> %b, < i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607, i32 8388607 >
	%cmp1 = icmp ne <16 x i32> %bits1, zeroinitializer 
	%cmp = and <16 x i1> %cmp0, %cmp1
	%ret = select <16 x i1> %cmp, <16 x i32> < i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1 >, <16 x i32> zeroinitializer
	ret <16 x i32> %ret
}
define <16 x i64> @_Z7isequalu3v16du3v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp oeq <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <16 x i64> zeroinitializer
	ret <16 x i64> %ret
}
define <16 x i64> @_Z10isnotequalu3v16du3v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp une <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <16 x i64> zeroinitializer
	ret <16 x i64> %ret
}
define <16 x i64> @_Z9isgreateru3v16du3v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp ogt <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <16 x i64> zeroinitializer
	ret <16 x i64> %ret
}
define <16 x i64> @_Z14isgreaterequalu3v16du3v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp oge <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <16 x i64> zeroinitializer
	ret <16 x i64> %ret
}
define <16 x i64> @_Z6islessu3v16du3v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp olt <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <16 x i64> zeroinitializer
	ret <16 x i64> %ret
}
define <16 x i64> @_Z11islessequalu3v16du3v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp ole <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <16 x i64> zeroinitializer
	ret <16 x i64> %ret
}
define <16 x i64> @_Z13islessgreateru3v16du3v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp one <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <16 x i64> zeroinitializer
	ret <16 x i64> %ret
}
define <16 x i64> @_Z5isinfu3v16d(<16 x double> %a) nounwind {
	%b = bitcast <16 x double> %a to <16 x i64>
	%bits = and <16 x i64> %b, < i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807, i64 9223372036854775807 >
	%cmp = icmp ne <16 x i64> %bits, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%ret = select <16 x i1> %cmp, <16 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <16 x i64> zeroinitializer
	ret <16 x i64> %ret
}
define <16 x i64> @_Z5isnanu3v16d(<16 x double> %a) nounwind {
	%b = bitcast <16 x double> %a to <16 x i64>
	%bits0 = and <16 x i64> %b, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%cmp0 = icmp eq <16 x i64> %bits0, < i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312, i64 9218868437227405312 >
	%bits1 = and <16 x i64> %b, < i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495, i64 4503599627370495 >
	%cmp1 = icmp ne <16 x i64> %bits1, zeroinitializer 
	%cmp = and <16 x i1> %cmp0, %cmp1
	%ret = select <16 x i1> %cmp, <16 x i64> < i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1 >, <16 x i64> zeroinitializer
	ret <16 x i64> %ret
}
define i32 @_Z3allu2v2c(<2 x i8> %a) nounwind {
  %1 = extractelement <2 x i8> %a, i32 0
  %2 = extractelement <2 x i8> %a, i32 1
  %3 = and i8 %1, %2
  %.lobit = lshr i8 %3, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v2c(<2 x i8> %a) nounwind {
  %1 = extractelement <2 x i8> %a, i32 0
  %2 = extractelement <2 x i8> %a, i32 1
  %3 = or i8 %1, %2
  %.lobit = lshr i8 %3, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v2s(<2 x i16> %a) nounwind {
  %1 = extractelement <2 x i16> %a, i32 0
  %2 = extractelement <2 x i16> %a, i32 1
  %3 = and i16 %1, %2
  %.lobit = lshr i16 %3, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v2s(<2 x i16> %a) nounwind {
  %1 = extractelement <2 x i16> %a, i32 0
  %2 = extractelement <2 x i16> %a, i32 1
  %3 = or i16 %1, %2
  %.lobit = lshr i16 %3, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v2i(<2 x i32> %a) nounwind {
  %1 = extractelement <2 x i32> %a, i32 0
  %2 = extractelement <2 x i32> %a, i32 1
  %3 = and i32 %1, %2
  %.lobit = lshr i32 %3, 7
  ret i32 %.lobit
}
define i32 @_Z3anyu2v2i(<2 x i32> %a) nounwind {
  %1 = extractelement <2 x i32> %a, i32 0
  %2 = extractelement <2 x i32> %a, i32 1
  %3 = or i32 %1, %2
  %.lobit = lshr i32 %3, 7
  ret i32 %.lobit
}
define i32 @_Z3allu2v2l(<2 x i64> %a) nounwind {
  %1 = extractelement <2 x i64> %a, i32 0
  %2 = extractelement <2 x i64> %a, i32 1
  %3 = and i64 %1, %2
  %.lobit = lshr i64 %3, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v2l(<2 x i64> %a) nounwind {
  %1 = extractelement <2 x i64> %a, i32 0
  %2 = extractelement <2 x i64> %a, i32 1
  %3 = or i64 %1, %2
  %.lobit = lshr i64 %3, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v3c(<4 x i8> %a) nounwind {
  %1 = extractelement <4 x i8> %a, i32 0
  %2 = extractelement <4 x i8> %a, i32 1
  %3 = extractelement <4 x i8> %a, i32 2
  %4 = and i8 %1, %2
  %5 = and i8 %4, %3
  %.lobit = lshr i8 %5, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v3c(<4 x i8> %a) nounwind {
  %1 = extractelement <4 x i8> %a, i32 0
  %2 = extractelement <4 x i8> %a, i32 1
  %3 = extractelement <4 x i8> %a, i32 2
  %4 = or i8 %1, %2
  %5 = or i8 %4, %3
  %.lobit = lshr i8 %5, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v3s(<4 x i16> %a) nounwind {
  %1 = extractelement <4 x i16> %a, i32 0
  %2 = extractelement <4 x i16> %a, i32 1
  %3 = extractelement <4 x i16> %a, i32 2
  %4 = and i16 %1, %2
  %5 = and i16 %4, %3
  %.lobit = lshr i16 %5, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v3s(<4 x i16> %a) nounwind {
  %1 = extractelement <4 x i16> %a, i32 0
  %2 = extractelement <4 x i16> %a, i32 1
  %3 = extractelement <4 x i16> %a, i32 2
  %4 = or i16 %1, %2
  %5 = or i16 %4, %3
  %.lobit = lshr i16 %5, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v3i(<4 x i32> %a) nounwind {
  %1 = extractelement <4 x i32> %a, i32 0
  %2 = extractelement <4 x i32> %a, i32 1
  %3 = extractelement <4 x i32> %a, i32 2
  %4 = and i32 %1, %2
  %5 = and i32 %4, %3
  %.lobit = lshr i32 %5, 7
  ret i32 %.lobit
}
define i32 @_Z3anyu2v3i(<4 x i32> %a) nounwind {
  %1 = extractelement <4 x i32> %a, i32 0
  %2 = extractelement <4 x i32> %a, i32 1
  %3 = extractelement <4 x i32> %a, i32 2
  %4 = or i32 %1, %2
  %5 = or i32 %4, %3
  %.lobit = lshr i32 %5, 7
  ret i32 %.lobit
}
define i32 @_Z3allu2v3l(<4 x i64> %a) nounwind {
  %1 = extractelement <4 x i64> %a, i32 0
  %2 = extractelement <4 x i64> %a, i32 1
  %3 = extractelement <4 x i64> %a, i32 2
  %4 = and i64 %1, %2
  %5 = and i64 %4, %3
  %.lobit = lshr i64 %5, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v3l(<4 x i64> %a) nounwind {
  %1 = extractelement <4 x i64> %a, i32 0
  %2 = extractelement <4 x i64> %a, i32 1
  %3 = extractelement <4 x i64> %a, i32 2
  %4 = or i64 %1, %2
  %5 = or i64 %4, %3
  %.lobit = lshr i64 %5, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v4c(<4 x i8> %a) nounwind {
  %1 = extractelement <4 x i8> %a, i32 0
  %2 = extractelement <4 x i8> %a, i32 1
  %3 = extractelement <4 x i8> %a, i32 2
  %4 = extractelement <4 x i8> %a, i32 3
  %5 = and i8 %1, %2
  %6 = and i8 %5, %3
  %7 = and i8 %6, %4
  %.lobit = lshr i8 %7, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v4c(<4 x i8> %a) nounwind {
  %1 = extractelement <4 x i8> %a, i32 0
  %2 = extractelement <4 x i8> %a, i32 1
  %3 = extractelement <4 x i8> %a, i32 2
  %4 = extractelement <4 x i8> %a, i32 3
  %5 = or i8 %1, %2
  %6 = or i8 %5, %3
  %7 = or i8 %6, %4
  %.lobit = lshr i8 %7, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v4s(<4 x i16> %a) nounwind {
  %1 = extractelement <4 x i16> %a, i32 0
  %2 = extractelement <4 x i16> %a, i32 1
  %3 = extractelement <4 x i16> %a, i32 2
  %4 = extractelement <4 x i16> %a, i32 3
  %5 = and i16 %1, %2
  %6 = and i16 %5, %3
  %7 = and i16 %6, %4
  %.lobit = lshr i16 %7, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v4s(<4 x i16> %a) nounwind {
  %1 = extractelement <4 x i16> %a, i32 0
  %2 = extractelement <4 x i16> %a, i32 1
  %3 = extractelement <4 x i16> %a, i32 2
  %4 = extractelement <4 x i16> %a, i32 3
  %5 = or i16 %1, %2
  %6 = or i16 %5, %3
  %7 = or i16 %6, %4
  %.lobit = lshr i16 %7, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v4i(<4 x i32> %a) nounwind {
  %1 = extractelement <4 x i32> %a, i32 0
  %2 = extractelement <4 x i32> %a, i32 1
  %3 = extractelement <4 x i32> %a, i32 2
  %4 = extractelement <4 x i32> %a, i32 3
  %5 = and i32 %1, %2
  %6 = and i32 %5, %3
  %7 = and i32 %6, %4
  %.lobit = lshr i32 %7, 7
  ret i32 %.lobit
}
define i32 @_Z3anyu2v4i(<4 x i32> %a) nounwind {
  %1 = extractelement <4 x i32> %a, i32 0
  %2 = extractelement <4 x i32> %a, i32 1
  %3 = extractelement <4 x i32> %a, i32 2
  %4 = extractelement <4 x i32> %a, i32 3
  %5 = or i32 %1, %2
  %6 = or i32 %5, %3
  %7 = or i32 %6, %4
  %.lobit = lshr i32 %7, 7
  ret i32 %.lobit
}
define i32 @_Z3allu2v4l(<4 x i64> %a) nounwind {
  %1 = extractelement <4 x i64> %a, i32 0
  %2 = extractelement <4 x i64> %a, i32 1
  %3 = extractelement <4 x i64> %a, i32 2
  %4 = extractelement <4 x i64> %a, i32 3
  %5 = and i64 %1, %2
  %6 = and i64 %5, %3
  %7 = and i64 %6, %4
  %.lobit = lshr i64 %7, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v4l(<4 x i64> %a) nounwind {
  %1 = extractelement <4 x i64> %a, i32 0
  %2 = extractelement <4 x i64> %a, i32 1
  %3 = extractelement <4 x i64> %a, i32 2
  %4 = extractelement <4 x i64> %a, i32 3
  %5 = or i64 %1, %2
  %6 = or i64 %5, %3
  %7 = or i64 %6, %4
  %.lobit = lshr i64 %7, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v8c(<8 x i8> %a) nounwind {
  %1 = extractelement <8 x i8> %a, i32 0
  %2 = extractelement <8 x i8> %a, i32 1
  %3 = extractelement <8 x i8> %a, i32 2
  %4 = extractelement <8 x i8> %a, i32 3
  %5 = extractelement <8 x i8> %a, i32 4
  %6 = extractelement <8 x i8> %a, i32 5
  %7 = extractelement <8 x i8> %a, i32 6
  %8 = extractelement <8 x i8> %a, i32 7
  %9 = and i8 %1, %2
  %10 = and i8 %9, %3
  %11 = and i8 %10, %4
  %12 = and i8 %11, %5
  %13 = and i8 %12, %6
  %14 = and i8 %13, %7
  %15 = and i8 %14, %8
  %.lobit = lshr i8 %15, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v8c(<8 x i8> %a) nounwind {
  %1 = extractelement <8 x i8> %a, i32 0
  %2 = extractelement <8 x i8> %a, i32 1
  %3 = extractelement <8 x i8> %a, i32 2
  %4 = extractelement <8 x i8> %a, i32 3
  %5 = extractelement <8 x i8> %a, i32 4
  %6 = extractelement <8 x i8> %a, i32 5
  %7 = extractelement <8 x i8> %a, i32 6
  %8 = extractelement <8 x i8> %a, i32 7
  %9 = or i8 %1, %2
  %10 = or i8 %9, %3
  %11 = or i8 %10, %4
  %12 = or i8 %11, %5
  %13 = or i8 %12, %6
  %14 = or i8 %13, %7
  %15 = or i8 %14, %8
  %.lobit = lshr i8 %15, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v8s(<8 x i16> %a) nounwind {
  %1 = extractelement <8 x i16> %a, i32 0
  %2 = extractelement <8 x i16> %a, i32 1
  %3 = extractelement <8 x i16> %a, i32 2
  %4 = extractelement <8 x i16> %a, i32 3
  %5 = extractelement <8 x i16> %a, i32 4
  %6 = extractelement <8 x i16> %a, i32 5
  %7 = extractelement <8 x i16> %a, i32 6
  %8 = extractelement <8 x i16> %a, i32 7
  %9 = and i16 %1, %2
  %10 = and i16 %9, %3
  %11 = and i16 %10, %4
  %12 = and i16 %11, %5
  %13 = and i16 %12, %6
  %14 = and i16 %13, %7
  %15 = and i16 %14, %8
  %.lobit = lshr i16 %15, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v8s(<8 x i16> %a) nounwind {
  %1 = extractelement <8 x i16> %a, i32 0
  %2 = extractelement <8 x i16> %a, i32 1
  %3 = extractelement <8 x i16> %a, i32 2
  %4 = extractelement <8 x i16> %a, i32 3
  %5 = extractelement <8 x i16> %a, i32 4
  %6 = extractelement <8 x i16> %a, i32 5
  %7 = extractelement <8 x i16> %a, i32 6
  %8 = extractelement <8 x i16> %a, i32 7
  %9 = or i16 %1, %2
  %10 = or i16 %9, %3
  %11 = or i16 %10, %4
  %12 = or i16 %11, %5
  %13 = or i16 %12, %6
  %14 = or i16 %13, %7
  %15 = or i16 %14, %8
  %.lobit = lshr i16 %15, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu2v8i(<8 x i32> %a) nounwind {
  %1 = extractelement <8 x i32> %a, i32 0
  %2 = extractelement <8 x i32> %a, i32 1
  %3 = extractelement <8 x i32> %a, i32 2
  %4 = extractelement <8 x i32> %a, i32 3
  %5 = extractelement <8 x i32> %a, i32 4
  %6 = extractelement <8 x i32> %a, i32 5
  %7 = extractelement <8 x i32> %a, i32 6
  %8 = extractelement <8 x i32> %a, i32 7
  %9 = and i32 %1, %2
  %10 = and i32 %9, %3
  %11 = and i32 %10, %4
  %12 = and i32 %11, %5
  %13 = and i32 %12, %6
  %14 = and i32 %13, %7
  %15 = and i32 %14, %8
  %.lobit = lshr i32 %15, 7
  ret i32 %.lobit
}
define i32 @_Z3anyu2v8i(<8 x i32> %a) nounwind {
  %1 = extractelement <8 x i32> %a, i32 0
  %2 = extractelement <8 x i32> %a, i32 1
  %3 = extractelement <8 x i32> %a, i32 2
  %4 = extractelement <8 x i32> %a, i32 3
  %5 = extractelement <8 x i32> %a, i32 4
  %6 = extractelement <8 x i32> %a, i32 5
  %7 = extractelement <8 x i32> %a, i32 6
  %8 = extractelement <8 x i32> %a, i32 7
  %9 = or i32 %1, %2
  %10 = or i32 %9, %3
  %11 = or i32 %10, %4
  %12 = or i32 %11, %5
  %13 = or i32 %12, %6
  %14 = or i32 %13, %7
  %15 = or i32 %14, %8
  %.lobit = lshr i32 %15, 7
  ret i32 %.lobit
}
define i32 @_Z3allu2v8l(<8 x i64> %a) nounwind {
  %1 = extractelement <8 x i64> %a, i32 0
  %2 = extractelement <8 x i64> %a, i32 1
  %3 = extractelement <8 x i64> %a, i32 2
  %4 = extractelement <8 x i64> %a, i32 3
  %5 = extractelement <8 x i64> %a, i32 4
  %6 = extractelement <8 x i64> %a, i32 5
  %7 = extractelement <8 x i64> %a, i32 6
  %8 = extractelement <8 x i64> %a, i32 7
  %9 = and i64 %1, %2
  %10 = and i64 %9, %3
  %11 = and i64 %10, %4
  %12 = and i64 %11, %5
  %13 = and i64 %12, %6
  %14 = and i64 %13, %7
  %15 = and i64 %14, %8
  %.lobit = lshr i64 %15, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu2v8l(<8 x i64> %a) nounwind {
  %1 = extractelement <8 x i64> %a, i32 0
  %2 = extractelement <8 x i64> %a, i32 1
  %3 = extractelement <8 x i64> %a, i32 2
  %4 = extractelement <8 x i64> %a, i32 3
  %5 = extractelement <8 x i64> %a, i32 4
  %6 = extractelement <8 x i64> %a, i32 5
  %7 = extractelement <8 x i64> %a, i32 6
  %8 = extractelement <8 x i64> %a, i32 7
  %9 = or i64 %1, %2
  %10 = or i64 %9, %3
  %11 = or i64 %10, %4
  %12 = or i64 %11, %5
  %13 = or i64 %12, %6
  %14 = or i64 %13, %7
  %15 = or i64 %14, %8
  %.lobit = lshr i64 %15, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu3v16c(<16 x i8> %a) nounwind {
  %1 = extractelement <16 x i8> %a, i32 0
  %2 = extractelement <16 x i8> %a, i32 1
  %3 = extractelement <16 x i8> %a, i32 2
  %4 = extractelement <16 x i8> %a, i32 3
  %5 = extractelement <16 x i8> %a, i32 4
  %6 = extractelement <16 x i8> %a, i32 5
  %7 = extractelement <16 x i8> %a, i32 6
  %8 = extractelement <16 x i8> %a, i32 7
  %9 = extractelement <16 x i8> %a, i32 8
  %10 = extractelement <16 x i8> %a, i32 9
  %11 = extractelement <16 x i8> %a, i32 10
  %12 = extractelement <16 x i8> %a, i32 11
  %13 = extractelement <16 x i8> %a, i32 12
  %14 = extractelement <16 x i8> %a, i32 13
  %15 = extractelement <16 x i8> %a, i32 14
  %16 = extractelement <16 x i8> %a, i32 15
  %17 = and i8 %1, %2
  %18 = and i8 %17, %3
  %19 = and i8 %18, %4
  %20 = and i8 %19, %5
  %21 = and i8 %20, %6
  %22 = and i8 %21, %7
  %23 = and i8 %22, %8
  %24 = and i8 %23, %9
  %25 = and i8 %24, %10
  %26 = and i8 %25, %11
  %27 = and i8 %26, %12
  %28 = and i8 %27, %13
  %29 = and i8 %28, %14
  %30 = and i8 %29, %15
  %31 = and i8 %30, %16
  %.lobit = lshr i8 %31, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu3v16c(<16 x i8> %a) nounwind {
  %1 = extractelement <16 x i8> %a, i32 0
  %2 = extractelement <16 x i8> %a, i32 1
  %3 = extractelement <16 x i8> %a, i32 2
  %4 = extractelement <16 x i8> %a, i32 3
  %5 = extractelement <16 x i8> %a, i32 4
  %6 = extractelement <16 x i8> %a, i32 5
  %7 = extractelement <16 x i8> %a, i32 6
  %8 = extractelement <16 x i8> %a, i32 7
  %9 = extractelement <16 x i8> %a, i32 8
  %10 = extractelement <16 x i8> %a, i32 9
  %11 = extractelement <16 x i8> %a, i32 10
  %12 = extractelement <16 x i8> %a, i32 11
  %13 = extractelement <16 x i8> %a, i32 12
  %14 = extractelement <16 x i8> %a, i32 13
  %15 = extractelement <16 x i8> %a, i32 14
  %16 = extractelement <16 x i8> %a, i32 15
  %17 = or i8 %1, %2
  %18 = or i8 %17, %3
  %19 = or i8 %18, %4
  %20 = or i8 %19, %5
  %21 = or i8 %20, %6
  %22 = or i8 %21, %7
  %23 = or i8 %22, %8
  %24 = or i8 %23, %9
  %25 = or i8 %24, %10
  %26 = or i8 %25, %11
  %27 = or i8 %26, %12
  %28 = or i8 %27, %13
  %29 = or i8 %28, %14
  %30 = or i8 %29, %15
  %31 = or i8 %30, %16
  %.lobit = lshr i8 %31, 7
  %ret = zext i8 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu3v16s(<16 x i16> %a) nounwind {
  %1 = extractelement <16 x i16> %a, i32 0
  %2 = extractelement <16 x i16> %a, i32 1
  %3 = extractelement <16 x i16> %a, i32 2
  %4 = extractelement <16 x i16> %a, i32 3
  %5 = extractelement <16 x i16> %a, i32 4
  %6 = extractelement <16 x i16> %a, i32 5
  %7 = extractelement <16 x i16> %a, i32 6
  %8 = extractelement <16 x i16> %a, i32 7
  %9 = extractelement <16 x i16> %a, i32 8
  %10 = extractelement <16 x i16> %a, i32 9
  %11 = extractelement <16 x i16> %a, i32 10
  %12 = extractelement <16 x i16> %a, i32 11
  %13 = extractelement <16 x i16> %a, i32 12
  %14 = extractelement <16 x i16> %a, i32 13
  %15 = extractelement <16 x i16> %a, i32 14
  %16 = extractelement <16 x i16> %a, i32 15
  %17 = and i16 %1, %2
  %18 = and i16 %17, %3
  %19 = and i16 %18, %4
  %20 = and i16 %19, %5
  %21 = and i16 %20, %6
  %22 = and i16 %21, %7
  %23 = and i16 %22, %8
  %24 = and i16 %23, %9
  %25 = and i16 %24, %10
  %26 = and i16 %25, %11
  %27 = and i16 %26, %12
  %28 = and i16 %27, %13
  %29 = and i16 %28, %14
  %30 = and i16 %29, %15
  %31 = and i16 %30, %16
  %.lobit = lshr i16 %31, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu3v16s(<16 x i16> %a) nounwind {
  %1 = extractelement <16 x i16> %a, i32 0
  %2 = extractelement <16 x i16> %a, i32 1
  %3 = extractelement <16 x i16> %a, i32 2
  %4 = extractelement <16 x i16> %a, i32 3
  %5 = extractelement <16 x i16> %a, i32 4
  %6 = extractelement <16 x i16> %a, i32 5
  %7 = extractelement <16 x i16> %a, i32 6
  %8 = extractelement <16 x i16> %a, i32 7
  %9 = extractelement <16 x i16> %a, i32 8
  %10 = extractelement <16 x i16> %a, i32 9
  %11 = extractelement <16 x i16> %a, i32 10
  %12 = extractelement <16 x i16> %a, i32 11
  %13 = extractelement <16 x i16> %a, i32 12
  %14 = extractelement <16 x i16> %a, i32 13
  %15 = extractelement <16 x i16> %a, i32 14
  %16 = extractelement <16 x i16> %a, i32 15
  %17 = or i16 %1, %2
  %18 = or i16 %17, %3
  %19 = or i16 %18, %4
  %20 = or i16 %19, %5
  %21 = or i16 %20, %6
  %22 = or i16 %21, %7
  %23 = or i16 %22, %8
  %24 = or i16 %23, %9
  %25 = or i16 %24, %10
  %26 = or i16 %25, %11
  %27 = or i16 %26, %12
  %28 = or i16 %27, %13
  %29 = or i16 %28, %14
  %30 = or i16 %29, %15
  %31 = or i16 %30, %16
  %.lobit = lshr i16 %31, 7
  %ret = zext i16 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3allu3v16i(<16 x i32> %a) nounwind {
  %1 = extractelement <16 x i32> %a, i32 0
  %2 = extractelement <16 x i32> %a, i32 1
  %3 = extractelement <16 x i32> %a, i32 2
  %4 = extractelement <16 x i32> %a, i32 3
  %5 = extractelement <16 x i32> %a, i32 4
  %6 = extractelement <16 x i32> %a, i32 5
  %7 = extractelement <16 x i32> %a, i32 6
  %8 = extractelement <16 x i32> %a, i32 7
  %9 = extractelement <16 x i32> %a, i32 8
  %10 = extractelement <16 x i32> %a, i32 9
  %11 = extractelement <16 x i32> %a, i32 10
  %12 = extractelement <16 x i32> %a, i32 11
  %13 = extractelement <16 x i32> %a, i32 12
  %14 = extractelement <16 x i32> %a, i32 13
  %15 = extractelement <16 x i32> %a, i32 14
  %16 = extractelement <16 x i32> %a, i32 15
  %17 = and i32 %1, %2
  %18 = and i32 %17, %3
  %19 = and i32 %18, %4
  %20 = and i32 %19, %5
  %21 = and i32 %20, %6
  %22 = and i32 %21, %7
  %23 = and i32 %22, %8
  %24 = and i32 %23, %9
  %25 = and i32 %24, %10
  %26 = and i32 %25, %11
  %27 = and i32 %26, %12
  %28 = and i32 %27, %13
  %29 = and i32 %28, %14
  %30 = and i32 %29, %15
  %31 = and i32 %30, %16
  %.lobit = lshr i32 %31, 7
  ret i32 %.lobit
}
define i32 @_Z3anyu3v16i(<16 x i32> %a) nounwind {
  %1 = extractelement <16 x i32> %a, i32 0
  %2 = extractelement <16 x i32> %a, i32 1
  %3 = extractelement <16 x i32> %a, i32 2
  %4 = extractelement <16 x i32> %a, i32 3
  %5 = extractelement <16 x i32> %a, i32 4
  %6 = extractelement <16 x i32> %a, i32 5
  %7 = extractelement <16 x i32> %a, i32 6
  %8 = extractelement <16 x i32> %a, i32 7
  %9 = extractelement <16 x i32> %a, i32 8
  %10 = extractelement <16 x i32> %a, i32 9
  %11 = extractelement <16 x i32> %a, i32 10
  %12 = extractelement <16 x i32> %a, i32 11
  %13 = extractelement <16 x i32> %a, i32 12
  %14 = extractelement <16 x i32> %a, i32 13
  %15 = extractelement <16 x i32> %a, i32 14
  %16 = extractelement <16 x i32> %a, i32 15
  %17 = or i32 %1, %2
  %18 = or i32 %17, %3
  %19 = or i32 %18, %4
  %20 = or i32 %19, %5
  %21 = or i32 %20, %6
  %22 = or i32 %21, %7
  %23 = or i32 %22, %8
  %24 = or i32 %23, %9
  %25 = or i32 %24, %10
  %26 = or i32 %25, %11
  %27 = or i32 %26, %12
  %28 = or i32 %27, %13
  %29 = or i32 %28, %14
  %30 = or i32 %29, %15
  %31 = or i32 %30, %16
  %.lobit = lshr i32 %31, 7
  ret i32 %.lobit
}
define i32 @_Z3allu3v16l(<16 x i64> %a) nounwind {
  %1 = extractelement <16 x i64> %a, i32 0
  %2 = extractelement <16 x i64> %a, i32 1
  %3 = extractelement <16 x i64> %a, i32 2
  %4 = extractelement <16 x i64> %a, i32 3
  %5 = extractelement <16 x i64> %a, i32 4
  %6 = extractelement <16 x i64> %a, i32 5
  %7 = extractelement <16 x i64> %a, i32 6
  %8 = extractelement <16 x i64> %a, i32 7
  %9 = extractelement <16 x i64> %a, i32 8
  %10 = extractelement <16 x i64> %a, i32 9
  %11 = extractelement <16 x i64> %a, i32 10
  %12 = extractelement <16 x i64> %a, i32 11
  %13 = extractelement <16 x i64> %a, i32 12
  %14 = extractelement <16 x i64> %a, i32 13
  %15 = extractelement <16 x i64> %a, i32 14
  %16 = extractelement <16 x i64> %a, i32 15
  %17 = and i64 %1, %2
  %18 = and i64 %17, %3
  %19 = and i64 %18, %4
  %20 = and i64 %19, %5
  %21 = and i64 %20, %6
  %22 = and i64 %21, %7
  %23 = and i64 %22, %8
  %24 = and i64 %23, %9
  %25 = and i64 %24, %10
  %26 = and i64 %25, %11
  %27 = and i64 %26, %12
  %28 = and i64 %27, %13
  %29 = and i64 %28, %14
  %30 = and i64 %29, %15
  %31 = and i64 %30, %16
  %.lobit = lshr i64 %31, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
define i32 @_Z3anyu3v16l(<16 x i64> %a) nounwind {
  %1 = extractelement <16 x i64> %a, i32 0
  %2 = extractelement <16 x i64> %a, i32 1
  %3 = extractelement <16 x i64> %a, i32 2
  %4 = extractelement <16 x i64> %a, i32 3
  %5 = extractelement <16 x i64> %a, i32 4
  %6 = extractelement <16 x i64> %a, i32 5
  %7 = extractelement <16 x i64> %a, i32 6
  %8 = extractelement <16 x i64> %a, i32 7
  %9 = extractelement <16 x i64> %a, i32 8
  %10 = extractelement <16 x i64> %a, i32 9
  %11 = extractelement <16 x i64> %a, i32 10
  %12 = extractelement <16 x i64> %a, i32 11
  %13 = extractelement <16 x i64> %a, i32 12
  %14 = extractelement <16 x i64> %a, i32 13
  %15 = extractelement <16 x i64> %a, i32 14
  %16 = extractelement <16 x i64> %a, i32 15
  %17 = or i64 %1, %2
  %18 = or i64 %17, %3
  %19 = or i64 %18, %4
  %20 = or i64 %19, %5
  %21 = or i64 %20, %6
  %22 = or i64 %21, %7
  %23 = or i64 %22, %8
  %24 = or i64 %23, %9
  %25 = or i64 %24, %10
  %26 = or i64 %25, %11
  %27 = or i64 %26, %12
  %28 = or i64 %27, %13
  %29 = or i64 %28, %14
  %30 = or i64 %29, %15
  %31 = or i64 %30, %16
  %.lobit = lshr i64 %31, 7
  %ret = trunc i64 %.lobit to i32
  ret i32 %ret
}
