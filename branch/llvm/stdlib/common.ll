; ModuleID = 'common.ll'

define <2 x float> @_Z3maxu2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp ogt <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x float> %a, <2 x float> %b
	ret <2 x float> %ret
}
define <2 x float> @_Z3minu2v2fu2v2f(<2 x float> %a, <2 x float> %b) nounwind {
	%cmp = fcmp olt <2 x float> %a, %b
	%ret = select <2 x i1> %cmp, <2 x float> %a, <2 x float> %b
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
define <2 x double> @_Z3maxu2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp ogt <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x double> %a, <2 x double> %b
	ret <2 x double> %ret
}
define <2 x double> @_Z3minu2v2du2v2d(<2 x double> %a, <2 x double> %b) nounwind {
	%cmp = fcmp olt <2 x double> %a, %b
	%ret = select <2 x i1> %cmp, <2 x double> %a, <2 x double> %b
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
define <4 x float> @_Z3maxu2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp ogt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
	ret <4 x float> %ret
}
define <4 x float> @_Z3minu2v3fu2v3f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp olt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
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
define <4 x double> @_Z3maxu2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp ogt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
	ret <4 x double> %ret
}
define <4 x double> @_Z3minu2v3du2v3d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp olt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
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
define <4 x float> @_Z3maxu2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp ogt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
	ret <4 x float> %ret
}
define <4 x float> @_Z3minu2v4fu2v4f(<4 x float> %a, <4 x float> %b) nounwind {
	%cmp = fcmp olt <4 x float> %a, %b
	%ret = select <4 x i1> %cmp, <4 x float> %a, <4 x float> %b
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
define <4 x double> @_Z3maxu2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp ogt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
	ret <4 x double> %ret
}
define <4 x double> @_Z3minu2v4du2v4d(<4 x double> %a, <4 x double> %b) nounwind {
	%cmp = fcmp olt <4 x double> %a, %b
	%ret = select <4 x i1> %cmp, <4 x double> %a, <4 x double> %b
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
define <8 x float> @_Z3maxu2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp ogt <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x float> %a, <8 x float> %b
	ret <8 x float> %ret
}
define <8 x float> @_Z3minu2v8fu2v8f(<8 x float> %a, <8 x float> %b) nounwind {
	%cmp = fcmp olt <8 x float> %a, %b
	%ret = select <8 x i1> %cmp, <8 x float> %a, <8 x float> %b
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
define <8 x double> @_Z3maxu2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp ogt <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x double> %a, <8 x double> %b
	ret <8 x double> %ret
}
define <8 x double> @_Z3minu2v8du2v8d(<8 x double> %a, <8 x double> %b) nounwind {
	%cmp = fcmp olt <8 x double> %a, %b
	%ret = select <8 x i1> %cmp, <8 x double> %a, <8 x double> %b
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
define <16 x float> @_Z3maxu2v16fu2v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp ogt <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x float> %a, <16 x float> %b
	ret <16 x float> %ret
}
define <16 x float> @_Z3minu2v16fu2v16f(<16 x float> %a, <16 x float> %b) nounwind {
	%cmp = fcmp olt <16 x float> %a, %b
	%ret = select <16 x i1> %cmp, <16 x float> %a, <16 x float> %b
	ret <16 x float> %ret
}
define <16 x float> @_Z5clampu2v16fu2v16fu2v16f(<16 x float> %a, <16 x float> %b, <16 x float> %c) nounwind {
	%cmp = fcmp ogt <16 x float> %a, %b
	%x = select <16 x i1> %cmp, <16 x float> %a, <16 x float> %b
	%cmp2 = fcmp olt <16 x float> %x, %c
	%ret = select <16 x i1> %cmp2, <16 x float> %x, <16 x float> %c
	ret <16 x float> %ret
}
define <16 x float> @_Z5clampu2v16fff(<16 x float> %a, float %b, float %c) nounwind {
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
define <16 x double> @_Z3maxu2v16du2v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp ogt <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x double> %a, <16 x double> %b
	ret <16 x double> %ret
}
define <16 x double> @_Z3minu2v16du2v16d(<16 x double> %a, <16 x double> %b) nounwind {
	%cmp = fcmp olt <16 x double> %a, %b
	%ret = select <16 x i1> %cmp, <16 x double> %a, <16 x double> %b
	ret <16 x double> %ret
}
define <16 x double> @_Z5clampu2v16du2v16du2v16d(<16 x double> %a, <16 x double> %b, <16 x double> %c) nounwind {
	%cmp = fcmp ogt <16 x double> %a, %b
	%x = select <16 x i1> %cmp, <16 x double> %a, <16 x double> %b
	%cmp2 = fcmp olt <16 x double> %x, %c
	%ret = select <16 x i1> %cmp2, <16 x double> %x, <16 x double> %c
	ret <16 x double> %ret
}
define <16 x double> @_Z5clampu2v16ddd(<16 x double> %a, double %b, double %c) nounwind {
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
