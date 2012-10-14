; ModuleID = 'integer.ll'

declare i8   @llvm.ctlz.i8  (i8   %src, i1 %is_zero_undef)
declare i16  @llvm.ctlz.i16 (i16  %src, i1 %is_zero_undef)
declare i32  @llvm.ctlz.i32 (i32  %src, i1 %is_zero_undef)
declare i64  @llvm.ctlz.i64 (i64  %src, i1 %is_zero_undef)

define i32 @_Z3clzi(i32 %i) nounwind {
    %1 = call i32 @llvm.ctlz.i32 (i32 %i, i1 0)
    ret i32 %1
}

declare i8 @llvm.ctpop.i8(i8  %src)
declare i16 @llvm.ctpop.i16(i16 %src)
declare i32 @llvm.ctpop.i32(i32 %src)
declare i64 @llvm.ctpop.i64(i64 %src)

define i64 @_Z8popcountm(i64 %i) nounwind {
    %1 = call i64 @llvm.ctpop.i64(i64 %i) nounwind
    ret i64 %1
}
