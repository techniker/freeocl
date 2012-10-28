; ModuleID = 'geometric.ll'

define <4 x float> @_Z5crossu2v3fu2v3f(<4 x float> %p0, <4 x float> %p1) nounwind uwtable readnone {
  %1 = extractelement <4 x float> %p0, i32 1
  %2 = extractelement <4 x float> %p1, i32 2
  %3 = fmul float %1, %2
  %4 = extractelement <4 x float> %p0, i32 2
  %5 = extractelement <4 x float> %p1, i32 1
  %6 = fmul float %4, %5
  %7 = fsub float %3, %6
  %8 = insertelement <4 x float> undef, float %7, i32 0
  %9 = extractelement <4 x float> %p1, i32 0
  %10 = fmul float %4, %9
  %11 = extractelement <4 x float> %p0, i32 0
  %12 = fmul float %11, %2
  %13 = fsub float %10, %12
  %14 = insertelement <4 x float> %8, float %13, i32 1
  %15 = fmul float %11, %5
  %16 = fmul float %1, %9
  %17 = fsub float %15, %16
  %18 = insertelement <4 x float> %14, float %17, i32 2
  %19 = insertelement <4 x float> %18, float 0.000000e+00, i32 3
  ret <4 x float> %19
}

define float @_Z3dotu2v2fu2v2f(<2 x float> %p0, <2 x float> %p1) nounwind
{
    %1 = fmul <2 x float> %p0, %p1
    %2 = extractelement <2 x float> %1, i32 0
    %3 = extractelement <2 x float> %1, i32 1
    %ret = fadd float %2, %3
    ret float %ret
}

define float @_Z3dotu2v3fu2v3f(<4 x float> %p0, <4 x float> %p1) nounwind {
  %1 = fmul <4 x float> %p0, %p1
  %x = extractelement <4 x float> %1, i32 0
  %y = extractelement <4 x float> %1, i32 1
  %xy = fadd float %x, %y
  %z = extractelement <4 x float> %1, i32 2
  %ret = fadd float %xy, %z
  ret float %ret
}

declare float     @llvm.sqrt.f32(float %Val)

define float @_Z6lengthu2v2f(<2 x float> %p) nounwind
{
    %1 = call float @_Z3dotu2v2fu2v2f(<2 x float> %p, <2 x float> %p)
    %ret = call float @llvm.sqrt.f32(float %1)
    ret float %ret
}
define float @_Z6lengthu2v3f(<4 x float> %p) nounwind
{
    %1 = call float @_Z3dotu2v3fu2v3f(<4 x float> %p, <4 x float> %p)
    %ret = call float @llvm.sqrt.f32(float %1)
    ret float %ret
}

define <2 x float> @_Z9normalizeu2v2f(<2 x float> %p) nounwind
{
    %1 = call float @_Z6lengthu2v2f(<2 x float> %p)
    %2 = fdiv float 1.000000e+00, %1
    %3 = insertelement <2 x float> undef, float %2, i32 0
    %4 = shufflevector <2 x float> %3, <2 x float> undef, <2 x i32> zeroinitializer
    %ret = fmul <2 x float> %4, %p
    ret <2 x float> %ret
}
define <4 x float> @_Z9normalizeu2v3f(<4 x float> %p) nounwind
{
    %1 = call float @_Z6lengthu2v3f(<4 x float> %p)
    %2 = fdiv float 1.000000e+00, %1
    %3 = insertelement <4 x float> undef, float %2, i32 0
    %4 = shufflevector <4 x float> %3, <4 x float> undef, <4 x i32> zeroinitializer
    %ret = fmul <4 x float> %4, %p
    ret <4 x float> %ret
}

define float @_Z8distanceu2v2fu2v2f(<2 x float> %p0, <2 x float> %p1) nounwind
{
    %1 = fsub <2 x float> %p0, %p1
    %ret = call float @_Z6lengthu2v2f(<2 x float> %1)
    ret float %ret
}
define float @_Z8distanceu2v3fu2v3f(<4 x float> %p0, <4 x float> %p1) nounwind
{
    %1 = fsub <4 x float> %p0, %p1
    %ret = call float @_Z6lengthu2v3f(<4 x float> %1)
    ret float %ret
}

define float @_Z11fast_lengthu2v2f(<2 x float> %p) nounwind
{
    %1 = call float @_Z3dotu2v2fu2v2f(<2 x float> %p, <2 x float> %p)
    %ret = call float @llvm.sqrt.f32(float %1)
    ret float %ret
}
define float @_Z11fast_lengthu2v3f(<4 x float> %p) nounwind
{
    %1 = call float @_Z3dotu2v3fu2v3f(<4 x float> %p, <4 x float> %p)
    %ret = call float @llvm.sqrt.f32(float %1)
    ret float %ret
}

define float @_Z13fast_distanceu2v2fu2v2f(<2 x float> %p0, <2 x float> %p1) nounwind
{
    %1 = fsub <2 x float> %p0, %p1
    %ret = call float @_Z11fast_lengthu2v2f(<2 x float> %1)
    ret float %ret
}
define float @_Z13fast_distanceu2v3fu2v3f(<4 x float> %p0, <4 x float> %p1) nounwind
{
    %1 = fsub <4 x float> %p0, %p1
    %ret = call float @_Z11fast_lengthu2v3f(<4 x float> %1)
    ret float %ret
}

define <2 x float> @_Z14fast_normalizeu2v2f(<2 x float> %p) nounwind
{
    %1 = call float @_Z6lengthu2v2f(<2 x float> %p)
    %2 = fdiv float 1.000000e+00, %1
    %3 = insertelement <2 x float> undef, float %2, i32 0
    %4 = shufflevector <2 x float> %3, <2 x float> undef, <2 x i32> zeroinitializer
    %ret = fmul <2 x float> %4, %p
    ret <2 x float> %ret
}
define <4 x float> @_Z14fast_normalizeu2v3f(<4 x float> %p) nounwind
{
    %1 = call float @_Z6lengthu2v3f(<4 x float> %p)
    %2 = fdiv float 1.000000e+00, %1
    %3 = insertelement <4 x float> undef, float %2, i32 0
    %4 = shufflevector <4 x float> %3, <4 x float> undef, <4 x i32> zeroinitializer
    %ret = fmul <4 x float> %4, %p
    ret <4 x float> %ret
}
