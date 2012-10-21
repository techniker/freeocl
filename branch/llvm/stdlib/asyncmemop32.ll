; ModuleID = 'asyncmemop.ll'

declare void @llvm.prefetch(i8* %address, i32 %rw, i32 %locality, i32 %cache_type)
define void @_Z8prefetchPU2A1Kcu2sz(i8* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast i8* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Khu2sz(i8* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast i8* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ksu2sz(i16* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast i16* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ktu2sz(i16* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast i16* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Kiu2sz(i32* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast i32* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Kju2sz(i32* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast i32* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Klu2sz(i64* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast i64* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Kmu2sz(i64* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast i64* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Kfu2sz(float* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast float* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Kdu2sz(double* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast double* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2cu2sz(<2 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2hu2sz(<2 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2su2sz(<2 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2tu2sz(<2 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2iu2sz(<2 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2ju2sz(<2 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2lu2sz(<2 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2mu2sz(<2 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2fu2sz(<2 x float>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x float>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v2du2sz(<2 x double>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <2 x double>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3cu2sz(<4 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3hu2sz(<4 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3su2sz(<4 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3tu2sz(<4 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3iu2sz(<4 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3ju2sz(<4 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3lu2sz(<4 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3mu2sz(<4 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3fu2sz(<4 x float>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x float>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v3du2sz(<4 x double>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x double>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4cu2sz(<4 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4hu2sz(<4 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4su2sz(<4 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4tu2sz(<4 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4iu2sz(<4 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4ju2sz(<4 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4lu2sz(<4 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4mu2sz(<4 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4fu2sz(<4 x float>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x float>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v4du2sz(<4 x double>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <4 x double>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8cu2sz(<8 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8hu2sz(<8 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8su2sz(<8 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8tu2sz(<8 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8iu2sz(<8 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8ju2sz(<8 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8lu2sz(<8 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8mu2sz(<8 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8fu2sz(<8 x float>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x float>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku2v8du2sz(<8 x double>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <8 x double>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16cu2sz(<16 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16hu2sz(<16 x i8>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x i8>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16su2sz(<16 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16tu2sz(<16 x i16>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x i16>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16iu2sz(<16 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16ju2sz(<16 x i32>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x i32>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16lu2sz(<16 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16mu2sz(<16 x i64>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x i64>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16fu2sz(<16 x float>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x float>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
define void @_Z8prefetchPU2A1Ku3v16du2sz(<16 x double>* %ptr, i32 %s) nounwind {
	%ptri8 = bitcast <16 x double>* %ptr to i8*
	call void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)
	ret void
}
