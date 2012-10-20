; ModuleID = 'math.ll'

declare float     @llvm.sqrt.f32(float %Val)
declare double    @llvm.sqrt.f64(double %Val)
declare <2 x float>     @llvm.sqrt.v2f32(<2 x float> %Val)
declare <2 x double>    @llvm.sqrt.v2f64(<2 x double> %Val)
declare <4 x float>     @llvm.sqrt.v4f32(<4 x float> %Val)
declare <4 x double>    @llvm.sqrt.v4f64(<4 x double> %Val)
declare <8 x float>     @llvm.sqrt.v8f32(<8 x float> %Val)
declare <8 x double>    @llvm.sqrt.v8f64(<8 x double> %Val)
declare <16 x float>     @llvm.sqrt.v16f32(<16 x float> %Val)
declare <16 x double>    @llvm.sqrt.v16f64(<16 x double> %Val)

define double @_Z4sqrtd(double %x) nounwind {
  %1 = call double    @llvm.sqrt.f64(double %x) nounwind
  ret double %1
}
define float @_Z4sqrtf(float %x) nounwind {
  %1 = call float @llvm.sqrt.f32(float %x) nounwind
  ret float %1
}
define <2 x double> @_Z4sqrtu2v2d(<2 x double> %x) nounwind {
  %1 = call <2 x double>    @llvm.sqrt.v2f64(<2 x double> %x) nounwind
  ret <2 x double> %1
}
define <2 x float> @_Z4sqrtu2v2f(<2 x float> %x) nounwind {
  %1 = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %x) nounwind
  ret <2 x float> %1
}
define <4 x double> @_Z4sqrtu2v3d(<4 x double> %x) nounwind {
  %1 = call <4 x double>    @llvm.sqrt.v4f64(<4 x double> %x) nounwind
  ret <4 x double> %1
}
define <4 x float> @_Z4sqrtu2v3f(<4 x float> %x) nounwind {
  %1 = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %x) nounwind
  ret <4 x float> %1
}
define <4 x double> @_Z4sqrtu2v4d(<4 x double> %x) nounwind {
  %1 = call <4 x double>    @llvm.sqrt.v4f64(<4 x double> %x) nounwind
  ret <4 x double> %1
}
define <4 x float> @_Z4sqrtu2v4f(<4 x float> %x) nounwind {
  %1 = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %x) nounwind
  ret <4 x float> %1
}
define <8 x double> @_Z4sqrtu2v8d(<8 x double> %x) nounwind {
  %1 = call <8 x double>    @llvm.sqrt.v8f64(<8 x double> %x) nounwind
  ret <8 x double> %1
}
define <8 x float> @_Z4sqrtu2v8f(<8 x float> %x) nounwind {
  %1 = call <8 x float> @llvm.sqrt.v8f32(<8 x float> %x) nounwind
  ret <8 x float> %1
}
define <16 x double> @_Z4sqrtu3v16d(<16 x double> %x) nounwind {
  %1 = call <16 x double>    @llvm.sqrt.v16f64(<16 x double> %x) nounwind
  ret <16 x double> %1
}
define <16 x float> @_Z4sqrtu3v16f(<16 x float> %x) nounwind {
  %1 = call <16 x float> @llvm.sqrt.v16f32(<16 x float> %x) nounwind
  ret <16 x float> %1
}


declare float     @llvm.powi.f32(float  %Val, i32 %power)
declare double    @llvm.powi.f64(double %Val, i32 %power)

define double @_Z4powndi(double %x, i32 %power) nounwind {
  %1 = call double    @llvm.powi.f64(double %x, i32 %power) nounwind
  ret double %1
}

define float @_Z4pownfi(float %x, i32 %power) nounwind {
  %1 = call float    @llvm.powi.f32(float %x, i32 %power) nounwind
  ret float %1
}


declare float     @llvm.sin.f32(float  %Val)
declare double    @llvm.sin.f64(double %Val)
declare <2 x float>     @llvm.sin.v2f32(<2 x float>  %Val)
declare <2 x double>    @llvm.sin.v2f64(<2 x double> %Val)
declare <4 x float>     @llvm.sin.v4f32(<4 x float>  %Val)
declare <4 x double>    @llvm.sin.v4f64(<4 x double> %Val)
declare <8 x float>     @llvm.sin.v8f32(<8 x float>  %Val)
declare <8 x double>    @llvm.sin.v8f64(<8 x double> %Val)
declare <16 x float>     @llvm.sin.v16f32(<16 x float>  %Val)
declare <16 x double>    @llvm.sin.v16f64(<16 x double> %Val)

define double @_Z3sind(double %x) nounwind {
    %1 = call double    @llvm.sin.f64(double %x) nounwind
    ret double %1
}
define float @_Z3sinf(float %x) nounwind {
    %1 = call float    @llvm.sin.f32(float %x) nounwind
    ret float %1
}
define <2 x double> @_Z3sinu2v2d(<2 x double> %x) nounwind {
    %1 = call <2 x double>    @llvm.sin.v2f64(<2 x double> %x) nounwind
    ret <2 x double> %1
}
define <2 x float> @_Z3sinu2v2f(<2 x float> %x) nounwind {
    %1 = call <2 x float>    @llvm.sin.v2f32(<2 x float> %x) nounwind
    ret <2 x float> %1
}
define <4 x double> @_Z3sinu2v3d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.sin.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z3sinu2v3f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.sin.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <4 x double> @_Z3sinu2v4d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.sin.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z3sinu2v4f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.sin.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <8 x double> @_Z3sinu2v8d(<8 x double> %x) nounwind {
    %1 = call <8 x double>    @llvm.sin.v8f64(<8 x double> %x) nounwind
    ret <8 x double> %1
}
define <8 x float> @_Z3sinu2v8f(<8 x float> %x) nounwind {
    %1 = call <8 x float>    @llvm.sin.v8f32(<8 x float> %x) nounwind
    ret <8 x float> %1
}
define <16 x double> @_Z3sinu3v16d(<16 x double> %x) nounwind {
    %1 = call <16 x double>    @llvm.sin.v16f64(<16 x double> %x) nounwind
    ret <16 x double> %1
}
define <16 x float> @_Z3sinu3v16f(<16 x float> %x) nounwind {
    %1 = call <16 x float>    @llvm.sin.v16f32(<16 x float> %x) nounwind
    ret <16 x float> %1
}


declare float     @llvm.cos.f32(float  %Val)
declare double    @llvm.cos.f64(double %Val)
declare <2 x float>     @llvm.cos.v2f32(<2 x float>  %Val)
declare <2 x double>    @llvm.cos.v2f64(<2 x double> %Val)
declare <4 x float>     @llvm.cos.v4f32(<4 x float>  %Val)
declare <4 x double>    @llvm.cos.v4f64(<4 x double> %Val)
declare <8 x float>     @llvm.cos.v8f32(<8 x float>  %Val)
declare <8 x double>    @llvm.cos.v8f64(<8 x double> %Val)
declare <16 x float>     @llvm.cos.v16f32(<16 x float>  %Val)
declare <16 x double>    @llvm.cos.v16f64(<16 x double> %Val)

define double @_Z3cosd(double %x) nounwind {
    %1 = call double    @llvm.cos.f64(double %x) nounwind
    ret double %1
}
define float @_Z3cosf(float %x) nounwind {
    %1 = call float    @llvm.cos.f32(float %x) nounwind
    ret float %1
}
define <2 x double> @_Z3cosu2v2d(<2 x double> %x) nounwind {
    %1 = call <2 x double>    @llvm.cos.v2f64(<2 x double> %x) nounwind
    ret <2 x double> %1
}
define <2 x float> @_Z3cosu2v2f(<2 x float> %x) nounwind {
    %1 = call <2 x float>    @llvm.cos.v2f32(<2 x float> %x) nounwind
    ret <2 x float> %1
}
define <4 x double> @_Z3cosu2v3d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.cos.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z3cosu2v3f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.cos.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <4 x double> @_Z3cosu2v4d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.cos.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z3cosu2v4f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.cos.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <8 x double> @_Z3cosu2v8d(<8 x double> %x) nounwind {
    %1 = call <8 x double>    @llvm.cos.v8f64(<8 x double> %x) nounwind
    ret <8 x double> %1
}
define <8 x float> @_Z3cosu2v8f(<8 x float> %x) nounwind {
    %1 = call <8 x float>    @llvm.cos.v8f32(<8 x float> %x) nounwind
    ret <8 x float> %1
}
define <16 x double> @_Z3cosu3v16d(<16 x double> %x) nounwind {
    %1 = call <16 x double>    @llvm.cos.v16f64(<16 x double> %x) nounwind
    ret <16 x double> %1
}
define <16 x float> @_Z3cosu3v16f(<16 x float> %x) nounwind {
    %1 = call <16 x float>    @llvm.cos.v16f32(<16 x float> %x) nounwind
    ret <16 x float> %1
}


declare float     @llvm.pow.f32(float  %Val, float %Power)
declare double    @llvm.pow.f64(double %Val, double %Power)

define double @_Z3powdd(double %x, double %y) nounwind {
    %1 = call double    @llvm.pow.f64(double %x, double %y)
    ret double %1
}

define float @_Z3powff(float %x, float %y) nounwind {
    %1 = call float    @llvm.pow.f32(float %x, float %y)
    ret float %1
}

declare float     @llvm.exp.f32(float  %Val)
declare double    @llvm.exp.f64(double %Val)
declare <2 x float>     @llvm.exp.v2f32(<2 x float>  %Val)
declare <2 x double>    @llvm.exp.v2f64(<2 x double> %Val)
declare <4 x float>     @llvm.exp.v4f32(<4 x float>  %Val)
declare <4 x double>    @llvm.exp.v4f64(<4 x double> %Val)
declare <8 x float>     @llvm.exp.v8f32(<8 x float>  %Val)
declare <8 x double>    @llvm.exp.v8f64(<8 x double> %Val)
declare <16 x float>     @llvm.exp.v16f32(<16 x float>  %Val)
declare <16 x double>    @llvm.exp.v16f64(<16 x double> %Val)

define double @_Z3expd(double %x) nounwind {
    %1 = call double    @llvm.exp.f64(double %x) nounwind
    ret double %1
}
define float @_Z3expf(float %x) nounwind {
    %1 = call float    @llvm.exp.f32(float %x) nounwind
    ret float %1
}
define <2 x double> @_Z3expu2v2d(<2 x double> %x) nounwind {
    %1 = call <2 x double>    @llvm.exp.v2f64(<2 x double> %x) nounwind
    ret <2 x double> %1
}
define <2 x float> @_Z3expu2v2f(<2 x float> %x) nounwind {
    %1 = call <2 x float>    @llvm.exp.v2f32(<2 x float> %x) nounwind
    ret <2 x float> %1
}
define <4 x double> @_Z3expu2v3d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.exp.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z3expu2v3f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.exp.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <4 x double> @_Z3expu2v4d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.exp.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z3expu2v4f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.exp.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <8 x double> @_Z3expu2v8d(<8 x double> %x) nounwind {
    %1 = call <8 x double>    @llvm.exp.v8f64(<8 x double> %x) nounwind
    ret <8 x double> %1
}
define <8 x float> @_Z3expu2v8f(<8 x float> %x) nounwind {
    %1 = call <8 x float>    @llvm.exp.v8f32(<8 x float> %x) nounwind
    ret <8 x float> %1
}
define <16 x double> @_Z3expu3v16d(<16 x double> %x) nounwind {
    %1 = call <16 x double>    @llvm.exp.v16f64(<16 x double> %x) nounwind
    ret <16 x double> %1
}
define <16 x float> @_Z3expu3v16f(<16 x float> %x) nounwind {
    %1 = call <16 x float>    @llvm.exp.v16f32(<16 x float> %x) nounwind
    ret <16 x float> %1
}


declare float     @llvm.log.f32(float  %Val)
declare double    @llvm.log.f64(double %Val)
declare <2 x float>     @llvm.log.v2f32(<2 x float>  %Val)
declare <2 x double>    @llvm.log.v2f64(<2 x double> %Val)
declare <4 x float>     @llvm.log.v4f32(<4 x float>  %Val)
declare <4 x double>    @llvm.log.v4f64(<4 x double> %Val)
declare <8 x float>     @llvm.log.v8f32(<8 x float>  %Val)
declare <8 x double>    @llvm.log.v8f64(<8 x double> %Val)
declare <16 x float>     @llvm.log.v16f32(<16 x float>  %Val)
declare <16 x double>    @llvm.log.v16f64(<16 x double> %Val)

define double @_Z3logd(double %x) nounwind {
    %1 = call double    @llvm.log.f64(double %x) nounwind
    ret double %1
}
define float @_Z3logf(float %x) nounwind {
    %1 = call float    @llvm.log.f32(float %x) nounwind
    ret float %1
}
define <2 x double> @_Z3logu2v2d(<2 x double> %x) nounwind {
    %1 = call <2 x double>    @llvm.log.v2f64(<2 x double> %x) nounwind
    ret <2 x double> %1
}
define <2 x float> @_Z3logu2v2f(<2 x float> %x) nounwind {
    %1 = call <2 x float>    @llvm.log.v2f32(<2 x float> %x) nounwind
    ret <2 x float> %1
}
define <4 x double> @_Z3logu2v3d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.log.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z3logu2v3f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.log.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <4 x double> @_Z3logu2v4d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.log.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z3logu2v4f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.log.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <8 x double> @_Z3logu2v8d(<8 x double> %x) nounwind {
    %1 = call <8 x double>    @llvm.log.v8f64(<8 x double> %x) nounwind
    ret <8 x double> %1
}
define <8 x float> @_Z3logu2v8f(<8 x float> %x) nounwind {
    %1 = call <8 x float>    @llvm.log.v8f32(<8 x float> %x) nounwind
    ret <8 x float> %1
}
define <16 x double> @_Z3logu3v16d(<16 x double> %x) nounwind {
    %1 = call <16 x double>    @llvm.log.v16f64(<16 x double> %x) nounwind
    ret <16 x double> %1
}
define <16 x float> @_Z3logu3v16f(<16 x float> %x) nounwind {
    %1 = call <16 x float>    @llvm.log.v16f32(<16 x float> %x) nounwind
    ret <16 x float> %1
}


declare float     @llvm.fma.f32(float  %a, float  %b, float  %c)
declare double    @llvm.fma.f64(double %a, double %b, double %c)

define double @_Z3fmaddd(double %a, double %b, double %c) nounwind {
    %1 = call double    @llvm.fma.f64(double %a, double %b, double %c)
    ret double %1
}

define float @_Z3fmafff(float %a, float %b, float %c) nounwind {
    %1 = call float    @llvm.fma.f32(float %a, float %b, float %c)
    ret float %1
}


declare float     @llvm.fabs.f32(float  %Val)
declare double    @llvm.fabs.f64(double %Val)
declare <2 x float>     @llvm.fabs.v2f32(<2 x float>  %Val)
declare <2 x double>    @llvm.fabs.v2f64(<2 x double> %Val)
declare <4 x float>     @llvm.fabs.v4f32(<4 x float>  %Val)
declare <4 x double>    @llvm.fabs.v4f64(<4 x double> %Val)
declare <8 x float>     @llvm.fabs.v8f32(<8 x float>  %Val)
declare <8 x double>    @llvm.fabs.v8f64(<8 x double> %Val)
declare <16 x float>     @llvm.fabs.v16f32(<16 x float>  %Val)
declare <16 x double>    @llvm.fabs.v16f64(<16 x double> %Val)

define double @_Z4fabsd(double %x) nounwind {
    %1 = call double    @llvm.fabs.f64(double %x) nounwind
    ret double %1
}
define float @_Z4fabsf(float %x) nounwind {
    %1 = call float    @llvm.fabs.f32(float %x) nounwind
    ret float %1
}
define <2 x double> @_Z4fabsu2v2d(<2 x double> %x) nounwind {
    %1 = call <2 x double>    @llvm.fabs.v2f64(<2 x double> %x) nounwind
    ret <2 x double> %1
}
define <2 x float> @_Z4fabsu2v2f(<2 x float> %x) nounwind {
    %1 = call <2 x float>    @llvm.fabs.v2f32(<2 x float> %x) nounwind
    ret <2 x float> %1
}
define <4 x double> @_Z4fabsu2v3d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.fabs.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z4fabsu2v3f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.fabs.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <4 x double> @_Z4fabsu2v4d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.fabs.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z4fabsu2v4f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.fabs.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <8 x double> @_Z4fabsu2v8d(<8 x double> %x) nounwind {
    %1 = call <8 x double>    @llvm.fabs.v8f64(<8 x double> %x) nounwind
    ret <8 x double> %1
}
define <8 x float> @_Z4fabsu2v8f(<8 x float> %x) nounwind {
    %1 = call <8 x float>    @llvm.fabs.v8f32(<8 x float> %x) nounwind
    ret <8 x float> %1
}
define <16 x double> @_Z4fabsu3v16d(<16 x double> %x) nounwind {
    %1 = call <16 x double>    @llvm.fabs.v16f64(<16 x double> %x) nounwind
    ret <16 x double> %1
}
define <16 x float> @_Z4fabsu3v16f(<16 x float> %x) nounwind {
    %1 = call <16 x float>    @llvm.fabs.v16f32(<16 x float> %x) nounwind
    ret <16 x float> %1
}


declare float     @llvm.floor.f32(float  %Val)
declare double    @llvm.floor.f64(double %Val)
declare <2 x float>     @llvm.floor.v2f32(<2 x float>  %Val)
declare <2 x double>    @llvm.floor.v2f64(<2 x double> %Val)
declare <4 x float>     @llvm.floor.v4f32(<4 x float>  %Val)
declare <4 x double>    @llvm.floor.v4f64(<4 x double> %Val)
declare <8 x float>     @llvm.floor.v8f32(<8 x float>  %Val)
declare <8 x double>    @llvm.floor.v8f64(<8 x double> %Val)
declare <16 x float>     @llvm.floor.v16f32(<16 x float>  %Val)
declare <16 x double>    @llvm.floor.v16f64(<16 x double> %Val)

define double @_Z5floord(double %x) nounwind {
    %1 = call double    @llvm.floor.f64(double %x) nounwind
    ret double %1
}
define float @_Z5floorf(float %x) nounwind {
    %1 = call float    @llvm.floor.f32(float %x) nounwind
    ret float %1
}
define <2 x double> @_Z5flooru2v2d(<2 x double> %x) nounwind {
    %1 = call <2 x double>    @llvm.floor.v2f64(<2 x double> %x) nounwind
    ret <2 x double> %1
}
define <2 x float> @_Z5flooru2v2f(<2 x float> %x) nounwind {
    %1 = call <2 x float>    @llvm.floor.v2f32(<2 x float> %x) nounwind
    ret <2 x float> %1
}
define <4 x double> @_Z5flooru2v3d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.floor.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z5flooru2v3f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.floor.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <4 x double> @_Z5flooru2v4d(<4 x double> %x) nounwind {
    %1 = call <4 x double>    @llvm.floor.v4f64(<4 x double> %x) nounwind
    ret <4 x double> %1
}
define <4 x float> @_Z5flooru2v4f(<4 x float> %x) nounwind {
    %1 = call <4 x float>    @llvm.floor.v4f32(<4 x float> %x) nounwind
    ret <4 x float> %1
}
define <8 x double> @_Z5flooru2v8d(<8 x double> %x) nounwind {
    %1 = call <8 x double>    @llvm.floor.v8f64(<8 x double> %x) nounwind
    ret <8 x double> %1
}
define <8 x float> @_Z5flooru2v8f(<8 x float> %x) nounwind {
    %1 = call <8 x float>    @llvm.floor.v8f32(<8 x float> %x) nounwind
    ret <8 x float> %1
}
define <16 x double> @_Z5flooru3v16d(<16 x double> %x) nounwind {
    %1 = call <16 x double>    @llvm.floor.v16f64(<16 x double> %x) nounwind
    ret <16 x double> %1
}
define <16 x float> @_Z5flooru3v16f(<16 x float> %x) nounwind {
    %1 = call <16 x float>    @llvm.floor.v16f32(<16 x float> %x) nounwind
    ret <16 x float> %1
}
