; ModuleID = 'math.ll'

declare float     @llvm.sqrt.f32(float %Val)
declare double    @llvm.sqrt.f64(double %Val)

define double @_Z4sqrtd(double %x) nounwind {
  %1 = call double    @llvm.sqrt.f64(double %x) nounwind
  ret double %1
}

define float @_Z4sqrtf(float %x) nounwind {
  %1 = call float @llvm.sqrt.f32(float %x) nounwind
  ret float %1
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

define double @_Z3sind(double %x) nounwind {
    %1 = call double    @llvm.sin.f64(double %x) nounwind
    ret double %1
}

define float @_Z3sinf(float %x) nounwind {
    %1 = call float    @llvm.sin.f32(float %x) nounwind
    ret float %1
}


declare float     @llvm.cos.f32(float  %Val)
declare double    @llvm.cos.f64(double %Val)

define double @_Z3cosd(double %x) nounwind {
    %1 = call double    @llvm.cos.f64(double %x) nounwind
    ret double %1
}

define float @_Z3cosf(float %x) nounwind {
    %1 = call float    @llvm.cos.f32(float %x) nounwind
    ret float %1
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

define double @_Z3expd(double %x) nounwind {
    %1 = call double    @llvm.exp.f64(double %x) nounwind
    ret double %1
}

define float @_Z3expf(float %x) nounwind {
    %1 = call float    @llvm.exp.f32(float %x) nounwind
    ret float %1
}


declare float     @llvm.log.f32(float  %Val)
declare double    @llvm.log.f64(double %Val)

define double @_Z3logd(double %x) nounwind {
    %1 = call double    @llvm.log.f64(double %x) nounwind
    ret double %1
}

define float @_Z3logf(float %x) nounwind {
    %1 = call float    @llvm.log.f32(float %x) nounwind
    ret float %1
}


declare float     @llvm.fma.f32(float  %a, float  %b, float  %c)
declare double    @llvm.fma.f64(double %a, double %b, double %c)

define double @_Z3fmaddd(double %a, double %b, double %c) nounwind {
    %1 = call double    @llvm.fma.f64(double %a, double %b, double %c)
    ret double %1
}

define float @_Z3fmattt(float %a, float %b, float %c) nounwind {
    %1 = call float    @llvm.fma.f32(float %a, float %b, float %c)
    ret float %1
}


declare float     @llvm.fabs.f32(float  %Val)
declare double    @llvm.fabs.f64(double %Val)

define double @_Z4fabsd(double %x) nounwind {
    %1 = call double    @llvm.fabs.f64(double %x) nounwind
    ret double %1
}

define float @_Z4fabsf(float %x) nounwind {
    %1 = call float    @llvm.fabs.f32(float %x) nounwind
    ret float %1
}


declare float     @llvm.floor.f32(float  %Val)
declare double    @llvm.floor.f64(double %Val)

define double @_Z5floord(double %x) nounwind {
    %1 = call double    @llvm.floor.f64(double %x) nounwind
    ret double %1
}

define float @_Z5floorf(float %x) nounwind {
    %1 = call float    @llvm.floor.f32(float %x) nounwind
    ret float %1
}
