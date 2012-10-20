; ModuleID = 'common.ll'

define <2 x float> @_Z3maxu2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp ogt <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x float> %a, <2 x float> %b
	ret <2 x float> %ret
}
define <2 x float> @_Z3maxu2v2ff(<2 x float> %a, float %b) nounwind {
	%bv0 = insertelement <2 x float> undef, float %b, i32 0
	%bv = shufflevector <2 x float> %bv0, <2 x float> undef, <2 x i32> zeroinitializer
	%cmp = fcmp ogt <2 x float> %a, %bv
	%ret = select <2 x i1> %cmp, <2 x float> %a, <2 x float> %bv
	ret <2 x float> %ret
}
define <2 x float> @_Z3minu2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp olt <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x float> %a, <2 x float> %b
	ret <2 x float> %ret
}
define <2 x float> @_Z3minu2v2ff(<2 x float> %a, float %b) nounwind {
	%bv0 = insertelement <2 x float> undef, float %b, i32 0
	%bv = shufflevector <2 x float> %bv0, <2 x float> undef, <2 x i32> zeroinitializer
	%cmp = fcmp olt <2 x float> %a, %bv
	%ret = select <2 x i1> %cmp, <2 x float> %a, <2 x float> %bv
	ret <2 x float> %ret
}
define <2 x float> @_Z5clampu2v2fu2v2fu2v2f(<2 x float> %a, <2 x float> %b, <2 x float> %c) nounwind {
	%cmp = fcmp ogt <2 x float> %a, %b
	%x = select <2 x i1> %cmp, <2 x float> %a, <2 x float> %b
	%cmp2 = fcmp olt <2 x float> %x, %c
	%ret = select <2 x i1> %cmp2, <2 x float> %x, <2 x float> %c
	ret <2 x float> %ret
}
define <2 x float> @_Z5clampu2v2fff(<2 x float> %a, float %b, float %c) nounwind {
	%bv0 = insertelement <2 x float> undef, float %b, i32 0
	%bv = shufflevector <2 x float> %bv0, <2 x float> undef, <2 x i32> zeroinitializer
	%cv0 = insertelement <2 x float> undef, float %c, i32 0
	%cv = shufflevector <2 x float> %cv0, <2 x float> undef, <2 x i32> zeroinitializer
	%cmp = fcmp ogt <2 x float> %a, %bv
	%x = select <2 x i1> %cmp, <2 x float> %a, <2 x float> %bv
	%cmp2 = fcmp olt <2 x float> %x, %cv
	%ret = select <2 x i1> %cmp2, <2 x float> %x, <2 x float> %cv
	ret <2 x float> %ret
}
declare <2 x i32> @_Z5isnanu2v2f(<2 x float> %v) nounwind
define <2 x float> @_Z4signu2v2f(<2 x float> %a) nounwind {
	%cmp0 = fcmp ogt <2 x float> %a, zeroinitializer
	%cmp1 = fcmp olt <2 x float> %a, zeroinitializer
	%tst = call <2 x i32> @_Z5isnanu2v2f(<2 x float> %a)
	%cmp2 = icmp ne <2 x i32> %tst, zeroinitializer
	%x = select <2 x i1> %cmp2, <2 x float> zeroinitializer, <2 x float> %a
	%y = select <2 x i1> %cmp1, <2 x float> < float -1.0, float -1.0 >, <2 x float> %x
	%ret = select <2 x i1> %cmp0, <2 x float> < float 1.0, float 1.0 >, <2 x float> %y
	ret <2 x float> %ret
}
define <2 x double> @_Z3maxu2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp ogt <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x double> %a, <2 x double> %b
	ret <2 x double> %ret
}
define <2 x double> @_Z3maxu2v2dd(<2 x double> %a, double %b) nounwind {
	%bv0 = insertelement <2 x double> undef, double %b, i32 0
	%bv = shufflevector <2 x double> %bv0, <2 x double> undef, <2 x i32> zeroinitializer
	%cmp = fcmp ogt <2 x double> %a, %bv
	%ret = select <2 x i1> %cmp, <2 x double> %a, <2 x double> %bv
	ret <2 x double> %ret
}
define <2 x double> @_Z3minu2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp olt <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x double> %a, <2 x double> %b
	ret <2 x double> %ret
}
define <2 x double> @_Z3minu2v2dd(<2 x double> %a, double %b) nounwind {
	%bv0 = insertelement <2 x double> undef, double %b, i32 0
	%bv = shufflevector <2 x double> %bv0, <2 x double> undef, <2 x i32> zeroinitializer
	%cmp = fcmp olt <2 x double> %a, %bv
	%ret = select <2 x i1> %cmp, <2 x double> %a, <2 x double> %bv
	ret <2 x double> %ret
}
define <2 x double> @_Z5clampu2v2du2v2du2v2d(<2 x double> %a, <2 x double> %b, <2 x double> %c) nounwind {
	%cmp = fcmp ogt <2 x double> %a, %b
	%x = select <2 x i1> %cmp, <2 x double> %a, <2 x double> %b
	%cmp2 = fcmp olt <2 x double> %x, %c
	%ret = select <2 x i1> %cmp2, <2 x double> %x, <2 x double> %c
	ret <2 x double> %ret
}
define <2 x double> @_Z5clampu2v2ddd(<2 x double> %a, double %b, double %c) nounwind {
	%bv0 = insertelement <2 x double> undef, double %b, i32 0
	%bv = shufflevector <2 x double> %bv0, <2 x double> undef, <2 x i32> zeroinitializer
	%cv0 = insertelement <2 x double> undef, double %c, i32 0
	%cv = shufflevector <2 x double> %cv0, <2 x double> undef, <2 x i32> zeroinitializer
	%cmp = fcmp ogt <2 x double> %a, %bv
	%x = select <2 x i1> %cmp, <2 x double> %a, <2 x double> %bv
	%cmp2 = fcmp olt <2 x double> %x, %cv
	%ret = select <2 x i1> %cmp2, <2 x double> %x, <2 x double> %cv
	ret <2 x double> %ret
}
declare <2 x i64> @_Z5isnanu2v2d(<2 x double> %v) nounwind
define <2 x double> @_Z4signu2v2d(<2 x double> %a) nounwind {
	%cmp0 = fcmp ogt <2 x double> %a, zeroinitializer
	%cmp1 = fcmp olt <2 x double> %a, zeroinitializer
	%tst = call <2 x i64> @_Z5isnanu2v2d(<2 x double> %a)
	%cmp2 = icmp ne <2 x i64> %tst, zeroinitializer
	%x = select <2 x i1> %cmp2, <2 x double> zeroinitializer, <2 x double> %a
	%y = select <2 x i1> %cmp1, <2 x double> < double -1.0, double -1.0 >, <2 x double> %x
	%ret = select <2 x i1> %cmp0, <2 x double> < double 1.0, double 1.0 >, <2 x double> %y
	ret <2 x double> %ret
}
define <4 x float> @_Z3maxu2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp ogt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
	ret <4 x float> %ret
}
define <4 x float> @_Z3maxu2v3ff(<4 x float> %a, float %b) nounwind {
	%bv0 = insertelement <4 x float> undef, float %b, i32 0
	%bv = shufflevector <4 x float> %bv0, <4 x float> undef, <4 x i32> zeroinitializer
	%cmp = fcmp ogt <4 x float> %a, %bv
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %bv
	ret <4 x float> %ret
}
define <4 x float> @_Z3minu2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp olt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
	ret <4 x float> %ret
}
define <4 x float> @_Z3minu2v3ff(<4 x float> %a, float %b) nounwind {
	%bv0 = insertelement <4 x float> undef, float %b, i32 0
	%bv = shufflevector <4 x float> %bv0, <4 x float> undef, <4 x i32> zeroinitializer
	%cmp = fcmp olt <4 x float> %a, %bv
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %bv
	ret <4 x float> %ret
}
define <4 x float> @_Z5clampu2v3fu2v3fu2v3f(<4 x float> %a, <4 x float> %b, <4 x float> %c) nounwind {
	%cmp = fcmp ogt <4 x float> %a, %b
	%x = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
	%cmp2 = fcmp olt <4 x float> %x, %c
	%ret = select <4 x i1> %cmp2, <4 x float> %x, <4 x float> %c
	ret <4 x float> %ret
}
define <4 x float> @_Z5clampu2v3fff(<4 x float> %a, float %b, float %c) nounwind {
	%bv0 = insertelement <4 x float> undef, float %b, i32 0
	%bv = shufflevector <4 x float> %bv0, <4 x float> undef, <4 x i32> zeroinitializer
	%cv0 = insertelement <4 x float> undef, float %c, i32 0
	%cv = shufflevector <4 x float> %cv0, <4 x float> undef, <4 x i32> zeroinitializer
	%cmp = fcmp ogt <4 x float> %a, %bv
	%x = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %bv
	%cmp2 = fcmp olt <4 x float> %x, %cv
	%ret = select <4 x i1> %cmp2, <4 x float> %x, <4 x float> %cv
	ret <4 x float> %ret
}
declare <4 x i32> @_Z5isnanu2v3f(<4 x float> %v) nounwind
define <4 x float> @_Z4signu2v3f(<4 x float> %a) nounwind {
	%cmp0 = fcmp ogt <4 x float> %a, zeroinitializer
	%cmp1 = fcmp olt <4 x float> %a, zeroinitializer
	%tst = call <4 x i32> @_Z5isnanu2v3f(<4 x float> %a)
	%cmp2 = icmp ne <4 x i32> %tst, zeroinitializer
	%x = select <4 x i1> %cmp2, <4 x float> zeroinitializer, <4 x float> %a
	%y = select <4 x i1> %cmp1, <4 x float> < float -1.0, float -1.0, float -1.0, float -1.0 >, <4 x float> %x
	%ret = select <4 x i1> %cmp0, <4 x float> < float 1.0, float 1.0, float 1.0, float 1.0 >, <4 x float> %y
	ret <4 x float> %ret
}
define <4 x double> @_Z3maxu2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp ogt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
	ret <4 x double> %ret
}
define <4 x double> @_Z3maxu2v3dd(<4 x double> %a, double %b) nounwind {
	%bv0 = insertelement <4 x double> undef, double %b, i32 0
	%bv = shufflevector <4 x double> %bv0, <4 x double> undef, <4 x i32> zeroinitializer
	%cmp = fcmp ogt <4 x double> %a, %bv
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %bv
	ret <4 x double> %ret
}
define <4 x double> @_Z3minu2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp olt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
	ret <4 x double> %ret
}
define <4 x double> @_Z3minu2v3dd(<4 x double> %a, double %b) nounwind {
	%bv0 = insertelement <4 x double> undef, double %b, i32 0
	%bv = shufflevector <4 x double> %bv0, <4 x double> undef, <4 x i32> zeroinitializer
	%cmp = fcmp olt <4 x double> %a, %bv
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %bv
	ret <4 x double> %ret
}
define <4 x double> @_Z5clampu2v3du2v3du2v3d(<4 x double> %a, <4 x double> %b, <4 x double> %c) nounwind {
	%cmp = fcmp ogt <4 x double> %a, %b
	%x = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
	%cmp2 = fcmp olt <4 x double> %x, %c
	%ret = select <4 x i1> %cmp2, <4 x double> %x, <4 x double> %c
	ret <4 x double> %ret
}
define <4 x double> @_Z5clampu2v3ddd(<4 x double> %a, double %b, double %c) nounwind {
	%bv0 = insertelement <4 x double> undef, double %b, i32 0
	%bv = shufflevector <4 x double> %bv0, <4 x double> undef, <4 x i32> zeroinitializer
	%cv0 = insertelement <4 x double> undef, double %c, i32 0
	%cv = shufflevector <4 x double> %cv0, <4 x double> undef, <4 x i32> zeroinitializer
	%cmp = fcmp ogt <4 x double> %a, %bv
	%x = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %bv
	%cmp2 = fcmp olt <4 x double> %x, %cv
	%ret = select <4 x i1> %cmp2, <4 x double> %x, <4 x double> %cv
	ret <4 x double> %ret
}
declare <4 x i64> @_Z5isnanu2v3d(<4 x double> %v) nounwind
define <4 x double> @_Z4signu2v3d(<4 x double> %a) nounwind {
	%cmp0 = fcmp ogt <4 x double> %a, zeroinitializer
	%cmp1 = fcmp olt <4 x double> %a, zeroinitializer
	%tst = call <4 x i64> @_Z5isnanu2v3d(<4 x double> %a)
	%cmp2 = icmp ne <4 x i64> %tst, zeroinitializer
	%x = select <4 x i1> %cmp2, <4 x double> zeroinitializer, <4 x double> %a
	%y = select <4 x i1> %cmp1, <4 x double> < double -1.0, double -1.0, double -1.0, double -1.0 >, <4 x double> %x
	%ret = select <4 x i1> %cmp0, <4 x double> < double 1.0, double 1.0, double 1.0, double 1.0 >, <4 x double> %y
	ret <4 x double> %ret
}
define <4 x float> @_Z3maxu2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp ogt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
	ret <4 x float> %ret
}
define <4 x float> @_Z3maxu2v4ff(<4 x float> %a, float %b) nounwind {
	%bv0 = insertelement <4 x float> undef, float %b, i32 0
	%bv = shufflevector <4 x float> %bv0, <4 x float> undef, <4 x i32> zeroinitializer
	%cmp = fcmp ogt <4 x float> %a, %bv
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %bv
	ret <4 x float> %ret
}
define <4 x float> @_Z3minu2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp olt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
	ret <4 x float> %ret
}
define <4 x float> @_Z3minu2v4ff(<4 x float> %a, float %b) nounwind {
	%bv0 = insertelement <4 x float> undef, float %b, i32 0
	%bv = shufflevector <4 x float> %bv0, <4 x float> undef, <4 x i32> zeroinitializer
	%cmp = fcmp olt <4 x float> %a, %bv
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %bv
	ret <4 x float> %ret
}
define <4 x float> @_Z5clampu2v4fu2v4fu2v4f(<4 x float> %a, <4 x float> %b, <4 x float> %c) nounwind {
	%cmp = fcmp ogt <4 x float> %a, %b
	%x = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
	%cmp2 = fcmp olt <4 x float> %x, %c
	%ret = select <4 x i1> %cmp2, <4 x float> %x, <4 x float> %c
	ret <4 x float> %ret
}
define <4 x float> @_Z5clampu2v4fff(<4 x float> %a, float %b, float %c) nounwind {
	%bv0 = insertelement <4 x float> undef, float %b, i32 0
	%bv = shufflevector <4 x float> %bv0, <4 x float> undef, <4 x i32> zeroinitializer
	%cv0 = insertelement <4 x float> undef, float %c, i32 0
	%cv = shufflevector <4 x float> %cv0, <4 x float> undef, <4 x i32> zeroinitializer
	%cmp = fcmp ogt <4 x float> %a, %bv
	%x = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %bv
	%cmp2 = fcmp olt <4 x float> %x, %cv
	%ret = select <4 x i1> %cmp2, <4 x float> %x, <4 x float> %cv
	ret <4 x float> %ret
}
declare <4 x i32> @_Z5isnanu2v4f(<4 x float> %v) nounwind
define <4 x float> @_Z4signu2v4f(<4 x float> %a) nounwind {
	%cmp0 = fcmp ogt <4 x float> %a, zeroinitializer
	%cmp1 = fcmp olt <4 x float> %a, zeroinitializer
	%tst = call <4 x i32> @_Z5isnanu2v4f(<4 x float> %a)
	%cmp2 = icmp ne <4 x i32> %tst, zeroinitializer
	%x = select <4 x i1> %cmp2, <4 x float> zeroinitializer, <4 x float> %a
	%y = select <4 x i1> %cmp1, <4 x float> < float -1.0, float -1.0, float -1.0, float -1.0 >, <4 x float> %x
	%ret = select <4 x i1> %cmp0, <4 x float> < float 1.0, float 1.0, float 1.0, float 1.0 >, <4 x float> %y
	ret <4 x float> %ret
}
define <4 x double> @_Z3maxu2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp ogt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
	ret <4 x double> %ret
}
define <4 x double> @_Z3maxu2v4dd(<4 x double> %a, double %b) nounwind {
	%bv0 = insertelement <4 x double> undef, double %b, i32 0
	%bv = shufflevector <4 x double> %bv0, <4 x double> undef, <4 x i32> zeroinitializer
	%cmp = fcmp ogt <4 x double> %a, %bv
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %bv
	ret <4 x double> %ret
}
define <4 x double> @_Z3minu2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp olt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
	ret <4 x double> %ret
}
define <4 x double> @_Z3minu2v4dd(<4 x double> %a, double %b) nounwind {
	%bv0 = insertelement <4 x double> undef, double %b, i32 0
	%bv = shufflevector <4 x double> %bv0, <4 x double> undef, <4 x i32> zeroinitializer
	%cmp = fcmp olt <4 x double> %a, %bv
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %bv
	ret <4 x double> %ret
}
define <4 x double> @_Z5clampu2v4du2v4du2v4d(<4 x double> %a, <4 x double> %b, <4 x double> %c) nounwind {
	%cmp = fcmp ogt <4 x double> %a, %b
	%x = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
	%cmp2 = fcmp olt <4 x double> %x, %c
	%ret = select <4 x i1> %cmp2, <4 x double> %x, <4 x double> %c
	ret <4 x double> %ret
}
define <4 x double> @_Z5clampu2v4ddd(<4 x double> %a, double %b, double %c) nounwind {
	%bv0 = insertelement <4 x double> undef, double %b, i32 0
	%bv = shufflevector <4 x double> %bv0, <4 x double> undef, <4 x i32> zeroinitializer
	%cv0 = insertelement <4 x double> undef, double %c, i32 0
	%cv = shufflevector <4 x double> %cv0, <4 x double> undef, <4 x i32> zeroinitializer
	%cmp = fcmp ogt <4 x double> %a, %bv
	%x = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %bv
	%cmp2 = fcmp olt <4 x double> %x, %cv
	%ret = select <4 x i1> %cmp2, <4 x double> %x, <4 x double> %cv
	ret <4 x double> %ret
}
declare <4 x i64> @_Z5isnanu2v4d(<4 x double> %v) nounwind
define <4 x double> @_Z4signu2v4d(<4 x double> %a) nounwind {
	%cmp0 = fcmp ogt <4 x double> %a, zeroinitializer
	%cmp1 = fcmp olt <4 x double> %a, zeroinitializer
	%tst = call <4 x i64> @_Z5isnanu2v4d(<4 x double> %a)
	%cmp2 = icmp ne <4 x i64> %tst, zeroinitializer
	%x = select <4 x i1> %cmp2, <4 x double> zeroinitializer, <4 x double> %a
	%y = select <4 x i1> %cmp1, <4 x double> < double -1.0, double -1.0, double -1.0, double -1.0 >, <4 x double> %x
	%ret = select <4 x i1> %cmp0, <4 x double> < double 1.0, double 1.0, double 1.0, double 1.0 >, <4 x double> %y
	ret <4 x double> %ret
}
define <8 x float> @_Z3maxu2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp ogt <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x float> %a, <8 x float> %b
	ret <8 x float> %ret
}
define <8 x float> @_Z3maxu2v8ff(<8 x float> %a, float %b) nounwind {
	%bv0 = insertelement <8 x float> undef, float %b, i32 0
	%bv = shufflevector <8 x float> %bv0, <8 x float> undef, <8 x i32> zeroinitializer
	%cmp = fcmp ogt <8 x float> %a, %bv
	%ret = select <8 x i1> %cmp, <8 x float> %a, <8 x float> %bv
	ret <8 x float> %ret
}
define <8 x float> @_Z3minu2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp olt <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x float> %a, <8 x float> %b
	ret <8 x float> %ret
}
define <8 x float> @_Z3minu2v8ff(<8 x float> %a, float %b) nounwind {
	%bv0 = insertelement <8 x float> undef, float %b, i32 0
	%bv = shufflevector <8 x float> %bv0, <8 x float> undef, <8 x i32> zeroinitializer
	%cmp = fcmp olt <8 x float> %a, %bv
	%ret = select <8 x i1> %cmp, <8 x float> %a, <8 x float> %bv
	ret <8 x float> %ret
}
define <8 x float> @_Z5clampu2v8fu2v8fu2v8f(<8 x float> %a, <8 x float> %b, <8 x float> %c) nounwind {
	%cmp = fcmp ogt <8 x float> %a, %b
	%x = select <8 x i1> %cmp, <8 x float> %a, <8 x float> %b
	%cmp2 = fcmp olt <8 x float> %x, %c
	%ret = select <8 x i1> %cmp2, <8 x float> %x, <8 x float> %c
	ret <8 x float> %ret
}
define <8 x float> @_Z5clampu2v8fff(<8 x float> %a, float %b, float %c) nounwind {
	%bv0 = insertelement <8 x float> undef, float %b, i32 0
	%bv = shufflevector <8 x float> %bv0, <8 x float> undef, <8 x i32> zeroinitializer
	%cv0 = insertelement <8 x float> undef, float %c, i32 0
	%cv = shufflevector <8 x float> %cv0, <8 x float> undef, <8 x i32> zeroinitializer
	%cmp = fcmp ogt <8 x float> %a, %bv
	%x = select <8 x i1> %cmp, <8 x float> %a, <8 x float> %bv
	%cmp2 = fcmp olt <8 x float> %x, %cv
	%ret = select <8 x i1> %cmp2, <8 x float> %x, <8 x float> %cv
	ret <8 x float> %ret
}
declare <8 x i32> @_Z5isnanu2v8f(<8 x float> %v) nounwind
define <8 x float> @_Z4signu2v8f(<8 x float> %a) nounwind {
	%cmp0 = fcmp ogt <8 x float> %a, zeroinitializer
	%cmp1 = fcmp olt <8 x float> %a, zeroinitializer
	%tst = call <8 x i32> @_Z5isnanu2v8f(<8 x float> %a)
	%cmp2 = icmp ne <8 x i32> %tst, zeroinitializer
	%x = select <8 x i1> %cmp2, <8 x float> zeroinitializer, <8 x float> %a
	%y = select <8 x i1> %cmp1, <8 x float> < float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0 >, <8 x float> %x
	%ret = select <8 x i1> %cmp0, <8 x float> < float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0 >, <8 x float> %y
	ret <8 x float> %ret
}
define <8 x double> @_Z3maxu2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp ogt <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x double> %a, <8 x double> %b
	ret <8 x double> %ret
}
define <8 x double> @_Z3maxu2v8dd(<8 x double> %a, double %b) nounwind {
	%bv0 = insertelement <8 x double> undef, double %b, i32 0
	%bv = shufflevector <8 x double> %bv0, <8 x double> undef, <8 x i32> zeroinitializer
	%cmp = fcmp ogt <8 x double> %a, %bv
	%ret = select <8 x i1> %cmp, <8 x double> %a, <8 x double> %bv
	ret <8 x double> %ret
}
define <8 x double> @_Z3minu2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp olt <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x double> %a, <8 x double> %b
	ret <8 x double> %ret
}
define <8 x double> @_Z3minu2v8dd(<8 x double> %a, double %b) nounwind {
	%bv0 = insertelement <8 x double> undef, double %b, i32 0
	%bv = shufflevector <8 x double> %bv0, <8 x double> undef, <8 x i32> zeroinitializer
	%cmp = fcmp olt <8 x double> %a, %bv
	%ret = select <8 x i1> %cmp, <8 x double> %a, <8 x double> %bv
	ret <8 x double> %ret
}
define <8 x double> @_Z5clampu2v8du2v8du2v8d(<8 x double> %a, <8 x double> %b, <8 x double> %c) nounwind {
	%cmp = fcmp ogt <8 x double> %a, %b
	%x = select <8 x i1> %cmp, <8 x double> %a, <8 x double> %b
	%cmp2 = fcmp olt <8 x double> %x, %c
	%ret = select <8 x i1> %cmp2, <8 x double> %x, <8 x double> %c
	ret <8 x double> %ret
}
define <8 x double> @_Z5clampu2v8ddd(<8 x double> %a, double %b, double %c) nounwind {
	%bv0 = insertelement <8 x double> undef, double %b, i32 0
	%bv = shufflevector <8 x double> %bv0, <8 x double> undef, <8 x i32> zeroinitializer
	%cv0 = insertelement <8 x double> undef, double %c, i32 0
	%cv = shufflevector <8 x double> %cv0, <8 x double> undef, <8 x i32> zeroinitializer
	%cmp = fcmp ogt <8 x double> %a, %bv
	%x = select <8 x i1> %cmp, <8 x double> %a, <8 x double> %bv
	%cmp2 = fcmp olt <8 x double> %x, %cv
	%ret = select <8 x i1> %cmp2, <8 x double> %x, <8 x double> %cv
	ret <8 x double> %ret
}
declare <8 x i64> @_Z5isnanu2v8d(<8 x double> %v) nounwind
define <8 x double> @_Z4signu2v8d(<8 x double> %a) nounwind {
	%cmp0 = fcmp ogt <8 x double> %a, zeroinitializer
	%cmp1 = fcmp olt <8 x double> %a, zeroinitializer
	%tst = call <8 x i64> @_Z5isnanu2v8d(<8 x double> %a)
	%cmp2 = icmp ne <8 x i64> %tst, zeroinitializer
	%x = select <8 x i1> %cmp2, <8 x double> zeroinitializer, <8 x double> %a
	%y = select <8 x i1> %cmp1, <8 x double> < double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0 >, <8 x double> %x
	%ret = select <8 x i1> %cmp0, <8 x double> < double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0 >, <8 x double> %y
	ret <8 x double> %ret
}
define <16 x float> @_Z3maxu3v16fu3v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp ogt <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x float> %a, <16 x float> %b
	ret <16 x float> %ret
}
define <16 x float> @_Z3maxu3v16ff(<16 x float> %a, float %b) nounwind {
	%bv0 = insertelement <16 x float> undef, float %b, i32 0
	%bv = shufflevector <16 x float> %bv0, <16 x float> undef, <16 x i32> zeroinitializer
	%cmp = fcmp ogt <16 x float> %a, %bv
	%ret = select <16 x i1> %cmp, <16 x float> %a, <16 x float> %bv
	ret <16 x float> %ret
}
define <16 x float> @_Z3minu3v16fu3v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp olt <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x float> %a, <16 x float> %b
	ret <16 x float> %ret
}
define <16 x float> @_Z3minu3v16ff(<16 x float> %a, float %b) nounwind {
	%bv0 = insertelement <16 x float> undef, float %b, i32 0
	%bv = shufflevector <16 x float> %bv0, <16 x float> undef, <16 x i32> zeroinitializer
	%cmp = fcmp olt <16 x float> %a, %bv
	%ret = select <16 x i1> %cmp, <16 x float> %a, <16 x float> %bv
	ret <16 x float> %ret
}
define <16 x float> @_Z5clampu3v16fu3v16fu3v16f(<16 x float> %a, <16 x float> %b, <16 x float> %c) nounwind {
	%cmp = fcmp ogt <16 x float> %a, %b
	%x = select <16 x i1> %cmp, <16 x float> %a, <16 x float> %b
	%cmp2 = fcmp olt <16 x float> %x, %c
	%ret = select <16 x i1> %cmp2, <16 x float> %x, <16 x float> %c
	ret <16 x float> %ret
}
define <16 x float> @_Z5clampu3v16fff(<16 x float> %a, float %b, float %c) nounwind {
	%bv0 = insertelement <16 x float> undef, float %b, i32 0
	%bv = shufflevector <16 x float> %bv0, <16 x float> undef, <16 x i32> zeroinitializer
	%cv0 = insertelement <16 x float> undef, float %c, i32 0
	%cv = shufflevector <16 x float> %cv0, <16 x float> undef, <16 x i32> zeroinitializer
	%cmp = fcmp ogt <16 x float> %a, %bv
	%x = select <16 x i1> %cmp, <16 x float> %a, <16 x float> %bv
	%cmp2 = fcmp olt <16 x float> %x, %cv
	%ret = select <16 x i1> %cmp2, <16 x float> %x, <16 x float> %cv
	ret <16 x float> %ret
}
declare <16 x i32> @_Z5isnanu3v16f(<16 x float> %v) nounwind
define <16 x float> @_Z4signu3v16f(<16 x float> %a) nounwind {
	%cmp0 = fcmp ogt <16 x float> %a, zeroinitializer
	%cmp1 = fcmp olt <16 x float> %a, zeroinitializer
	%tst = call <16 x i32> @_Z5isnanu3v16f(<16 x float> %a)
	%cmp2 = icmp ne <16 x i32> %tst, zeroinitializer
	%x = select <16 x i1> %cmp2, <16 x float> zeroinitializer, <16 x float> %a
	%y = select <16 x i1> %cmp1, <16 x float> < float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0, float -1.0 >, <16 x float> %x
	%ret = select <16 x i1> %cmp0, <16 x float> < float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0, float 1.0 >, <16 x float> %y
	ret <16 x float> %ret
}
define <16 x double> @_Z3maxu3v16du3v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp ogt <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x double> %a, <16 x double> %b
	ret <16 x double> %ret
}
define <16 x double> @_Z3maxu3v16dd(<16 x double> %a, double %b) nounwind {
	%bv0 = insertelement <16 x double> undef, double %b, i32 0
	%bv = shufflevector <16 x double> %bv0, <16 x double> undef, <16 x i32> zeroinitializer
	%cmp = fcmp ogt <16 x double> %a, %bv
	%ret = select <16 x i1> %cmp, <16 x double> %a, <16 x double> %bv
	ret <16 x double> %ret
}
define <16 x double> @_Z3minu3v16du3v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp olt <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x double> %a, <16 x double> %b
	ret <16 x double> %ret
}
define <16 x double> @_Z3minu3v16dd(<16 x double> %a, double %b) nounwind {
	%bv0 = insertelement <16 x double> undef, double %b, i32 0
	%bv = shufflevector <16 x double> %bv0, <16 x double> undef, <16 x i32> zeroinitializer
	%cmp = fcmp olt <16 x double> %a, %bv
	%ret = select <16 x i1> %cmp, <16 x double> %a, <16 x double> %bv
	ret <16 x double> %ret
}
define <16 x double> @_Z5clampu3v16du3v16du3v16d(<16 x double> %a, <16 x double> %b, <16 x double> %c) nounwind {
	%cmp = fcmp ogt <16 x double> %a, %b
	%x = select <16 x i1> %cmp, <16 x double> %a, <16 x double> %b
	%cmp2 = fcmp olt <16 x double> %x, %c
	%ret = select <16 x i1> %cmp2, <16 x double> %x, <16 x double> %c
	ret <16 x double> %ret
}
define <16 x double> @_Z5clampu3v16ddd(<16 x double> %a, double %b, double %c) nounwind {
	%bv0 = insertelement <16 x double> undef, double %b, i32 0
	%bv = shufflevector <16 x double> %bv0, <16 x double> undef, <16 x i32> zeroinitializer
	%cv0 = insertelement <16 x double> undef, double %c, i32 0
	%cv = shufflevector <16 x double> %cv0, <16 x double> undef, <16 x i32> zeroinitializer
	%cmp = fcmp ogt <16 x double> %a, %bv
	%x = select <16 x i1> %cmp, <16 x double> %a, <16 x double> %bv
	%cmp2 = fcmp olt <16 x double> %x, %cv
	%ret = select <16 x i1> %cmp2, <16 x double> %x, <16 x double> %cv
	ret <16 x double> %ret
}
declare <16 x i64> @_Z5isnanu3v16d(<16 x double> %v) nounwind
define <16 x double> @_Z4signu3v16d(<16 x double> %a) nounwind {
	%cmp0 = fcmp ogt <16 x double> %a, zeroinitializer
	%cmp1 = fcmp olt <16 x double> %a, zeroinitializer
	%tst = call <16 x i64> @_Z5isnanu3v16d(<16 x double> %a)
	%cmp2 = icmp ne <16 x i64> %tst, zeroinitializer
	%x = select <16 x i1> %cmp2, <16 x double> zeroinitializer, <16 x double> %a
	%y = select <16 x i1> %cmp1, <16 x double> < double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0, double -1.0 >, <16 x double> %x
	%ret = select <16 x i1> %cmp0, <16 x double> < double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0, double 1.0 >, <16 x double> %y
	ret <16 x double> %ret
}
