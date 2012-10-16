; ModuleID = 'select.ll'

define i8 @_Z6selectccc(i8 %a, i8 %b, i8 %c) nounwind {
	%cb = icmp ne i8 %c, zeroinitializer
	%ret = select i1 %cb, i8 %b, i8 %a
	ret i8 %ret
}
define i8 @_Z6selectcch(i8 %a, i8 %b, i8 %c) nounwind {
	%cb = icmp ne i8 %c, zeroinitializer
	%ret = select i1 %cb, i8 %b, i8 %a
	ret i8 %ret
}
define i8 @_Z6selecthhc(i8 %a, i8 %b, i8 %c) nounwind {
	%cb = icmp ne i8 %c, zeroinitializer
	%ret = select i1 %cb, i8 %b, i8 %a
	ret i8 %ret
}
define i8 @_Z6selecthhh(i8 %a, i8 %b, i8 %c) nounwind {
	%cb = icmp ne i8 %c, zeroinitializer
	%ret = select i1 %cb, i8 %b, i8 %a
	ret i8 %ret
}
define i16 @_Z6selectsss(i16 %a, i16 %b, i16 %c) nounwind {
	%cb = icmp ne i16 %c, zeroinitializer
	%ret = select i1 %cb, i16 %b, i16 %a
	ret i16 %ret
}
define i16 @_Z6selectsst(i16 %a, i16 %b, i16 %c) nounwind {
	%cb = icmp ne i16 %c, zeroinitializer
	%ret = select i1 %cb, i16 %b, i16 %a
	ret i16 %ret
}
define i16 @_Z6selecttts(i16 %a, i16 %b, i16 %c) nounwind {
	%cb = icmp ne i16 %c, zeroinitializer
	%ret = select i1 %cb, i16 %b, i16 %a
	ret i16 %ret
}
define i16 @_Z6selectttt(i16 %a, i16 %b, i16 %c) nounwind {
	%cb = icmp ne i16 %c, zeroinitializer
	%ret = select i1 %cb, i16 %b, i16 %a
	ret i16 %ret
}
define i32 @_Z6selectiii(i32 %a, i32 %b, i32 %c) nounwind {
	%cb = icmp ne i32 %c, zeroinitializer
	%ret = select i1 %cb, i32 %b, i32 %a
	ret i32 %ret
}
define i32 @_Z6selectiij(i32 %a, i32 %b, i32 %c) nounwind {
	%cb = icmp ne i32 %c, zeroinitializer
	%ret = select i1 %cb, i32 %b, i32 %a
	ret i32 %ret
}
define i32 @_Z6selectjji(i32 %a, i32 %b, i32 %c) nounwind {
	%cb = icmp ne i32 %c, zeroinitializer
	%ret = select i1 %cb, i32 %b, i32 %a
	ret i32 %ret
}
define i32 @_Z6selectjjj(i32 %a, i32 %b, i32 %c) nounwind {
	%cb = icmp ne i32 %c, zeroinitializer
	%ret = select i1 %cb, i32 %b, i32 %a
	ret i32 %ret
}
define i64 @_Z6selectlll(i64 %a, i64 %b, i64 %c) nounwind {
	%cb = icmp ne i64 %c, zeroinitializer
	%ret = select i1 %cb, i64 %b, i64 %a
	ret i64 %ret
}
define i64 @_Z6selectllm(i64 %a, i64 %b, i64 %c) nounwind {
	%cb = icmp ne i64 %c, zeroinitializer
	%ret = select i1 %cb, i64 %b, i64 %a
	ret i64 %ret
}
define i64 @_Z6selectmml(i64 %a, i64 %b, i64 %c) nounwind {
	%cb = icmp ne i64 %c, zeroinitializer
	%ret = select i1 %cb, i64 %b, i64 %a
	ret i64 %ret
}
define i64 @_Z6selectmmm(i64 %a, i64 %b, i64 %c) nounwind {
	%cb = icmp ne i64 %c, zeroinitializer
	%ret = select i1 %cb, i64 %b, i64 %a
	ret i64 %ret
}
define float @_Z6selectffi(float %a, float %b, i32 %c) nounwind {
	%cb = icmp ne i32 %c, zeroinitializer
	%ret = select i1 %cb, float %b, float %a
	ret float %ret
}
define float @_Z6selectffj(float %a, float %b, i32 %c) nounwind {
	%cb = icmp ne i32 %c, zeroinitializer
	%ret = select i1 %cb, float %b, float %a
	ret float %ret
}
define double @_Z6selectddl(double %a, double %b, i64 %c) nounwind {
	%cb = icmp ne i64 %c, zeroinitializer
	%ret = select i1 %cb, double %b, double %a
	ret double %ret
}
define double @_Z6selectddm(double %a, double %b, i64 %c) nounwind {
	%cb = icmp ne i64 %c, zeroinitializer
	%ret = select i1 %cb, double %b, double %a
	ret double %ret
}
define <2 x i8> @_Z6selectu2v2cu2v2cu2v2c(<2 x i8> %a, <2 x i8> %b, <2 x i8> %c) nounwind {
	%cm = and <2 x i8> %c, <i8 128, i8 128>
	%cb = icmp ne <2 x i8> %cm, <i8 128, i8 128>
	%ret = select <2 x i1> %cb, <2 x i8> %b, <2 x i8> %a
	ret <2 x i8> %ret
}
define <2 x i8> @_Z6selectu2v2cu2v2cu2v2h(<2 x i8> %a, <2 x i8> %b, <2 x i8> %c) nounwind {
	%cm = and <2 x i8> %c, <i8 128, i8 128>
	%cb = icmp ne <2 x i8> %cm, <i8 128, i8 128>
	%ret = select <2 x i1> %cb, <2 x i8> %b, <2 x i8> %a
	ret <2 x i8> %ret
}
define <2 x i8> @_Z6selectu2v2hu2v2hu2v2c(<2 x i8> %a, <2 x i8> %b, <2 x i8> %c) nounwind {
	%cm = and <2 x i8> %c, <i8 128, i8 128>
	%cb = icmp ne <2 x i8> %cm, <i8 128, i8 128>
	%ret = select <2 x i1> %cb, <2 x i8> %b, <2 x i8> %a
	ret <2 x i8> %ret
}
define <2 x i8> @_Z6selectu2v2hu2v2hu2v2h(<2 x i8> %a, <2 x i8> %b, <2 x i8> %c) nounwind {
	%cm = and <2 x i8> %c, <i8 128, i8 128>
	%cb = icmp ne <2 x i8> %cm, <i8 128, i8 128>
	%ret = select <2 x i1> %cb, <2 x i8> %b, <2 x i8> %a
	ret <2 x i8> %ret
}
define <2 x i16> @_Z6selectu2v2su2v2su2v2s(<2 x i16> %a, <2 x i16> %b, <2 x i16> %c) nounwind {
	%cm = and <2 x i16> %c, <i16 32768, i16 32768>
	%cb = icmp ne <2 x i16> %cm, <i16 32768, i16 32768>
	%ret = select <2 x i1> %cb, <2 x i16> %b, <2 x i16> %a
	ret <2 x i16> %ret
}
define <2 x i16> @_Z6selectu2v2su2v2su2v2t(<2 x i16> %a, <2 x i16> %b, <2 x i16> %c) nounwind {
	%cm = and <2 x i16> %c, <i16 32768, i16 32768>
	%cb = icmp ne <2 x i16> %cm, <i16 32768, i16 32768>
	%ret = select <2 x i1> %cb, <2 x i16> %b, <2 x i16> %a
	ret <2 x i16> %ret
}
define <2 x i16> @_Z6selectu2v2tu2v2tu2v2s(<2 x i16> %a, <2 x i16> %b, <2 x i16> %c) nounwind {
	%cm = and <2 x i16> %c, <i16 32768, i16 32768>
	%cb = icmp ne <2 x i16> %cm, <i16 32768, i16 32768>
	%ret = select <2 x i1> %cb, <2 x i16> %b, <2 x i16> %a
	ret <2 x i16> %ret
}
define <2 x i16> @_Z6selectu2v2tu2v2tu2v2t(<2 x i16> %a, <2 x i16> %b, <2 x i16> %c) nounwind {
	%cm = and <2 x i16> %c, <i16 32768, i16 32768>
	%cb = icmp ne <2 x i16> %cm, <i16 32768, i16 32768>
	%ret = select <2 x i1> %cb, <2 x i16> %b, <2 x i16> %a
	ret <2 x i16> %ret
}
define <2 x i32> @_Z6selectu2v2iu2v2iu2v2i(<2 x i32> %a, <2 x i32> %b, <2 x i32> %c) nounwind {
	%cm = and <2 x i32> %c, <i32 2147483648, i32 2147483648>
	%cb = icmp ne <2 x i32> %cm, <i32 2147483648, i32 2147483648>
	%ret = select <2 x i1> %cb, <2 x i32> %b, <2 x i32> %a
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6selectu2v2iu2v2iu2v2j(<2 x i32> %a, <2 x i32> %b, <2 x i32> %c) nounwind {
	%cm = and <2 x i32> %c, <i32 2147483648, i32 2147483648>
	%cb = icmp ne <2 x i32> %cm, <i32 2147483648, i32 2147483648>
	%ret = select <2 x i1> %cb, <2 x i32> %b, <2 x i32> %a
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6selectu2v2ju2v2ju2v2i(<2 x i32> %a, <2 x i32> %b, <2 x i32> %c) nounwind {
	%cm = and <2 x i32> %c, <i32 2147483648, i32 2147483648>
	%cb = icmp ne <2 x i32> %cm, <i32 2147483648, i32 2147483648>
	%ret = select <2 x i1> %cb, <2 x i32> %b, <2 x i32> %a
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6selectu2v2ju2v2ju2v2j(<2 x i32> %a, <2 x i32> %b, <2 x i32> %c) nounwind {
	%cm = and <2 x i32> %c, <i32 2147483648, i32 2147483648>
	%cb = icmp ne <2 x i32> %cm, <i32 2147483648, i32 2147483648>
	%ret = select <2 x i1> %cb, <2 x i32> %b, <2 x i32> %a
	ret <2 x i32> %ret
}
define <2 x i64> @_Z6selectu2v2lu2v2lu2v2l(<2 x i64> %a, <2 x i64> %b, <2 x i64> %c) nounwind {
	%cm = and <2 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <2 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <2 x i1> %cb, <2 x i64> %b, <2 x i64> %a
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6selectu2v2lu2v2lu2v2m(<2 x i64> %a, <2 x i64> %b, <2 x i64> %c) nounwind {
	%cm = and <2 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <2 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <2 x i1> %cb, <2 x i64> %b, <2 x i64> %a
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6selectu2v2mu2v2mu2v2l(<2 x i64> %a, <2 x i64> %b, <2 x i64> %c) nounwind {
	%cm = and <2 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <2 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <2 x i1> %cb, <2 x i64> %b, <2 x i64> %a
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6selectu2v2mu2v2mu2v2m(<2 x i64> %a, <2 x i64> %b, <2 x i64> %c) nounwind {
	%cm = and <2 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <2 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <2 x i1> %cb, <2 x i64> %b, <2 x i64> %a
	ret <2 x i64> %ret
}
define <2 x float> @_Z6selectu2v2fu2v2fu2v2i(<2 x float> %a, <2 x float> %b, <2 x i32> %c) nounwind {
	%cm = and <2 x i32> %c, <i32 2147483648, i32 2147483648>
	%cb = icmp ne <2 x i32> %cm, <i32 2147483648, i32 2147483648>
	%ret = select <2 x i1> %cb, <2 x float> %b, <2 x float> %a
	ret <2 x float> %ret
}
define <2 x float> @_Z6selectu2v2fu2v2fu2v2j(<2 x float> %a, <2 x float> %b, <2 x i32> %c) nounwind {
	%cm = and <2 x i32> %c, <i32 2147483648, i32 2147483648>
	%cb = icmp ne <2 x i32> %cm, <i32 2147483648, i32 2147483648>
	%ret = select <2 x i1> %cb, <2 x float> %b, <2 x float> %a
	ret <2 x float> %ret
}
define <2 x double> @_Z6selectu2v2du2v2du2v2l(<2 x double> %a, <2 x double> %b, <2 x i64> %c) nounwind {
	%cm = and <2 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <2 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <2 x i1> %cb, <2 x double> %b, <2 x double> %a
	ret <2 x double> %ret
}
define <2 x double> @_Z6selectu2v2du2v2du2v2m(<2 x double> %a, <2 x double> %b, <2 x i64> %c) nounwind {
	%cm = and <2 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <2 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <2 x i1> %cb, <2 x double> %b, <2 x double> %a
	ret <2 x double> %ret
}
define <4 x i8> @_Z6selectu2v3cu2v3cu2v3c(<4 x i8> %a, <4 x i8> %b, <4 x i8> %c) nounwind {
	%cm = and <4 x i8> %c, <i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <4 x i8> %cm, <i8 128, i8 128, i8 128, i8 128>
	%ret = select <4 x i1> %cb, <4 x i8> %b, <4 x i8> %a
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6selectu2v3cu2v3cu2v3h(<4 x i8> %a, <4 x i8> %b, <4 x i8> %c) nounwind {
	%cm = and <4 x i8> %c, <i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <4 x i8> %cm, <i8 128, i8 128, i8 128, i8 128>
	%ret = select <4 x i1> %cb, <4 x i8> %b, <4 x i8> %a
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6selectu2v3hu2v3hu2v3c(<4 x i8> %a, <4 x i8> %b, <4 x i8> %c) nounwind {
	%cm = and <4 x i8> %c, <i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <4 x i8> %cm, <i8 128, i8 128, i8 128, i8 128>
	%ret = select <4 x i1> %cb, <4 x i8> %b, <4 x i8> %a
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6selectu2v3hu2v3hu2v3h(<4 x i8> %a, <4 x i8> %b, <4 x i8> %c) nounwind {
	%cm = and <4 x i8> %c, <i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <4 x i8> %cm, <i8 128, i8 128, i8 128, i8 128>
	%ret = select <4 x i1> %cb, <4 x i8> %b, <4 x i8> %a
	ret <4 x i8> %ret
}
define <4 x i16> @_Z6selectu2v3su2v3su2v3s(<4 x i16> %a, <4 x i16> %b, <4 x i16> %c) nounwind {
	%cm = and <4 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <4 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <4 x i1> %cb, <4 x i16> %b, <4 x i16> %a
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6selectu2v3su2v3su2v3t(<4 x i16> %a, <4 x i16> %b, <4 x i16> %c) nounwind {
	%cm = and <4 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <4 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <4 x i1> %cb, <4 x i16> %b, <4 x i16> %a
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6selectu2v3tu2v3tu2v3s(<4 x i16> %a, <4 x i16> %b, <4 x i16> %c) nounwind {
	%cm = and <4 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <4 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <4 x i1> %cb, <4 x i16> %b, <4 x i16> %a
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6selectu2v3tu2v3tu2v3t(<4 x i16> %a, <4 x i16> %b, <4 x i16> %c) nounwind {
	%cm = and <4 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <4 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <4 x i1> %cb, <4 x i16> %b, <4 x i16> %a
	ret <4 x i16> %ret
}
define <4 x i32> @_Z6selectu2v3iu2v3iu2v3i(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x i32> %b, <4 x i32> %a
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6selectu2v3iu2v3iu2v3j(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x i32> %b, <4 x i32> %a
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6selectu2v3ju2v3ju2v3i(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x i32> %b, <4 x i32> %a
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6selectu2v3ju2v3ju2v3j(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x i32> %b, <4 x i32> %a
	ret <4 x i32> %ret
}
define <4 x i64> @_Z6selectu2v3lu2v3lu2v3l(<4 x i64> %a, <4 x i64> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x i64> %b, <4 x i64> %a
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6selectu2v3lu2v3lu2v3m(<4 x i64> %a, <4 x i64> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x i64> %b, <4 x i64> %a
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6selectu2v3mu2v3mu2v3l(<4 x i64> %a, <4 x i64> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x i64> %b, <4 x i64> %a
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6selectu2v3mu2v3mu2v3m(<4 x i64> %a, <4 x i64> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x i64> %b, <4 x i64> %a
	ret <4 x i64> %ret
}
define <4 x float> @_Z6selectu2v3fu2v3fu2v3i(<4 x float> %a, <4 x float> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x float> %b, <4 x float> %a
	ret <4 x float> %ret
}
define <4 x float> @_Z6selectu2v3fu2v3fu2v3j(<4 x float> %a, <4 x float> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x float> %b, <4 x float> %a
	ret <4 x float> %ret
}
define <4 x double> @_Z6selectu2v3du2v3du2v3l(<4 x double> %a, <4 x double> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x double> %b, <4 x double> %a
	ret <4 x double> %ret
}
define <4 x double> @_Z6selectu2v3du2v3du2v3m(<4 x double> %a, <4 x double> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x double> %b, <4 x double> %a
	ret <4 x double> %ret
}
define <4 x i8> @_Z6selectu2v4cu2v4cu2v4c(<4 x i8> %a, <4 x i8> %b, <4 x i8> %c) nounwind {
	%cm = and <4 x i8> %c, <i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <4 x i8> %cm, <i8 128, i8 128, i8 128, i8 128>
	%ret = select <4 x i1> %cb, <4 x i8> %b, <4 x i8> %a
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6selectu2v4cu2v4cu2v4h(<4 x i8> %a, <4 x i8> %b, <4 x i8> %c) nounwind {
	%cm = and <4 x i8> %c, <i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <4 x i8> %cm, <i8 128, i8 128, i8 128, i8 128>
	%ret = select <4 x i1> %cb, <4 x i8> %b, <4 x i8> %a
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6selectu2v4hu2v4hu2v4c(<4 x i8> %a, <4 x i8> %b, <4 x i8> %c) nounwind {
	%cm = and <4 x i8> %c, <i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <4 x i8> %cm, <i8 128, i8 128, i8 128, i8 128>
	%ret = select <4 x i1> %cb, <4 x i8> %b, <4 x i8> %a
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6selectu2v4hu2v4hu2v4h(<4 x i8> %a, <4 x i8> %b, <4 x i8> %c) nounwind {
	%cm = and <4 x i8> %c, <i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <4 x i8> %cm, <i8 128, i8 128, i8 128, i8 128>
	%ret = select <4 x i1> %cb, <4 x i8> %b, <4 x i8> %a
	ret <4 x i8> %ret
}
define <4 x i16> @_Z6selectu2v4su2v4su2v4s(<4 x i16> %a, <4 x i16> %b, <4 x i16> %c) nounwind {
	%cm = and <4 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <4 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <4 x i1> %cb, <4 x i16> %b, <4 x i16> %a
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6selectu2v4su2v4su2v4t(<4 x i16> %a, <4 x i16> %b, <4 x i16> %c) nounwind {
	%cm = and <4 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <4 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <4 x i1> %cb, <4 x i16> %b, <4 x i16> %a
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6selectu2v4tu2v4tu2v4s(<4 x i16> %a, <4 x i16> %b, <4 x i16> %c) nounwind {
	%cm = and <4 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <4 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <4 x i1> %cb, <4 x i16> %b, <4 x i16> %a
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6selectu2v4tu2v4tu2v4t(<4 x i16> %a, <4 x i16> %b, <4 x i16> %c) nounwind {
	%cm = and <4 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <4 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <4 x i1> %cb, <4 x i16> %b, <4 x i16> %a
	ret <4 x i16> %ret
}
define <4 x i32> @_Z6selectu2v4iu2v4iu2v4i(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x i32> %b, <4 x i32> %a
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6selectu2v4iu2v4iu2v4j(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x i32> %b, <4 x i32> %a
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6selectu2v4ju2v4ju2v4i(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x i32> %b, <4 x i32> %a
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6selectu2v4ju2v4ju2v4j(<4 x i32> %a, <4 x i32> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x i32> %b, <4 x i32> %a
	ret <4 x i32> %ret
}
define <4 x i64> @_Z6selectu2v4lu2v4lu2v4l(<4 x i64> %a, <4 x i64> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x i64> %b, <4 x i64> %a
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6selectu2v4lu2v4lu2v4m(<4 x i64> %a, <4 x i64> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x i64> %b, <4 x i64> %a
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6selectu2v4mu2v4mu2v4l(<4 x i64> %a, <4 x i64> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x i64> %b, <4 x i64> %a
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6selectu2v4mu2v4mu2v4m(<4 x i64> %a, <4 x i64> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x i64> %b, <4 x i64> %a
	ret <4 x i64> %ret
}
define <4 x float> @_Z6selectu2v4fu2v4fu2v4i(<4 x float> %a, <4 x float> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x float> %b, <4 x float> %a
	ret <4 x float> %ret
}
define <4 x float> @_Z6selectu2v4fu2v4fu2v4j(<4 x float> %a, <4 x float> %b, <4 x i32> %c) nounwind {
	%cm = and <4 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <4 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <4 x i1> %cb, <4 x float> %b, <4 x float> %a
	ret <4 x float> %ret
}
define <4 x double> @_Z6selectu2v4du2v4du2v4l(<4 x double> %a, <4 x double> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x double> %b, <4 x double> %a
	ret <4 x double> %ret
}
define <4 x double> @_Z6selectu2v4du2v4du2v4m(<4 x double> %a, <4 x double> %b, <4 x i64> %c) nounwind {
	%cm = and <4 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <4 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <4 x i1> %cb, <4 x double> %b, <4 x double> %a
	ret <4 x double> %ret
}
define <8 x i8> @_Z6selectu2v8cu2v8cu2v8c(<8 x i8> %a, <8 x i8> %b, <8 x i8> %c) nounwind {
	%cm = and <8 x i8> %c, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <8 x i8> %cm, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%ret = select <8 x i1> %cb, <8 x i8> %b, <8 x i8> %a
	ret <8 x i8> %ret
}
define <8 x i8> @_Z6selectu2v8cu2v8cu2v8h(<8 x i8> %a, <8 x i8> %b, <8 x i8> %c) nounwind {
	%cm = and <8 x i8> %c, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <8 x i8> %cm, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%ret = select <8 x i1> %cb, <8 x i8> %b, <8 x i8> %a
	ret <8 x i8> %ret
}
define <8 x i8> @_Z6selectu2v8hu2v8hu2v8c(<8 x i8> %a, <8 x i8> %b, <8 x i8> %c) nounwind {
	%cm = and <8 x i8> %c, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <8 x i8> %cm, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%ret = select <8 x i1> %cb, <8 x i8> %b, <8 x i8> %a
	ret <8 x i8> %ret
}
define <8 x i8> @_Z6selectu2v8hu2v8hu2v8h(<8 x i8> %a, <8 x i8> %b, <8 x i8> %c) nounwind {
	%cm = and <8 x i8> %c, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <8 x i8> %cm, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%ret = select <8 x i1> %cb, <8 x i8> %b, <8 x i8> %a
	ret <8 x i8> %ret
}
define <8 x i16> @_Z6selectu2v8su2v8su2v8s(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) nounwind {
	%cm = and <8 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <8 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <8 x i1> %cb, <8 x i16> %b, <8 x i16> %a
	ret <8 x i16> %ret
}
define <8 x i16> @_Z6selectu2v8su2v8su2v8t(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) nounwind {
	%cm = and <8 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <8 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <8 x i1> %cb, <8 x i16> %b, <8 x i16> %a
	ret <8 x i16> %ret
}
define <8 x i16> @_Z6selectu2v8tu2v8tu2v8s(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) nounwind {
	%cm = and <8 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <8 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <8 x i1> %cb, <8 x i16> %b, <8 x i16> %a
	ret <8 x i16> %ret
}
define <8 x i16> @_Z6selectu2v8tu2v8tu2v8t(<8 x i16> %a, <8 x i16> %b, <8 x i16> %c) nounwind {
	%cm = and <8 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <8 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <8 x i1> %cb, <8 x i16> %b, <8 x i16> %a
	ret <8 x i16> %ret
}
define <8 x i32> @_Z6selectu2v8iu2v8iu2v8i(<8 x i32> %a, <8 x i32> %b, <8 x i32> %c) nounwind {
	%cm = and <8 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <8 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <8 x i1> %cb, <8 x i32> %b, <8 x i32> %a
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6selectu2v8iu2v8iu2v8j(<8 x i32> %a, <8 x i32> %b, <8 x i32> %c) nounwind {
	%cm = and <8 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <8 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <8 x i1> %cb, <8 x i32> %b, <8 x i32> %a
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6selectu2v8ju2v8ju2v8i(<8 x i32> %a, <8 x i32> %b, <8 x i32> %c) nounwind {
	%cm = and <8 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <8 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <8 x i1> %cb, <8 x i32> %b, <8 x i32> %a
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6selectu2v8ju2v8ju2v8j(<8 x i32> %a, <8 x i32> %b, <8 x i32> %c) nounwind {
	%cm = and <8 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <8 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <8 x i1> %cb, <8 x i32> %b, <8 x i32> %a
	ret <8 x i32> %ret
}
define <8 x i64> @_Z6selectu2v8lu2v8lu2v8l(<8 x i64> %a, <8 x i64> %b, <8 x i64> %c) nounwind {
	%cm = and <8 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <8 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <8 x i1> %cb, <8 x i64> %b, <8 x i64> %a
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6selectu2v8lu2v8lu2v8m(<8 x i64> %a, <8 x i64> %b, <8 x i64> %c) nounwind {
	%cm = and <8 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <8 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <8 x i1> %cb, <8 x i64> %b, <8 x i64> %a
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6selectu2v8mu2v8mu2v8l(<8 x i64> %a, <8 x i64> %b, <8 x i64> %c) nounwind {
	%cm = and <8 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <8 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <8 x i1> %cb, <8 x i64> %b, <8 x i64> %a
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6selectu2v8mu2v8mu2v8m(<8 x i64> %a, <8 x i64> %b, <8 x i64> %c) nounwind {
	%cm = and <8 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <8 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <8 x i1> %cb, <8 x i64> %b, <8 x i64> %a
	ret <8 x i64> %ret
}
define <8 x float> @_Z6selectu2v8fu2v8fu2v8i(<8 x float> %a, <8 x float> %b, <8 x i32> %c) nounwind {
	%cm = and <8 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <8 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <8 x i1> %cb, <8 x float> %b, <8 x float> %a
	ret <8 x float> %ret
}
define <8 x float> @_Z6selectu2v8fu2v8fu2v8j(<8 x float> %a, <8 x float> %b, <8 x i32> %c) nounwind {
	%cm = and <8 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <8 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <8 x i1> %cb, <8 x float> %b, <8 x float> %a
	ret <8 x float> %ret
}
define <8 x double> @_Z6selectu2v8du2v8du2v8l(<8 x double> %a, <8 x double> %b, <8 x i64> %c) nounwind {
	%cm = and <8 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <8 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <8 x i1> %cb, <8 x double> %b, <8 x double> %a
	ret <8 x double> %ret
}
define <8 x double> @_Z6selectu2v8du2v8du2v8m(<8 x double> %a, <8 x double> %b, <8 x i64> %c) nounwind {
	%cm = and <8 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <8 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <8 x i1> %cb, <8 x double> %b, <8 x double> %a
	ret <8 x double> %ret
}
define <16 x i8> @_Z6selectu2v16cu2v16cu2v16c(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) nounwind {
	%cm = and <16 x i8> %c, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <16 x i8> %cm, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%ret = select <16 x i1> %cb, <16 x i8> %b, <16 x i8> %a
	ret <16 x i8> %ret
}
define <16 x i8> @_Z6selectu2v16cu2v16cu2v16h(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) nounwind {
	%cm = and <16 x i8> %c, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <16 x i8> %cm, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%ret = select <16 x i1> %cb, <16 x i8> %b, <16 x i8> %a
	ret <16 x i8> %ret
}
define <16 x i8> @_Z6selectu2v16hu2v16hu2v16c(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) nounwind {
	%cm = and <16 x i8> %c, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <16 x i8> %cm, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%ret = select <16 x i1> %cb, <16 x i8> %b, <16 x i8> %a
	ret <16 x i8> %ret
}
define <16 x i8> @_Z6selectu2v16hu2v16hu2v16h(<16 x i8> %a, <16 x i8> %b, <16 x i8> %c) nounwind {
	%cm = and <16 x i8> %c, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%cb = icmp ne <16 x i8> %cm, <i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128, i8 128>
	%ret = select <16 x i1> %cb, <16 x i8> %b, <16 x i8> %a
	ret <16 x i8> %ret
}
define <16 x i16> @_Z6selectu2v16su2v16su2v16s(<16 x i16> %a, <16 x i16> %b, <16 x i16> %c) nounwind {
	%cm = and <16 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <16 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <16 x i1> %cb, <16 x i16> %b, <16 x i16> %a
	ret <16 x i16> %ret
}
define <16 x i16> @_Z6selectu2v16su2v16su2v16t(<16 x i16> %a, <16 x i16> %b, <16 x i16> %c) nounwind {
	%cm = and <16 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <16 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <16 x i1> %cb, <16 x i16> %b, <16 x i16> %a
	ret <16 x i16> %ret
}
define <16 x i16> @_Z6selectu2v16tu2v16tu2v16s(<16 x i16> %a, <16 x i16> %b, <16 x i16> %c) nounwind {
	%cm = and <16 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <16 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <16 x i1> %cb, <16 x i16> %b, <16 x i16> %a
	ret <16 x i16> %ret
}
define <16 x i16> @_Z6selectu2v16tu2v16tu2v16t(<16 x i16> %a, <16 x i16> %b, <16 x i16> %c) nounwind {
	%cm = and <16 x i16> %c, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%cb = icmp ne <16 x i16> %cm, <i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768, i16 32768>
	%ret = select <16 x i1> %cb, <16 x i16> %b, <16 x i16> %a
	ret <16 x i16> %ret
}
define <16 x i32> @_Z6selectu2v16iu2v16iu2v16i(<16 x i32> %a, <16 x i32> %b, <16 x i32> %c) nounwind {
	%cm = and <16 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <16 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <16 x i1> %cb, <16 x i32> %b, <16 x i32> %a
	ret <16 x i32> %ret
}
define <16 x i32> @_Z6selectu2v16iu2v16iu2v16j(<16 x i32> %a, <16 x i32> %b, <16 x i32> %c) nounwind {
	%cm = and <16 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <16 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <16 x i1> %cb, <16 x i32> %b, <16 x i32> %a
	ret <16 x i32> %ret
}
define <16 x i32> @_Z6selectu2v16ju2v16ju2v16i(<16 x i32> %a, <16 x i32> %b, <16 x i32> %c) nounwind {
	%cm = and <16 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <16 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <16 x i1> %cb, <16 x i32> %b, <16 x i32> %a
	ret <16 x i32> %ret
}
define <16 x i32> @_Z6selectu2v16ju2v16ju2v16j(<16 x i32> %a, <16 x i32> %b, <16 x i32> %c) nounwind {
	%cm = and <16 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <16 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <16 x i1> %cb, <16 x i32> %b, <16 x i32> %a
	ret <16 x i32> %ret
}
define <16 x i64> @_Z6selectu2v16lu2v16lu2v16l(<16 x i64> %a, <16 x i64> %b, <16 x i64> %c) nounwind {
	%cm = and <16 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <16 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <16 x i1> %cb, <16 x i64> %b, <16 x i64> %a
	ret <16 x i64> %ret
}
define <16 x i64> @_Z6selectu2v16lu2v16lu2v16m(<16 x i64> %a, <16 x i64> %b, <16 x i64> %c) nounwind {
	%cm = and <16 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <16 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <16 x i1> %cb, <16 x i64> %b, <16 x i64> %a
	ret <16 x i64> %ret
}
define <16 x i64> @_Z6selectu2v16mu2v16mu2v16l(<16 x i64> %a, <16 x i64> %b, <16 x i64> %c) nounwind {
	%cm = and <16 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <16 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <16 x i1> %cb, <16 x i64> %b, <16 x i64> %a
	ret <16 x i64> %ret
}
define <16 x i64> @_Z6selectu2v16mu2v16mu2v16m(<16 x i64> %a, <16 x i64> %b, <16 x i64> %c) nounwind {
	%cm = and <16 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <16 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <16 x i1> %cb, <16 x i64> %b, <16 x i64> %a
	ret <16 x i64> %ret
}
define <16 x float> @_Z6selectu2v16fu2v16fu2v16i(<16 x float> %a, <16 x float> %b, <16 x i32> %c) nounwind {
	%cm = and <16 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <16 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <16 x i1> %cb, <16 x float> %b, <16 x float> %a
	ret <16 x float> %ret
}
define <16 x float> @_Z6selectu2v16fu2v16fu2v16j(<16 x float> %a, <16 x float> %b, <16 x i32> %c) nounwind {
	%cm = and <16 x i32> %c, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%cb = icmp ne <16 x i32> %cm, <i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648, i32 2147483648>
	%ret = select <16 x i1> %cb, <16 x float> %b, <16 x float> %a
	ret <16 x float> %ret
}
define <16 x double> @_Z6selectu2v16du2v16du2v16l(<16 x double> %a, <16 x double> %b, <16 x i64> %c) nounwind {
	%cm = and <16 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <16 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <16 x i1> %cb, <16 x double> %b, <16 x double> %a
	ret <16 x double> %ret
}
define <16 x double> @_Z6selectu2v16du2v16du2v16m(<16 x double> %a, <16 x double> %b, <16 x i64> %c) nounwind {
	%cm = and <16 x i64> %c, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%cb = icmp ne <16 x i64> %cm, <i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808, i64 9223372036854775808>
	%ret = select <16 x i1> %cb, <16 x double> %b, <16 x double> %a
	ret <16 x double> %ret
}
