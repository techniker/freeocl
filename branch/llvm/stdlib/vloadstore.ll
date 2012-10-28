; ModuleID = 'vloadstore.ll'

define <2 x i8> @_Z6vload2u2szPKc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%src = getelementptr <2 x i8>* %ptr, i64 %offset
	%ret = load <2 x i8>* %src
	ret <2 x i8> %ret
}
define <2 x i8> @_Z6vload2u2szPU2A1Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%src = getelementptr <2 x i8>* %ptr, i64 %offset
	%ret = load <2 x i8>* %src
	ret <2 x i8> %ret
}
define <2 x i8> @_Z6vload2u2szPU2A2Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%src = getelementptr <2 x i8>* %ptr, i64 %offset
	%ret = load <2 x i8>* %src
	ret <2 x i8> %ret
}
define <2 x i8> @_Z6vload2u2szPU2A3Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%src = getelementptr <2 x i8>* %ptr, i64 %offset
	%ret = load <2 x i8>* %src
	ret <2 x i8> %ret
}
define void @_Z7vstore2u2v2cu2szPKc(<2 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%dst = getelementptr <2 x i8>* %ptr, i64 %offset
	store <2 x i8> %data, <2 x i8>* %dst
	ret void
}
define void @_Z7vstore2u2v2cu2szPU2A1Kc(<2 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%dst = getelementptr <2 x i8>* %ptr, i64 %offset
	store <2 x i8> %data, <2 x i8>* %dst
	ret void
}
define void @_Z7vstore2u2v2cu2szPU2A3Kc(<2 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%dst = getelementptr <2 x i8>* %ptr, i64 %offset
	store <2 x i8> %data, <2 x i8>* %dst
	ret void
}
define <2 x i8> @_Z6vload2u2szPKh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%src = getelementptr <2 x i8>* %ptr, i64 %offset
	%ret = load <2 x i8>* %src
	ret <2 x i8> %ret
}
define <2 x i8> @_Z6vload2u2szPU2A1Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%src = getelementptr <2 x i8>* %ptr, i64 %offset
	%ret = load <2 x i8>* %src
	ret <2 x i8> %ret
}
define <2 x i8> @_Z6vload2u2szPU2A2Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%src = getelementptr <2 x i8>* %ptr, i64 %offset
	%ret = load <2 x i8>* %src
	ret <2 x i8> %ret
}
define <2 x i8> @_Z6vload2u2szPU2A3Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%src = getelementptr <2 x i8>* %ptr, i64 %offset
	%ret = load <2 x i8>* %src
	ret <2 x i8> %ret
}
define void @_Z7vstore2u2v2hu2szPKh(<2 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%dst = getelementptr <2 x i8>* %ptr, i64 %offset
	store <2 x i8> %data, <2 x i8>* %dst
	ret void
}
define void @_Z7vstore2u2v2hu2szPU2A1Kh(<2 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%dst = getelementptr <2 x i8>* %ptr, i64 %offset
	store <2 x i8> %data, <2 x i8>* %dst
	ret void
}
define void @_Z7vstore2u2v2hu2szPU2A3Kh(<2 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <2 x i8>*
	%dst = getelementptr <2 x i8>* %ptr, i64 %offset
	store <2 x i8> %data, <2 x i8>* %dst
	ret void
}
define <2 x i16> @_Z6vload2u2szPKs(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%src = getelementptr <2 x i16>* %ptr, i64 %offset
	%ret = load <2 x i16>* %src
	ret <2 x i16> %ret
}
define <2 x i16> @_Z6vload2u2szPU2A1Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%src = getelementptr <2 x i16>* %ptr, i64 %offset
	%ret = load <2 x i16>* %src
	ret <2 x i16> %ret
}
define <2 x i16> @_Z6vload2u2szPU2A2Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%src = getelementptr <2 x i16>* %ptr, i64 %offset
	%ret = load <2 x i16>* %src
	ret <2 x i16> %ret
}
define <2 x i16> @_Z6vload2u2szPU2A3Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%src = getelementptr <2 x i16>* %ptr, i64 %offset
	%ret = load <2 x i16>* %src
	ret <2 x i16> %ret
}
define void @_Z7vstore2u2v2su2szPKs(<2 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%dst = getelementptr <2 x i16>* %ptr, i64 %offset
	store <2 x i16> %data, <2 x i16>* %dst
	ret void
}
define void @_Z7vstore2u2v2su2szPU2A1Ks(<2 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%dst = getelementptr <2 x i16>* %ptr, i64 %offset
	store <2 x i16> %data, <2 x i16>* %dst
	ret void
}
define void @_Z7vstore2u2v2su2szPU2A3Ks(<2 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%dst = getelementptr <2 x i16>* %ptr, i64 %offset
	store <2 x i16> %data, <2 x i16>* %dst
	ret void
}
define <2 x i16> @_Z6vload2u2szPKt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%src = getelementptr <2 x i16>* %ptr, i64 %offset
	%ret = load <2 x i16>* %src
	ret <2 x i16> %ret
}
define <2 x i16> @_Z6vload2u2szPU2A1Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%src = getelementptr <2 x i16>* %ptr, i64 %offset
	%ret = load <2 x i16>* %src
	ret <2 x i16> %ret
}
define <2 x i16> @_Z6vload2u2szPU2A2Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%src = getelementptr <2 x i16>* %ptr, i64 %offset
	%ret = load <2 x i16>* %src
	ret <2 x i16> %ret
}
define <2 x i16> @_Z6vload2u2szPU2A3Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%src = getelementptr <2 x i16>* %ptr, i64 %offset
	%ret = load <2 x i16>* %src
	ret <2 x i16> %ret
}
define void @_Z7vstore2u2v2tu2szPKt(<2 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%dst = getelementptr <2 x i16>* %ptr, i64 %offset
	store <2 x i16> %data, <2 x i16>* %dst
	ret void
}
define void @_Z7vstore2u2v2tu2szPU2A1Kt(<2 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%dst = getelementptr <2 x i16>* %ptr, i64 %offset
	store <2 x i16> %data, <2 x i16>* %dst
	ret void
}
define void @_Z7vstore2u2v2tu2szPU2A3Kt(<2 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <2 x i16>*
	%dst = getelementptr <2 x i16>* %ptr, i64 %offset
	store <2 x i16> %data, <2 x i16>* %dst
	ret void
}
define <2 x i32> @_Z6vload2u2szPKi(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%src = getelementptr <2 x i32>* %ptr, i64 %offset
	%ret = load <2 x i32>* %src
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6vload2u2szPU2A1Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%src = getelementptr <2 x i32>* %ptr, i64 %offset
	%ret = load <2 x i32>* %src
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6vload2u2szPU2A2Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%src = getelementptr <2 x i32>* %ptr, i64 %offset
	%ret = load <2 x i32>* %src
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6vload2u2szPU2A3Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%src = getelementptr <2 x i32>* %ptr, i64 %offset
	%ret = load <2 x i32>* %src
	ret <2 x i32> %ret
}
define void @_Z7vstore2u2v2iu2szPKi(<2 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%dst = getelementptr <2 x i32>* %ptr, i64 %offset
	store <2 x i32> %data, <2 x i32>* %dst
	ret void
}
define void @_Z7vstore2u2v2iu2szPU2A1Ki(<2 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%dst = getelementptr <2 x i32>* %ptr, i64 %offset
	store <2 x i32> %data, <2 x i32>* %dst
	ret void
}
define void @_Z7vstore2u2v2iu2szPU2A3Ki(<2 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%dst = getelementptr <2 x i32>* %ptr, i64 %offset
	store <2 x i32> %data, <2 x i32>* %dst
	ret void
}
define <2 x i32> @_Z6vload2u2szPKj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%src = getelementptr <2 x i32>* %ptr, i64 %offset
	%ret = load <2 x i32>* %src
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6vload2u2szPU2A1Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%src = getelementptr <2 x i32>* %ptr, i64 %offset
	%ret = load <2 x i32>* %src
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6vload2u2szPU2A2Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%src = getelementptr <2 x i32>* %ptr, i64 %offset
	%ret = load <2 x i32>* %src
	ret <2 x i32> %ret
}
define <2 x i32> @_Z6vload2u2szPU2A3Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%src = getelementptr <2 x i32>* %ptr, i64 %offset
	%ret = load <2 x i32>* %src
	ret <2 x i32> %ret
}
define void @_Z7vstore2u2v2ju2szPKj(<2 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%dst = getelementptr <2 x i32>* %ptr, i64 %offset
	store <2 x i32> %data, <2 x i32>* %dst
	ret void
}
define void @_Z7vstore2u2v2ju2szPU2A1Kj(<2 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%dst = getelementptr <2 x i32>* %ptr, i64 %offset
	store <2 x i32> %data, <2 x i32>* %dst
	ret void
}
define void @_Z7vstore2u2v2ju2szPU2A3Kj(<2 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <2 x i32>*
	%dst = getelementptr <2 x i32>* %ptr, i64 %offset
	store <2 x i32> %data, <2 x i32>* %dst
	ret void
}
define <2 x i64> @_Z6vload2u2szPKl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%src = getelementptr <2 x i64>* %ptr, i64 %offset
	%ret = load <2 x i64>* %src
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6vload2u2szPU2A1Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%src = getelementptr <2 x i64>* %ptr, i64 %offset
	%ret = load <2 x i64>* %src
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6vload2u2szPU2A2Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%src = getelementptr <2 x i64>* %ptr, i64 %offset
	%ret = load <2 x i64>* %src
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6vload2u2szPU2A3Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%src = getelementptr <2 x i64>* %ptr, i64 %offset
	%ret = load <2 x i64>* %src
	ret <2 x i64> %ret
}
define void @_Z7vstore2u2v2lu2szPKl(<2 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%dst = getelementptr <2 x i64>* %ptr, i64 %offset
	store <2 x i64> %data, <2 x i64>* %dst
	ret void
}
define void @_Z7vstore2u2v2lu2szPU2A1Kl(<2 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%dst = getelementptr <2 x i64>* %ptr, i64 %offset
	store <2 x i64> %data, <2 x i64>* %dst
	ret void
}
define void @_Z7vstore2u2v2lu2szPU2A3Kl(<2 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%dst = getelementptr <2 x i64>* %ptr, i64 %offset
	store <2 x i64> %data, <2 x i64>* %dst
	ret void
}
define <2 x i64> @_Z6vload2u2szPKm(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%src = getelementptr <2 x i64>* %ptr, i64 %offset
	%ret = load <2 x i64>* %src
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6vload2u2szPU2A1Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%src = getelementptr <2 x i64>* %ptr, i64 %offset
	%ret = load <2 x i64>* %src
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6vload2u2szPU2A2Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%src = getelementptr <2 x i64>* %ptr, i64 %offset
	%ret = load <2 x i64>* %src
	ret <2 x i64> %ret
}
define <2 x i64> @_Z6vload2u2szPU2A3Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%src = getelementptr <2 x i64>* %ptr, i64 %offset
	%ret = load <2 x i64>* %src
	ret <2 x i64> %ret
}
define void @_Z7vstore2u2v2mu2szPKm(<2 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%dst = getelementptr <2 x i64>* %ptr, i64 %offset
	store <2 x i64> %data, <2 x i64>* %dst
	ret void
}
define void @_Z7vstore2u2v2mu2szPU2A1Km(<2 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%dst = getelementptr <2 x i64>* %ptr, i64 %offset
	store <2 x i64> %data, <2 x i64>* %dst
	ret void
}
define void @_Z7vstore2u2v2mu2szPU2A3Km(<2 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <2 x i64>*
	%dst = getelementptr <2 x i64>* %ptr, i64 %offset
	store <2 x i64> %data, <2 x i64>* %dst
	ret void
}
define <2 x float> @_Z6vload2u2szPKf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <2 x float>*
	%src = getelementptr <2 x float>* %ptr, i64 %offset
	%ret = load <2 x float>* %src
	ret <2 x float> %ret
}
define <2 x float> @_Z6vload2u2szPU2A1Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <2 x float>*
	%src = getelementptr <2 x float>* %ptr, i64 %offset
	%ret = load <2 x float>* %src
	ret <2 x float> %ret
}
define <2 x float> @_Z6vload2u2szPU2A2Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <2 x float>*
	%src = getelementptr <2 x float>* %ptr, i64 %offset
	%ret = load <2 x float>* %src
	ret <2 x float> %ret
}
define <2 x float> @_Z6vload2u2szPU2A3Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <2 x float>*
	%src = getelementptr <2 x float>* %ptr, i64 %offset
	%ret = load <2 x float>* %src
	ret <2 x float> %ret
}
define void @_Z7vstore2u2v2fu2szPKf(<2 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <2 x float>*
	%dst = getelementptr <2 x float>* %ptr, i64 %offset
	store <2 x float> %data, <2 x float>* %dst
	ret void
}
define void @_Z7vstore2u2v2fu2szPU2A1Kf(<2 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <2 x float>*
	%dst = getelementptr <2 x float>* %ptr, i64 %offset
	store <2 x float> %data, <2 x float>* %dst
	ret void
}
define void @_Z7vstore2u2v2fu2szPU2A3Kf(<2 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <2 x float>*
	%dst = getelementptr <2 x float>* %ptr, i64 %offset
	store <2 x float> %data, <2 x float>* %dst
	ret void
}
define <2 x double> @_Z6vload2u2szPKd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <2 x double>*
	%src = getelementptr <2 x double>* %ptr, i64 %offset
	%ret = load <2 x double>* %src
	ret <2 x double> %ret
}
define <2 x double> @_Z6vload2u2szPU2A1Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <2 x double>*
	%src = getelementptr <2 x double>* %ptr, i64 %offset
	%ret = load <2 x double>* %src
	ret <2 x double> %ret
}
define <2 x double> @_Z6vload2u2szPU2A2Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <2 x double>*
	%src = getelementptr <2 x double>* %ptr, i64 %offset
	%ret = load <2 x double>* %src
	ret <2 x double> %ret
}
define <2 x double> @_Z6vload2u2szPU2A3Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <2 x double>*
	%src = getelementptr <2 x double>* %ptr, i64 %offset
	%ret = load <2 x double>* %src
	ret <2 x double> %ret
}
define void @_Z7vstore2u2v2du2szPKd(<2 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <2 x double>*
	%dst = getelementptr <2 x double>* %ptr, i64 %offset
	store <2 x double> %data, <2 x double>* %dst
	ret void
}
define void @_Z7vstore2u2v2du2szPU2A1Kd(<2 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <2 x double>*
	%dst = getelementptr <2 x double>* %ptr, i64 %offset
	store <2 x double> %data, <2 x double>* %dst
	ret void
}
define void @_Z7vstore2u2v2du2szPU2A3Kd(<2 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <2 x double>*
	%dst = getelementptr <2 x double>* %ptr, i64 %offset
	store <2 x double> %data, <2 x double>* %dst
	ret void
}
define <4 x i8> @_Z6vload3u2szPKc(i64 %offset, i8* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	%x = load i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	%y = load i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	%z = load i8* %pz
	%vx = insertelement <4 x i8> undef, i8 %x, i32 0
	%vy = insertelement <4 x i8> %vx, i8 %y, i32 1
	%ret = insertelement <4 x i8> %vy, i8 %z, i32 2
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload3u2szPU2A1Kc(i64 %offset, i8* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	%x = load i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	%y = load i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	%z = load i8* %pz
	%vx = insertelement <4 x i8> undef, i8 %x, i32 0
	%vy = insertelement <4 x i8> %vx, i8 %y, i32 1
	%ret = insertelement <4 x i8> %vy, i8 %z, i32 2
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload3u2szPU2A2Kc(i64 %offset, i8* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	%x = load i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	%y = load i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	%z = load i8* %pz
	%vx = insertelement <4 x i8> undef, i8 %x, i32 0
	%vy = insertelement <4 x i8> %vx, i8 %y, i32 1
	%ret = insertelement <4 x i8> %vy, i8 %z, i32 2
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload3u2szPU2A3Kc(i64 %offset, i8* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	%x = load i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	%y = load i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	%z = load i8* %pz
	%vx = insertelement <4 x i8> undef, i8 %x, i32 0
	%vy = insertelement <4 x i8> %vx, i8 %y, i32 1
	%ret = insertelement <4 x i8> %vy, i8 %z, i32 2
	ret <4 x i8> %ret
}
define void @_Z7vstore3u2v3cu2szPKc(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%x = extractelement <4 x i8> %data, i32 0
	%y = extractelement <4 x i8> %data, i32 1
	%z = extractelement <4 x i8> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	store i8 %x, i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	store i8 %y, i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	store i8 %z, i8* %pz
	ret void
}
define void @_Z7vstore3u2v3cu2szPU2A1Kc(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%x = extractelement <4 x i8> %data, i32 0
	%y = extractelement <4 x i8> %data, i32 1
	%z = extractelement <4 x i8> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	store i8 %x, i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	store i8 %y, i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	store i8 %z, i8* %pz
	ret void
}
define void @_Z7vstore3u2v3cu2szPU2A3Kc(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%x = extractelement <4 x i8> %data, i32 0
	%y = extractelement <4 x i8> %data, i32 1
	%z = extractelement <4 x i8> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	store i8 %x, i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	store i8 %y, i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	store i8 %z, i8* %pz
	ret void
}
define <4 x i8> @_Z6vload3u2szPKh(i64 %offset, i8* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	%x = load i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	%y = load i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	%z = load i8* %pz
	%vx = insertelement <4 x i8> undef, i8 %x, i32 0
	%vy = insertelement <4 x i8> %vx, i8 %y, i32 1
	%ret = insertelement <4 x i8> %vy, i8 %z, i32 2
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload3u2szPU2A1Kh(i64 %offset, i8* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	%x = load i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	%y = load i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	%z = load i8* %pz
	%vx = insertelement <4 x i8> undef, i8 %x, i32 0
	%vy = insertelement <4 x i8> %vx, i8 %y, i32 1
	%ret = insertelement <4 x i8> %vy, i8 %z, i32 2
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload3u2szPU2A2Kh(i64 %offset, i8* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	%x = load i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	%y = load i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	%z = load i8* %pz
	%vx = insertelement <4 x i8> undef, i8 %x, i32 0
	%vy = insertelement <4 x i8> %vx, i8 %y, i32 1
	%ret = insertelement <4 x i8> %vy, i8 %z, i32 2
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload3u2szPU2A3Kh(i64 %offset, i8* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	%x = load i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	%y = load i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	%z = load i8* %pz
	%vx = insertelement <4 x i8> undef, i8 %x, i32 0
	%vy = insertelement <4 x i8> %vx, i8 %y, i32 1
	%ret = insertelement <4 x i8> %vy, i8 %z, i32 2
	ret <4 x i8> %ret
}
define void @_Z7vstore3u2v3hu2szPKh(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%x = extractelement <4 x i8> %data, i32 0
	%y = extractelement <4 x i8> %data, i32 1
	%z = extractelement <4 x i8> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	store i8 %x, i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	store i8 %y, i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	store i8 %z, i8* %pz
	ret void
}
define void @_Z7vstore3u2v3hu2szPU2A1Kh(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%x = extractelement <4 x i8> %data, i32 0
	%y = extractelement <4 x i8> %data, i32 1
	%z = extractelement <4 x i8> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	store i8 %x, i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	store i8 %y, i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	store i8 %z, i8* %pz
	ret void
}
define void @_Z7vstore3u2v3hu2szPU2A3Kh(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%x = extractelement <4 x i8> %data, i32 0
	%y = extractelement <4 x i8> %data, i32 1
	%z = extractelement <4 x i8> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i8* %p, i64 %offx
	store i8 %x, i8* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i8* %p, i64 %offy
	store i8 %y, i8* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i8* %p, i64 %offz
	store i8 %z, i8* %pz
	ret void
}
define <4 x i16> @_Z6vload3u2szPKs(i64 %offset, i16* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	%x = load i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	%y = load i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	%z = load i16* %pz
	%vx = insertelement <4 x i16> undef, i16 %x, i32 0
	%vy = insertelement <4 x i16> %vx, i16 %y, i32 1
	%ret = insertelement <4 x i16> %vy, i16 %z, i32 2
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload3u2szPU2A1Ks(i64 %offset, i16* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	%x = load i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	%y = load i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	%z = load i16* %pz
	%vx = insertelement <4 x i16> undef, i16 %x, i32 0
	%vy = insertelement <4 x i16> %vx, i16 %y, i32 1
	%ret = insertelement <4 x i16> %vy, i16 %z, i32 2
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload3u2szPU2A2Ks(i64 %offset, i16* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	%x = load i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	%y = load i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	%z = load i16* %pz
	%vx = insertelement <4 x i16> undef, i16 %x, i32 0
	%vy = insertelement <4 x i16> %vx, i16 %y, i32 1
	%ret = insertelement <4 x i16> %vy, i16 %z, i32 2
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload3u2szPU2A3Ks(i64 %offset, i16* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	%x = load i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	%y = load i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	%z = load i16* %pz
	%vx = insertelement <4 x i16> undef, i16 %x, i32 0
	%vy = insertelement <4 x i16> %vx, i16 %y, i32 1
	%ret = insertelement <4 x i16> %vy, i16 %z, i32 2
	ret <4 x i16> %ret
}
define void @_Z7vstore3u2v3su2szPKs(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%x = extractelement <4 x i16> %data, i32 0
	%y = extractelement <4 x i16> %data, i32 1
	%z = extractelement <4 x i16> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	store i16 %x, i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	store i16 %y, i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	store i16 %z, i16* %pz
	ret void
}
define void @_Z7vstore3u2v3su2szPU2A1Ks(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%x = extractelement <4 x i16> %data, i32 0
	%y = extractelement <4 x i16> %data, i32 1
	%z = extractelement <4 x i16> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	store i16 %x, i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	store i16 %y, i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	store i16 %z, i16* %pz
	ret void
}
define void @_Z7vstore3u2v3su2szPU2A3Ks(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%x = extractelement <4 x i16> %data, i32 0
	%y = extractelement <4 x i16> %data, i32 1
	%z = extractelement <4 x i16> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	store i16 %x, i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	store i16 %y, i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	store i16 %z, i16* %pz
	ret void
}
define <4 x i16> @_Z6vload3u2szPKt(i64 %offset, i16* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	%x = load i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	%y = load i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	%z = load i16* %pz
	%vx = insertelement <4 x i16> undef, i16 %x, i32 0
	%vy = insertelement <4 x i16> %vx, i16 %y, i32 1
	%ret = insertelement <4 x i16> %vy, i16 %z, i32 2
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload3u2szPU2A1Kt(i64 %offset, i16* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	%x = load i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	%y = load i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	%z = load i16* %pz
	%vx = insertelement <4 x i16> undef, i16 %x, i32 0
	%vy = insertelement <4 x i16> %vx, i16 %y, i32 1
	%ret = insertelement <4 x i16> %vy, i16 %z, i32 2
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload3u2szPU2A2Kt(i64 %offset, i16* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	%x = load i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	%y = load i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	%z = load i16* %pz
	%vx = insertelement <4 x i16> undef, i16 %x, i32 0
	%vy = insertelement <4 x i16> %vx, i16 %y, i32 1
	%ret = insertelement <4 x i16> %vy, i16 %z, i32 2
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload3u2szPU2A3Kt(i64 %offset, i16* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	%x = load i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	%y = load i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	%z = load i16* %pz
	%vx = insertelement <4 x i16> undef, i16 %x, i32 0
	%vy = insertelement <4 x i16> %vx, i16 %y, i32 1
	%ret = insertelement <4 x i16> %vy, i16 %z, i32 2
	ret <4 x i16> %ret
}
define void @_Z7vstore3u2v3tu2szPKt(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%x = extractelement <4 x i16> %data, i32 0
	%y = extractelement <4 x i16> %data, i32 1
	%z = extractelement <4 x i16> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	store i16 %x, i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	store i16 %y, i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	store i16 %z, i16* %pz
	ret void
}
define void @_Z7vstore3u2v3tu2szPU2A1Kt(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%x = extractelement <4 x i16> %data, i32 0
	%y = extractelement <4 x i16> %data, i32 1
	%z = extractelement <4 x i16> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	store i16 %x, i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	store i16 %y, i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	store i16 %z, i16* %pz
	ret void
}
define void @_Z7vstore3u2v3tu2szPU2A3Kt(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%x = extractelement <4 x i16> %data, i32 0
	%y = extractelement <4 x i16> %data, i32 1
	%z = extractelement <4 x i16> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i16* %p, i64 %offx
	store i16 %x, i16* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i16* %p, i64 %offy
	store i16 %y, i16* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i16* %p, i64 %offz
	store i16 %z, i16* %pz
	ret void
}
define <4 x i32> @_Z6vload3u2szPKi(i64 %offset, i32* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	%x = load i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	%y = load i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	%z = load i32* %pz
	%vx = insertelement <4 x i32> undef, i32 %x, i32 0
	%vy = insertelement <4 x i32> %vx, i32 %y, i32 1
	%ret = insertelement <4 x i32> %vy, i32 %z, i32 2
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload3u2szPU2A1Ki(i64 %offset, i32* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	%x = load i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	%y = load i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	%z = load i32* %pz
	%vx = insertelement <4 x i32> undef, i32 %x, i32 0
	%vy = insertelement <4 x i32> %vx, i32 %y, i32 1
	%ret = insertelement <4 x i32> %vy, i32 %z, i32 2
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload3u2szPU2A2Ki(i64 %offset, i32* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	%x = load i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	%y = load i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	%z = load i32* %pz
	%vx = insertelement <4 x i32> undef, i32 %x, i32 0
	%vy = insertelement <4 x i32> %vx, i32 %y, i32 1
	%ret = insertelement <4 x i32> %vy, i32 %z, i32 2
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload3u2szPU2A3Ki(i64 %offset, i32* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	%x = load i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	%y = load i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	%z = load i32* %pz
	%vx = insertelement <4 x i32> undef, i32 %x, i32 0
	%vy = insertelement <4 x i32> %vx, i32 %y, i32 1
	%ret = insertelement <4 x i32> %vy, i32 %z, i32 2
	ret <4 x i32> %ret
}
define void @_Z7vstore3u2v3iu2szPKi(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%x = extractelement <4 x i32> %data, i32 0
	%y = extractelement <4 x i32> %data, i32 1
	%z = extractelement <4 x i32> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	store i32 %x, i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	store i32 %y, i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	store i32 %z, i32* %pz
	ret void
}
define void @_Z7vstore3u2v3iu2szPU2A1Ki(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%x = extractelement <4 x i32> %data, i32 0
	%y = extractelement <4 x i32> %data, i32 1
	%z = extractelement <4 x i32> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	store i32 %x, i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	store i32 %y, i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	store i32 %z, i32* %pz
	ret void
}
define void @_Z7vstore3u2v3iu2szPU2A3Ki(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%x = extractelement <4 x i32> %data, i32 0
	%y = extractelement <4 x i32> %data, i32 1
	%z = extractelement <4 x i32> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	store i32 %x, i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	store i32 %y, i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	store i32 %z, i32* %pz
	ret void
}
define <4 x i32> @_Z6vload3u2szPKj(i64 %offset, i32* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	%x = load i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	%y = load i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	%z = load i32* %pz
	%vx = insertelement <4 x i32> undef, i32 %x, i32 0
	%vy = insertelement <4 x i32> %vx, i32 %y, i32 1
	%ret = insertelement <4 x i32> %vy, i32 %z, i32 2
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload3u2szPU2A1Kj(i64 %offset, i32* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	%x = load i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	%y = load i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	%z = load i32* %pz
	%vx = insertelement <4 x i32> undef, i32 %x, i32 0
	%vy = insertelement <4 x i32> %vx, i32 %y, i32 1
	%ret = insertelement <4 x i32> %vy, i32 %z, i32 2
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload3u2szPU2A2Kj(i64 %offset, i32* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	%x = load i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	%y = load i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	%z = load i32* %pz
	%vx = insertelement <4 x i32> undef, i32 %x, i32 0
	%vy = insertelement <4 x i32> %vx, i32 %y, i32 1
	%ret = insertelement <4 x i32> %vy, i32 %z, i32 2
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload3u2szPU2A3Kj(i64 %offset, i32* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	%x = load i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	%y = load i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	%z = load i32* %pz
	%vx = insertelement <4 x i32> undef, i32 %x, i32 0
	%vy = insertelement <4 x i32> %vx, i32 %y, i32 1
	%ret = insertelement <4 x i32> %vy, i32 %z, i32 2
	ret <4 x i32> %ret
}
define void @_Z7vstore3u2v3ju2szPKj(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%x = extractelement <4 x i32> %data, i32 0
	%y = extractelement <4 x i32> %data, i32 1
	%z = extractelement <4 x i32> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	store i32 %x, i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	store i32 %y, i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	store i32 %z, i32* %pz
	ret void
}
define void @_Z7vstore3u2v3ju2szPU2A1Kj(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%x = extractelement <4 x i32> %data, i32 0
	%y = extractelement <4 x i32> %data, i32 1
	%z = extractelement <4 x i32> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	store i32 %x, i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	store i32 %y, i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	store i32 %z, i32* %pz
	ret void
}
define void @_Z7vstore3u2v3ju2szPU2A3Kj(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%x = extractelement <4 x i32> %data, i32 0
	%y = extractelement <4 x i32> %data, i32 1
	%z = extractelement <4 x i32> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i32* %p, i64 %offx
	store i32 %x, i32* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i32* %p, i64 %offy
	store i32 %y, i32* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i32* %p, i64 %offz
	store i32 %z, i32* %pz
	ret void
}
define <4 x i64> @_Z6vload3u2szPKl(i64 %offset, i64* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	%x = load i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	%y = load i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	%z = load i64* %pz
	%vx = insertelement <4 x i64> undef, i64 %x, i32 0
	%vy = insertelement <4 x i64> %vx, i64 %y, i32 1
	%ret = insertelement <4 x i64> %vy, i64 %z, i32 2
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload3u2szPU2A1Kl(i64 %offset, i64* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	%x = load i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	%y = load i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	%z = load i64* %pz
	%vx = insertelement <4 x i64> undef, i64 %x, i32 0
	%vy = insertelement <4 x i64> %vx, i64 %y, i32 1
	%ret = insertelement <4 x i64> %vy, i64 %z, i32 2
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload3u2szPU2A2Kl(i64 %offset, i64* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	%x = load i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	%y = load i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	%z = load i64* %pz
	%vx = insertelement <4 x i64> undef, i64 %x, i32 0
	%vy = insertelement <4 x i64> %vx, i64 %y, i32 1
	%ret = insertelement <4 x i64> %vy, i64 %z, i32 2
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload3u2szPU2A3Kl(i64 %offset, i64* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	%x = load i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	%y = load i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	%z = load i64* %pz
	%vx = insertelement <4 x i64> undef, i64 %x, i32 0
	%vy = insertelement <4 x i64> %vx, i64 %y, i32 1
	%ret = insertelement <4 x i64> %vy, i64 %z, i32 2
	ret <4 x i64> %ret
}
define void @_Z7vstore3u2v3lu2szPKl(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%x = extractelement <4 x i64> %data, i32 0
	%y = extractelement <4 x i64> %data, i32 1
	%z = extractelement <4 x i64> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	store i64 %x, i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	store i64 %y, i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	store i64 %z, i64* %pz
	ret void
}
define void @_Z7vstore3u2v3lu2szPU2A1Kl(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%x = extractelement <4 x i64> %data, i32 0
	%y = extractelement <4 x i64> %data, i32 1
	%z = extractelement <4 x i64> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	store i64 %x, i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	store i64 %y, i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	store i64 %z, i64* %pz
	ret void
}
define void @_Z7vstore3u2v3lu2szPU2A3Kl(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%x = extractelement <4 x i64> %data, i32 0
	%y = extractelement <4 x i64> %data, i32 1
	%z = extractelement <4 x i64> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	store i64 %x, i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	store i64 %y, i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	store i64 %z, i64* %pz
	ret void
}
define <4 x i64> @_Z6vload3u2szPKm(i64 %offset, i64* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	%x = load i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	%y = load i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	%z = load i64* %pz
	%vx = insertelement <4 x i64> undef, i64 %x, i32 0
	%vy = insertelement <4 x i64> %vx, i64 %y, i32 1
	%ret = insertelement <4 x i64> %vy, i64 %z, i32 2
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload3u2szPU2A1Km(i64 %offset, i64* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	%x = load i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	%y = load i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	%z = load i64* %pz
	%vx = insertelement <4 x i64> undef, i64 %x, i32 0
	%vy = insertelement <4 x i64> %vx, i64 %y, i32 1
	%ret = insertelement <4 x i64> %vy, i64 %z, i32 2
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload3u2szPU2A2Km(i64 %offset, i64* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	%x = load i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	%y = load i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	%z = load i64* %pz
	%vx = insertelement <4 x i64> undef, i64 %x, i32 0
	%vy = insertelement <4 x i64> %vx, i64 %y, i32 1
	%ret = insertelement <4 x i64> %vy, i64 %z, i32 2
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload3u2szPU2A3Km(i64 %offset, i64* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	%x = load i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	%y = load i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	%z = load i64* %pz
	%vx = insertelement <4 x i64> undef, i64 %x, i32 0
	%vy = insertelement <4 x i64> %vx, i64 %y, i32 1
	%ret = insertelement <4 x i64> %vy, i64 %z, i32 2
	ret <4 x i64> %ret
}
define void @_Z7vstore3u2v3mu2szPKm(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%x = extractelement <4 x i64> %data, i32 0
	%y = extractelement <4 x i64> %data, i32 1
	%z = extractelement <4 x i64> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	store i64 %x, i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	store i64 %y, i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	store i64 %z, i64* %pz
	ret void
}
define void @_Z7vstore3u2v3mu2szPU2A1Km(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%x = extractelement <4 x i64> %data, i32 0
	%y = extractelement <4 x i64> %data, i32 1
	%z = extractelement <4 x i64> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	store i64 %x, i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	store i64 %y, i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	store i64 %z, i64* %pz
	ret void
}
define void @_Z7vstore3u2v3mu2szPU2A3Km(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%x = extractelement <4 x i64> %data, i32 0
	%y = extractelement <4 x i64> %data, i32 1
	%z = extractelement <4 x i64> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr i64* %p, i64 %offx
	store i64 %x, i64* %px
	%offy = add i64 %offx, 1
	%py = getelementptr i64* %p, i64 %offy
	store i64 %y, i64* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr i64* %p, i64 %offz
	store i64 %z, i64* %pz
	ret void
}
define <4 x float> @_Z6vload3u2szPKf(i64 %offset, float* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr float* %p, i64 %offx
	%x = load float* %px
	%offy = add i64 %offx, 1
	%py = getelementptr float* %p, i64 %offy
	%y = load float* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr float* %p, i64 %offz
	%z = load float* %pz
	%vx = insertelement <4 x float> undef, float %x, i32 0
	%vy = insertelement <4 x float> %vx, float %y, i32 1
	%ret = insertelement <4 x float> %vy, float %z, i32 2
	ret <4 x float> %ret
}
define <4 x float> @_Z6vload3u2szPU2A1Kf(i64 %offset, float* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr float* %p, i64 %offx
	%x = load float* %px
	%offy = add i64 %offx, 1
	%py = getelementptr float* %p, i64 %offy
	%y = load float* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr float* %p, i64 %offz
	%z = load float* %pz
	%vx = insertelement <4 x float> undef, float %x, i32 0
	%vy = insertelement <4 x float> %vx, float %y, i32 1
	%ret = insertelement <4 x float> %vy, float %z, i32 2
	ret <4 x float> %ret
}
define <4 x float> @_Z6vload3u2szPU2A2Kf(i64 %offset, float* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr float* %p, i64 %offx
	%x = load float* %px
	%offy = add i64 %offx, 1
	%py = getelementptr float* %p, i64 %offy
	%y = load float* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr float* %p, i64 %offz
	%z = load float* %pz
	%vx = insertelement <4 x float> undef, float %x, i32 0
	%vy = insertelement <4 x float> %vx, float %y, i32 1
	%ret = insertelement <4 x float> %vy, float %z, i32 2
	ret <4 x float> %ret
}
define <4 x float> @_Z6vload3u2szPU2A3Kf(i64 %offset, float* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr float* %p, i64 %offx
	%x = load float* %px
	%offy = add i64 %offx, 1
	%py = getelementptr float* %p, i64 %offy
	%y = load float* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr float* %p, i64 %offz
	%z = load float* %pz
	%vx = insertelement <4 x float> undef, float %x, i32 0
	%vy = insertelement <4 x float> %vx, float %y, i32 1
	%ret = insertelement <4 x float> %vy, float %z, i32 2
	ret <4 x float> %ret
}
define void @_Z7vstore3u2v3fu2szPKf(<4 x float> %data, i64 %offset, float* %p) nounwind {
	%x = extractelement <4 x float> %data, i32 0
	%y = extractelement <4 x float> %data, i32 1
	%z = extractelement <4 x float> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr float* %p, i64 %offx
	store float %x, float* %px
	%offy = add i64 %offx, 1
	%py = getelementptr float* %p, i64 %offy
	store float %y, float* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr float* %p, i64 %offz
	store float %z, float* %pz
	ret void
}
define void @_Z7vstore3u2v3fu2szPU2A1Kf(<4 x float> %data, i64 %offset, float* %p) nounwind {
	%x = extractelement <4 x float> %data, i32 0
	%y = extractelement <4 x float> %data, i32 1
	%z = extractelement <4 x float> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr float* %p, i64 %offx
	store float %x, float* %px
	%offy = add i64 %offx, 1
	%py = getelementptr float* %p, i64 %offy
	store float %y, float* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr float* %p, i64 %offz
	store float %z, float* %pz
	ret void
}
define void @_Z7vstore3u2v3fu2szPU2A3Kf(<4 x float> %data, i64 %offset, float* %p) nounwind {
	%x = extractelement <4 x float> %data, i32 0
	%y = extractelement <4 x float> %data, i32 1
	%z = extractelement <4 x float> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr float* %p, i64 %offx
	store float %x, float* %px
	%offy = add i64 %offx, 1
	%py = getelementptr float* %p, i64 %offy
	store float %y, float* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr float* %p, i64 %offz
	store float %z, float* %pz
	ret void
}
define <4 x double> @_Z6vload3u2szPKd(i64 %offset, double* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr double* %p, i64 %offx
	%x = load double* %px
	%offy = add i64 %offx, 1
	%py = getelementptr double* %p, i64 %offy
	%y = load double* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr double* %p, i64 %offz
	%z = load double* %pz
	%vx = insertelement <4 x double> undef, double %x, i32 0
	%vy = insertelement <4 x double> %vx, double %y, i32 1
	%ret = insertelement <4 x double> %vy, double %z, i32 2
	ret <4 x double> %ret
}
define <4 x double> @_Z6vload3u2szPU2A1Kd(i64 %offset, double* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr double* %p, i64 %offx
	%x = load double* %px
	%offy = add i64 %offx, 1
	%py = getelementptr double* %p, i64 %offy
	%y = load double* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr double* %p, i64 %offz
	%z = load double* %pz
	%vx = insertelement <4 x double> undef, double %x, i32 0
	%vy = insertelement <4 x double> %vx, double %y, i32 1
	%ret = insertelement <4 x double> %vy, double %z, i32 2
	ret <4 x double> %ret
}
define <4 x double> @_Z6vload3u2szPU2A2Kd(i64 %offset, double* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr double* %p, i64 %offx
	%x = load double* %px
	%offy = add i64 %offx, 1
	%py = getelementptr double* %p, i64 %offy
	%y = load double* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr double* %p, i64 %offz
	%z = load double* %pz
	%vx = insertelement <4 x double> undef, double %x, i32 0
	%vy = insertelement <4 x double> %vx, double %y, i32 1
	%ret = insertelement <4 x double> %vy, double %z, i32 2
	ret <4 x double> %ret
}
define <4 x double> @_Z6vload3u2szPU2A3Kd(i64 %offset, double* %p) nounwind {
	%offx = mul i64 %offset, 3
	%px = getelementptr double* %p, i64 %offx
	%x = load double* %px
	%offy = add i64 %offx, 1
	%py = getelementptr double* %p, i64 %offy
	%y = load double* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr double* %p, i64 %offz
	%z = load double* %pz
	%vx = insertelement <4 x double> undef, double %x, i32 0
	%vy = insertelement <4 x double> %vx, double %y, i32 1
	%ret = insertelement <4 x double> %vy, double %z, i32 2
	ret <4 x double> %ret
}
define void @_Z7vstore3u2v3du2szPKd(<4 x double> %data, i64 %offset, double* %p) nounwind {
	%x = extractelement <4 x double> %data, i32 0
	%y = extractelement <4 x double> %data, i32 1
	%z = extractelement <4 x double> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr double* %p, i64 %offx
	store double %x, double* %px
	%offy = add i64 %offx, 1
	%py = getelementptr double* %p, i64 %offy
	store double %y, double* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr double* %p, i64 %offz
	store double %z, double* %pz
	ret void
}
define void @_Z7vstore3u2v3du2szPU2A1Kd(<4 x double> %data, i64 %offset, double* %p) nounwind {
	%x = extractelement <4 x double> %data, i32 0
	%y = extractelement <4 x double> %data, i32 1
	%z = extractelement <4 x double> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr double* %p, i64 %offx
	store double %x, double* %px
	%offy = add i64 %offx, 1
	%py = getelementptr double* %p, i64 %offy
	store double %y, double* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr double* %p, i64 %offz
	store double %z, double* %pz
	ret void
}
define void @_Z7vstore3u2v3du2szPU2A3Kd(<4 x double> %data, i64 %offset, double* %p) nounwind {
	%x = extractelement <4 x double> %data, i32 0
	%y = extractelement <4 x double> %data, i32 1
	%z = extractelement <4 x double> %data, i32 2
	%offx = mul i64 %offset, 3
	%px = getelementptr double* %p, i64 %offx
	store double %x, double* %px
	%offy = add i64 %offx, 1
	%py = getelementptr double* %p, i64 %offy
	store double %y, double* %py
	%offz = add i64 %offy, 1
	%pz = getelementptr double* %p, i64 %offz
	store double %z, double* %pz
	ret void
}
define <4 x i8> @_Z6vload4u2szPKc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%src = getelementptr <4 x i8>* %ptr, i64 %offset
	%ret = load <4 x i8>* %src
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload4u2szPU2A1Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%src = getelementptr <4 x i8>* %ptr, i64 %offset
	%ret = load <4 x i8>* %src
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload4u2szPU2A2Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%src = getelementptr <4 x i8>* %ptr, i64 %offset
	%ret = load <4 x i8>* %src
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload4u2szPU2A3Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%src = getelementptr <4 x i8>* %ptr, i64 %offset
	%ret = load <4 x i8>* %src
	ret <4 x i8> %ret
}
define void @_Z7vstore4u2v4cu2szPKc(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%dst = getelementptr <4 x i8>* %ptr, i64 %offset
	store <4 x i8> %data, <4 x i8>* %dst
	ret void
}
define void @_Z7vstore4u2v4cu2szPU2A1Kc(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%dst = getelementptr <4 x i8>* %ptr, i64 %offset
	store <4 x i8> %data, <4 x i8>* %dst
	ret void
}
define void @_Z7vstore4u2v4cu2szPU2A3Kc(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%dst = getelementptr <4 x i8>* %ptr, i64 %offset
	store <4 x i8> %data, <4 x i8>* %dst
	ret void
}
define <4 x i8> @_Z6vload4u2szPKh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%src = getelementptr <4 x i8>* %ptr, i64 %offset
	%ret = load <4 x i8>* %src
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload4u2szPU2A1Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%src = getelementptr <4 x i8>* %ptr, i64 %offset
	%ret = load <4 x i8>* %src
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload4u2szPU2A2Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%src = getelementptr <4 x i8>* %ptr, i64 %offset
	%ret = load <4 x i8>* %src
	ret <4 x i8> %ret
}
define <4 x i8> @_Z6vload4u2szPU2A3Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%src = getelementptr <4 x i8>* %ptr, i64 %offset
	%ret = load <4 x i8>* %src
	ret <4 x i8> %ret
}
define void @_Z7vstore4u2v4hu2szPKh(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%dst = getelementptr <4 x i8>* %ptr, i64 %offset
	store <4 x i8> %data, <4 x i8>* %dst
	ret void
}
define void @_Z7vstore4u2v4hu2szPU2A1Kh(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%dst = getelementptr <4 x i8>* %ptr, i64 %offset
	store <4 x i8> %data, <4 x i8>* %dst
	ret void
}
define void @_Z7vstore4u2v4hu2szPU2A3Kh(<4 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <4 x i8>*
	%dst = getelementptr <4 x i8>* %ptr, i64 %offset
	store <4 x i8> %data, <4 x i8>* %dst
	ret void
}
define <4 x i16> @_Z6vload4u2szPKs(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%src = getelementptr <4 x i16>* %ptr, i64 %offset
	%ret = load <4 x i16>* %src
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload4u2szPU2A1Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%src = getelementptr <4 x i16>* %ptr, i64 %offset
	%ret = load <4 x i16>* %src
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload4u2szPU2A2Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%src = getelementptr <4 x i16>* %ptr, i64 %offset
	%ret = load <4 x i16>* %src
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload4u2szPU2A3Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%src = getelementptr <4 x i16>* %ptr, i64 %offset
	%ret = load <4 x i16>* %src
	ret <4 x i16> %ret
}
define void @_Z7vstore4u2v4su2szPKs(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%dst = getelementptr <4 x i16>* %ptr, i64 %offset
	store <4 x i16> %data, <4 x i16>* %dst
	ret void
}
define void @_Z7vstore4u2v4su2szPU2A1Ks(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%dst = getelementptr <4 x i16>* %ptr, i64 %offset
	store <4 x i16> %data, <4 x i16>* %dst
	ret void
}
define void @_Z7vstore4u2v4su2szPU2A3Ks(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%dst = getelementptr <4 x i16>* %ptr, i64 %offset
	store <4 x i16> %data, <4 x i16>* %dst
	ret void
}
define <4 x i16> @_Z6vload4u2szPKt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%src = getelementptr <4 x i16>* %ptr, i64 %offset
	%ret = load <4 x i16>* %src
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload4u2szPU2A1Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%src = getelementptr <4 x i16>* %ptr, i64 %offset
	%ret = load <4 x i16>* %src
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload4u2szPU2A2Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%src = getelementptr <4 x i16>* %ptr, i64 %offset
	%ret = load <4 x i16>* %src
	ret <4 x i16> %ret
}
define <4 x i16> @_Z6vload4u2szPU2A3Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%src = getelementptr <4 x i16>* %ptr, i64 %offset
	%ret = load <4 x i16>* %src
	ret <4 x i16> %ret
}
define void @_Z7vstore4u2v4tu2szPKt(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%dst = getelementptr <4 x i16>* %ptr, i64 %offset
	store <4 x i16> %data, <4 x i16>* %dst
	ret void
}
define void @_Z7vstore4u2v4tu2szPU2A1Kt(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%dst = getelementptr <4 x i16>* %ptr, i64 %offset
	store <4 x i16> %data, <4 x i16>* %dst
	ret void
}
define void @_Z7vstore4u2v4tu2szPU2A3Kt(<4 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <4 x i16>*
	%dst = getelementptr <4 x i16>* %ptr, i64 %offset
	store <4 x i16> %data, <4 x i16>* %dst
	ret void
}
define <4 x i32> @_Z6vload4u2szPKi(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%src = getelementptr <4 x i32>* %ptr, i64 %offset
	%ret = load <4 x i32>* %src
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload4u2szPU2A1Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%src = getelementptr <4 x i32>* %ptr, i64 %offset
	%ret = load <4 x i32>* %src
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload4u2szPU2A2Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%src = getelementptr <4 x i32>* %ptr, i64 %offset
	%ret = load <4 x i32>* %src
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload4u2szPU2A3Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%src = getelementptr <4 x i32>* %ptr, i64 %offset
	%ret = load <4 x i32>* %src
	ret <4 x i32> %ret
}
define void @_Z7vstore4u2v4iu2szPKi(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%dst = getelementptr <4 x i32>* %ptr, i64 %offset
	store <4 x i32> %data, <4 x i32>* %dst
	ret void
}
define void @_Z7vstore4u2v4iu2szPU2A1Ki(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%dst = getelementptr <4 x i32>* %ptr, i64 %offset
	store <4 x i32> %data, <4 x i32>* %dst
	ret void
}
define void @_Z7vstore4u2v4iu2szPU2A3Ki(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%dst = getelementptr <4 x i32>* %ptr, i64 %offset
	store <4 x i32> %data, <4 x i32>* %dst
	ret void
}
define <4 x i32> @_Z6vload4u2szPKj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%src = getelementptr <4 x i32>* %ptr, i64 %offset
	%ret = load <4 x i32>* %src
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload4u2szPU2A1Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%src = getelementptr <4 x i32>* %ptr, i64 %offset
	%ret = load <4 x i32>* %src
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload4u2szPU2A2Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%src = getelementptr <4 x i32>* %ptr, i64 %offset
	%ret = load <4 x i32>* %src
	ret <4 x i32> %ret
}
define <4 x i32> @_Z6vload4u2szPU2A3Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%src = getelementptr <4 x i32>* %ptr, i64 %offset
	%ret = load <4 x i32>* %src
	ret <4 x i32> %ret
}
define void @_Z7vstore4u2v4ju2szPKj(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%dst = getelementptr <4 x i32>* %ptr, i64 %offset
	store <4 x i32> %data, <4 x i32>* %dst
	ret void
}
define void @_Z7vstore4u2v4ju2szPU2A1Kj(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%dst = getelementptr <4 x i32>* %ptr, i64 %offset
	store <4 x i32> %data, <4 x i32>* %dst
	ret void
}
define void @_Z7vstore4u2v4ju2szPU2A3Kj(<4 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <4 x i32>*
	%dst = getelementptr <4 x i32>* %ptr, i64 %offset
	store <4 x i32> %data, <4 x i32>* %dst
	ret void
}
define <4 x i64> @_Z6vload4u2szPKl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%src = getelementptr <4 x i64>* %ptr, i64 %offset
	%ret = load <4 x i64>* %src
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload4u2szPU2A1Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%src = getelementptr <4 x i64>* %ptr, i64 %offset
	%ret = load <4 x i64>* %src
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload4u2szPU2A2Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%src = getelementptr <4 x i64>* %ptr, i64 %offset
	%ret = load <4 x i64>* %src
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload4u2szPU2A3Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%src = getelementptr <4 x i64>* %ptr, i64 %offset
	%ret = load <4 x i64>* %src
	ret <4 x i64> %ret
}
define void @_Z7vstore4u2v4lu2szPKl(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%dst = getelementptr <4 x i64>* %ptr, i64 %offset
	store <4 x i64> %data, <4 x i64>* %dst
	ret void
}
define void @_Z7vstore4u2v4lu2szPU2A1Kl(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%dst = getelementptr <4 x i64>* %ptr, i64 %offset
	store <4 x i64> %data, <4 x i64>* %dst
	ret void
}
define void @_Z7vstore4u2v4lu2szPU2A3Kl(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%dst = getelementptr <4 x i64>* %ptr, i64 %offset
	store <4 x i64> %data, <4 x i64>* %dst
	ret void
}
define <4 x i64> @_Z6vload4u2szPKm(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%src = getelementptr <4 x i64>* %ptr, i64 %offset
	%ret = load <4 x i64>* %src
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload4u2szPU2A1Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%src = getelementptr <4 x i64>* %ptr, i64 %offset
	%ret = load <4 x i64>* %src
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload4u2szPU2A2Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%src = getelementptr <4 x i64>* %ptr, i64 %offset
	%ret = load <4 x i64>* %src
	ret <4 x i64> %ret
}
define <4 x i64> @_Z6vload4u2szPU2A3Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%src = getelementptr <4 x i64>* %ptr, i64 %offset
	%ret = load <4 x i64>* %src
	ret <4 x i64> %ret
}
define void @_Z7vstore4u2v4mu2szPKm(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%dst = getelementptr <4 x i64>* %ptr, i64 %offset
	store <4 x i64> %data, <4 x i64>* %dst
	ret void
}
define void @_Z7vstore4u2v4mu2szPU2A1Km(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%dst = getelementptr <4 x i64>* %ptr, i64 %offset
	store <4 x i64> %data, <4 x i64>* %dst
	ret void
}
define void @_Z7vstore4u2v4mu2szPU2A3Km(<4 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <4 x i64>*
	%dst = getelementptr <4 x i64>* %ptr, i64 %offset
	store <4 x i64> %data, <4 x i64>* %dst
	ret void
}
define <4 x float> @_Z6vload4u2szPKf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <4 x float>*
	%src = getelementptr <4 x float>* %ptr, i64 %offset
	%ret = load <4 x float>* %src
	ret <4 x float> %ret
}
define <4 x float> @_Z6vload4u2szPU2A1Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <4 x float>*
	%src = getelementptr <4 x float>* %ptr, i64 %offset
	%ret = load <4 x float>* %src
	ret <4 x float> %ret
}
define <4 x float> @_Z6vload4u2szPU2A2Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <4 x float>*
	%src = getelementptr <4 x float>* %ptr, i64 %offset
	%ret = load <4 x float>* %src
	ret <4 x float> %ret
}
define <4 x float> @_Z6vload4u2szPU2A3Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <4 x float>*
	%src = getelementptr <4 x float>* %ptr, i64 %offset
	%ret = load <4 x float>* %src
	ret <4 x float> %ret
}
define void @_Z7vstore4u2v4fu2szPKf(<4 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <4 x float>*
	%dst = getelementptr <4 x float>* %ptr, i64 %offset
	store <4 x float> %data, <4 x float>* %dst
	ret void
}
define void @_Z7vstore4u2v4fu2szPU2A1Kf(<4 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <4 x float>*
	%dst = getelementptr <4 x float>* %ptr, i64 %offset
	store <4 x float> %data, <4 x float>* %dst
	ret void
}
define void @_Z7vstore4u2v4fu2szPU2A3Kf(<4 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <4 x float>*
	%dst = getelementptr <4 x float>* %ptr, i64 %offset
	store <4 x float> %data, <4 x float>* %dst
	ret void
}
define <4 x double> @_Z6vload4u2szPKd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <4 x double>*
	%src = getelementptr <4 x double>* %ptr, i64 %offset
	%ret = load <4 x double>* %src
	ret <4 x double> %ret
}
define <4 x double> @_Z6vload4u2szPU2A1Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <4 x double>*
	%src = getelementptr <4 x double>* %ptr, i64 %offset
	%ret = load <4 x double>* %src
	ret <4 x double> %ret
}
define <4 x double> @_Z6vload4u2szPU2A2Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <4 x double>*
	%src = getelementptr <4 x double>* %ptr, i64 %offset
	%ret = load <4 x double>* %src
	ret <4 x double> %ret
}
define <4 x double> @_Z6vload4u2szPU2A3Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <4 x double>*
	%src = getelementptr <4 x double>* %ptr, i64 %offset
	%ret = load <4 x double>* %src
	ret <4 x double> %ret
}
define void @_Z7vstore4u2v4du2szPKd(<4 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <4 x double>*
	%dst = getelementptr <4 x double>* %ptr, i64 %offset
	store <4 x double> %data, <4 x double>* %dst
	ret void
}
define void @_Z7vstore4u2v4du2szPU2A1Kd(<4 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <4 x double>*
	%dst = getelementptr <4 x double>* %ptr, i64 %offset
	store <4 x double> %data, <4 x double>* %dst
	ret void
}
define void @_Z7vstore4u2v4du2szPU2A3Kd(<4 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <4 x double>*
	%dst = getelementptr <4 x double>* %ptr, i64 %offset
	store <4 x double> %data, <4 x double>* %dst
	ret void
}
define <8 x i8> @_Z6vload8u2szPKc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%src = getelementptr <8 x i8>* %ptr, i64 %offset
	%ret = load <8 x i8>* %src
	ret <8 x i8> %ret
}
define <8 x i8> @_Z6vload8u2szPU2A1Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%src = getelementptr <8 x i8>* %ptr, i64 %offset
	%ret = load <8 x i8>* %src
	ret <8 x i8> %ret
}
define <8 x i8> @_Z6vload8u2szPU2A2Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%src = getelementptr <8 x i8>* %ptr, i64 %offset
	%ret = load <8 x i8>* %src
	ret <8 x i8> %ret
}
define <8 x i8> @_Z6vload8u2szPU2A3Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%src = getelementptr <8 x i8>* %ptr, i64 %offset
	%ret = load <8 x i8>* %src
	ret <8 x i8> %ret
}
define void @_Z7vstore8u2v8cu2szPKc(<8 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%dst = getelementptr <8 x i8>* %ptr, i64 %offset
	store <8 x i8> %data, <8 x i8>* %dst
	ret void
}
define void @_Z7vstore8u2v8cu2szPU2A1Kc(<8 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%dst = getelementptr <8 x i8>* %ptr, i64 %offset
	store <8 x i8> %data, <8 x i8>* %dst
	ret void
}
define void @_Z7vstore8u2v8cu2szPU2A3Kc(<8 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%dst = getelementptr <8 x i8>* %ptr, i64 %offset
	store <8 x i8> %data, <8 x i8>* %dst
	ret void
}
define <8 x i8> @_Z6vload8u2szPKh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%src = getelementptr <8 x i8>* %ptr, i64 %offset
	%ret = load <8 x i8>* %src
	ret <8 x i8> %ret
}
define <8 x i8> @_Z6vload8u2szPU2A1Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%src = getelementptr <8 x i8>* %ptr, i64 %offset
	%ret = load <8 x i8>* %src
	ret <8 x i8> %ret
}
define <8 x i8> @_Z6vload8u2szPU2A2Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%src = getelementptr <8 x i8>* %ptr, i64 %offset
	%ret = load <8 x i8>* %src
	ret <8 x i8> %ret
}
define <8 x i8> @_Z6vload8u2szPU2A3Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%src = getelementptr <8 x i8>* %ptr, i64 %offset
	%ret = load <8 x i8>* %src
	ret <8 x i8> %ret
}
define void @_Z7vstore8u2v8hu2szPKh(<8 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%dst = getelementptr <8 x i8>* %ptr, i64 %offset
	store <8 x i8> %data, <8 x i8>* %dst
	ret void
}
define void @_Z7vstore8u2v8hu2szPU2A1Kh(<8 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%dst = getelementptr <8 x i8>* %ptr, i64 %offset
	store <8 x i8> %data, <8 x i8>* %dst
	ret void
}
define void @_Z7vstore8u2v8hu2szPU2A3Kh(<8 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <8 x i8>*
	%dst = getelementptr <8 x i8>* %ptr, i64 %offset
	store <8 x i8> %data, <8 x i8>* %dst
	ret void
}
define <8 x i16> @_Z6vload8u2szPKs(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%src = getelementptr <8 x i16>* %ptr, i64 %offset
	%ret = load <8 x i16>* %src
	ret <8 x i16> %ret
}
define <8 x i16> @_Z6vload8u2szPU2A1Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%src = getelementptr <8 x i16>* %ptr, i64 %offset
	%ret = load <8 x i16>* %src
	ret <8 x i16> %ret
}
define <8 x i16> @_Z6vload8u2szPU2A2Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%src = getelementptr <8 x i16>* %ptr, i64 %offset
	%ret = load <8 x i16>* %src
	ret <8 x i16> %ret
}
define <8 x i16> @_Z6vload8u2szPU2A3Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%src = getelementptr <8 x i16>* %ptr, i64 %offset
	%ret = load <8 x i16>* %src
	ret <8 x i16> %ret
}
define void @_Z7vstore8u2v8su2szPKs(<8 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%dst = getelementptr <8 x i16>* %ptr, i64 %offset
	store <8 x i16> %data, <8 x i16>* %dst
	ret void
}
define void @_Z7vstore8u2v8su2szPU2A1Ks(<8 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%dst = getelementptr <8 x i16>* %ptr, i64 %offset
	store <8 x i16> %data, <8 x i16>* %dst
	ret void
}
define void @_Z7vstore8u2v8su2szPU2A3Ks(<8 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%dst = getelementptr <8 x i16>* %ptr, i64 %offset
	store <8 x i16> %data, <8 x i16>* %dst
	ret void
}
define <8 x i16> @_Z6vload8u2szPKt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%src = getelementptr <8 x i16>* %ptr, i64 %offset
	%ret = load <8 x i16>* %src
	ret <8 x i16> %ret
}
define <8 x i16> @_Z6vload8u2szPU2A1Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%src = getelementptr <8 x i16>* %ptr, i64 %offset
	%ret = load <8 x i16>* %src
	ret <8 x i16> %ret
}
define <8 x i16> @_Z6vload8u2szPU2A2Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%src = getelementptr <8 x i16>* %ptr, i64 %offset
	%ret = load <8 x i16>* %src
	ret <8 x i16> %ret
}
define <8 x i16> @_Z6vload8u2szPU2A3Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%src = getelementptr <8 x i16>* %ptr, i64 %offset
	%ret = load <8 x i16>* %src
	ret <8 x i16> %ret
}
define void @_Z7vstore8u2v8tu2szPKt(<8 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%dst = getelementptr <8 x i16>* %ptr, i64 %offset
	store <8 x i16> %data, <8 x i16>* %dst
	ret void
}
define void @_Z7vstore8u2v8tu2szPU2A1Kt(<8 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%dst = getelementptr <8 x i16>* %ptr, i64 %offset
	store <8 x i16> %data, <8 x i16>* %dst
	ret void
}
define void @_Z7vstore8u2v8tu2szPU2A3Kt(<8 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <8 x i16>*
	%dst = getelementptr <8 x i16>* %ptr, i64 %offset
	store <8 x i16> %data, <8 x i16>* %dst
	ret void
}
define <8 x i32> @_Z6vload8u2szPKi(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%src = getelementptr <8 x i32>* %ptr, i64 %offset
	%ret = load <8 x i32>* %src
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6vload8u2szPU2A1Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%src = getelementptr <8 x i32>* %ptr, i64 %offset
	%ret = load <8 x i32>* %src
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6vload8u2szPU2A2Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%src = getelementptr <8 x i32>* %ptr, i64 %offset
	%ret = load <8 x i32>* %src
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6vload8u2szPU2A3Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%src = getelementptr <8 x i32>* %ptr, i64 %offset
	%ret = load <8 x i32>* %src
	ret <8 x i32> %ret
}
define void @_Z7vstore8u2v8iu2szPKi(<8 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%dst = getelementptr <8 x i32>* %ptr, i64 %offset
	store <8 x i32> %data, <8 x i32>* %dst
	ret void
}
define void @_Z7vstore8u2v8iu2szPU2A1Ki(<8 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%dst = getelementptr <8 x i32>* %ptr, i64 %offset
	store <8 x i32> %data, <8 x i32>* %dst
	ret void
}
define void @_Z7vstore8u2v8iu2szPU2A3Ki(<8 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%dst = getelementptr <8 x i32>* %ptr, i64 %offset
	store <8 x i32> %data, <8 x i32>* %dst
	ret void
}
define <8 x i32> @_Z6vload8u2szPKj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%src = getelementptr <8 x i32>* %ptr, i64 %offset
	%ret = load <8 x i32>* %src
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6vload8u2szPU2A1Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%src = getelementptr <8 x i32>* %ptr, i64 %offset
	%ret = load <8 x i32>* %src
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6vload8u2szPU2A2Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%src = getelementptr <8 x i32>* %ptr, i64 %offset
	%ret = load <8 x i32>* %src
	ret <8 x i32> %ret
}
define <8 x i32> @_Z6vload8u2szPU2A3Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%src = getelementptr <8 x i32>* %ptr, i64 %offset
	%ret = load <8 x i32>* %src
	ret <8 x i32> %ret
}
define void @_Z7vstore8u2v8ju2szPKj(<8 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%dst = getelementptr <8 x i32>* %ptr, i64 %offset
	store <8 x i32> %data, <8 x i32>* %dst
	ret void
}
define void @_Z7vstore8u2v8ju2szPU2A1Kj(<8 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%dst = getelementptr <8 x i32>* %ptr, i64 %offset
	store <8 x i32> %data, <8 x i32>* %dst
	ret void
}
define void @_Z7vstore8u2v8ju2szPU2A3Kj(<8 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <8 x i32>*
	%dst = getelementptr <8 x i32>* %ptr, i64 %offset
	store <8 x i32> %data, <8 x i32>* %dst
	ret void
}
define <8 x i64> @_Z6vload8u2szPKl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%src = getelementptr <8 x i64>* %ptr, i64 %offset
	%ret = load <8 x i64>* %src
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6vload8u2szPU2A1Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%src = getelementptr <8 x i64>* %ptr, i64 %offset
	%ret = load <8 x i64>* %src
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6vload8u2szPU2A2Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%src = getelementptr <8 x i64>* %ptr, i64 %offset
	%ret = load <8 x i64>* %src
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6vload8u2szPU2A3Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%src = getelementptr <8 x i64>* %ptr, i64 %offset
	%ret = load <8 x i64>* %src
	ret <8 x i64> %ret
}
define void @_Z7vstore8u2v8lu2szPKl(<8 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%dst = getelementptr <8 x i64>* %ptr, i64 %offset
	store <8 x i64> %data, <8 x i64>* %dst
	ret void
}
define void @_Z7vstore8u2v8lu2szPU2A1Kl(<8 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%dst = getelementptr <8 x i64>* %ptr, i64 %offset
	store <8 x i64> %data, <8 x i64>* %dst
	ret void
}
define void @_Z7vstore8u2v8lu2szPU2A3Kl(<8 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%dst = getelementptr <8 x i64>* %ptr, i64 %offset
	store <8 x i64> %data, <8 x i64>* %dst
	ret void
}
define <8 x i64> @_Z6vload8u2szPKm(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%src = getelementptr <8 x i64>* %ptr, i64 %offset
	%ret = load <8 x i64>* %src
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6vload8u2szPU2A1Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%src = getelementptr <8 x i64>* %ptr, i64 %offset
	%ret = load <8 x i64>* %src
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6vload8u2szPU2A2Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%src = getelementptr <8 x i64>* %ptr, i64 %offset
	%ret = load <8 x i64>* %src
	ret <8 x i64> %ret
}
define <8 x i64> @_Z6vload8u2szPU2A3Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%src = getelementptr <8 x i64>* %ptr, i64 %offset
	%ret = load <8 x i64>* %src
	ret <8 x i64> %ret
}
define void @_Z7vstore8u2v8mu2szPKm(<8 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%dst = getelementptr <8 x i64>* %ptr, i64 %offset
	store <8 x i64> %data, <8 x i64>* %dst
	ret void
}
define void @_Z7vstore8u2v8mu2szPU2A1Km(<8 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%dst = getelementptr <8 x i64>* %ptr, i64 %offset
	store <8 x i64> %data, <8 x i64>* %dst
	ret void
}
define void @_Z7vstore8u2v8mu2szPU2A3Km(<8 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <8 x i64>*
	%dst = getelementptr <8 x i64>* %ptr, i64 %offset
	store <8 x i64> %data, <8 x i64>* %dst
	ret void
}
define <8 x float> @_Z6vload8u2szPKf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <8 x float>*
	%src = getelementptr <8 x float>* %ptr, i64 %offset
	%ret = load <8 x float>* %src
	ret <8 x float> %ret
}
define <8 x float> @_Z6vload8u2szPU2A1Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <8 x float>*
	%src = getelementptr <8 x float>* %ptr, i64 %offset
	%ret = load <8 x float>* %src
	ret <8 x float> %ret
}
define <8 x float> @_Z6vload8u2szPU2A2Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <8 x float>*
	%src = getelementptr <8 x float>* %ptr, i64 %offset
	%ret = load <8 x float>* %src
	ret <8 x float> %ret
}
define <8 x float> @_Z6vload8u2szPU2A3Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <8 x float>*
	%src = getelementptr <8 x float>* %ptr, i64 %offset
	%ret = load <8 x float>* %src
	ret <8 x float> %ret
}
define void @_Z7vstore8u2v8fu2szPKf(<8 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <8 x float>*
	%dst = getelementptr <8 x float>* %ptr, i64 %offset
	store <8 x float> %data, <8 x float>* %dst
	ret void
}
define void @_Z7vstore8u2v8fu2szPU2A1Kf(<8 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <8 x float>*
	%dst = getelementptr <8 x float>* %ptr, i64 %offset
	store <8 x float> %data, <8 x float>* %dst
	ret void
}
define void @_Z7vstore8u2v8fu2szPU2A3Kf(<8 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <8 x float>*
	%dst = getelementptr <8 x float>* %ptr, i64 %offset
	store <8 x float> %data, <8 x float>* %dst
	ret void
}
define <8 x double> @_Z6vload8u2szPKd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <8 x double>*
	%src = getelementptr <8 x double>* %ptr, i64 %offset
	%ret = load <8 x double>* %src
	ret <8 x double> %ret
}
define <8 x double> @_Z6vload8u2szPU2A1Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <8 x double>*
	%src = getelementptr <8 x double>* %ptr, i64 %offset
	%ret = load <8 x double>* %src
	ret <8 x double> %ret
}
define <8 x double> @_Z6vload8u2szPU2A2Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <8 x double>*
	%src = getelementptr <8 x double>* %ptr, i64 %offset
	%ret = load <8 x double>* %src
	ret <8 x double> %ret
}
define <8 x double> @_Z6vload8u2szPU2A3Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <8 x double>*
	%src = getelementptr <8 x double>* %ptr, i64 %offset
	%ret = load <8 x double>* %src
	ret <8 x double> %ret
}
define void @_Z7vstore8u2v8du2szPKd(<8 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <8 x double>*
	%dst = getelementptr <8 x double>* %ptr, i64 %offset
	store <8 x double> %data, <8 x double>* %dst
	ret void
}
define void @_Z7vstore8u2v8du2szPU2A1Kd(<8 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <8 x double>*
	%dst = getelementptr <8 x double>* %ptr, i64 %offset
	store <8 x double> %data, <8 x double>* %dst
	ret void
}
define void @_Z7vstore8u2v8du2szPU2A3Kd(<8 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <8 x double>*
	%dst = getelementptr <8 x double>* %ptr, i64 %offset
	store <8 x double> %data, <8 x double>* %dst
	ret void
}
define <16 x i8> @_Z7vload16u2szPKc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%src = getelementptr <16 x i8>* %ptr, i64 %offset
	%ret = load <16 x i8>* %src
	ret <16 x i8> %ret
}
define <16 x i8> @_Z7vload16u2szPU2A1Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%src = getelementptr <16 x i8>* %ptr, i64 %offset
	%ret = load <16 x i8>* %src
	ret <16 x i8> %ret
}
define <16 x i8> @_Z7vload16u2szPU2A2Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%src = getelementptr <16 x i8>* %ptr, i64 %offset
	%ret = load <16 x i8>* %src
	ret <16 x i8> %ret
}
define <16 x i8> @_Z7vload16u2szPU2A3Kc(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%src = getelementptr <16 x i8>* %ptr, i64 %offset
	%ret = load <16 x i8>* %src
	ret <16 x i8> %ret
}
define void @_Z8vstore16u3v16cu2szPKc(<16 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%dst = getelementptr <16 x i8>* %ptr, i64 %offset
	store <16 x i8> %data, <16 x i8>* %dst
	ret void
}
define void @_Z8vstore16u3v16cu2szPU2A1Kc(<16 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%dst = getelementptr <16 x i8>* %ptr, i64 %offset
	store <16 x i8> %data, <16 x i8>* %dst
	ret void
}
define void @_Z8vstore16u3v16cu2szPU2A3Kc(<16 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%dst = getelementptr <16 x i8>* %ptr, i64 %offset
	store <16 x i8> %data, <16 x i8>* %dst
	ret void
}
define <16 x i8> @_Z7vload16u2szPKh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%src = getelementptr <16 x i8>* %ptr, i64 %offset
	%ret = load <16 x i8>* %src
	ret <16 x i8> %ret
}
define <16 x i8> @_Z7vload16u2szPU2A1Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%src = getelementptr <16 x i8>* %ptr, i64 %offset
	%ret = load <16 x i8>* %src
	ret <16 x i8> %ret
}
define <16 x i8> @_Z7vload16u2szPU2A2Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%src = getelementptr <16 x i8>* %ptr, i64 %offset
	%ret = load <16 x i8>* %src
	ret <16 x i8> %ret
}
define <16 x i8> @_Z7vload16u2szPU2A3Kh(i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%src = getelementptr <16 x i8>* %ptr, i64 %offset
	%ret = load <16 x i8>* %src
	ret <16 x i8> %ret
}
define void @_Z8vstore16u3v16hu2szPKh(<16 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%dst = getelementptr <16 x i8>* %ptr, i64 %offset
	store <16 x i8> %data, <16 x i8>* %dst
	ret void
}
define void @_Z8vstore16u3v16hu2szPU2A1Kh(<16 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%dst = getelementptr <16 x i8>* %ptr, i64 %offset
	store <16 x i8> %data, <16 x i8>* %dst
	ret void
}
define void @_Z8vstore16u3v16hu2szPU2A3Kh(<16 x i8> %data, i64 %offset, i8* %p) nounwind {
	%ptr = bitcast i8* %p to <16 x i8>*
	%dst = getelementptr <16 x i8>* %ptr, i64 %offset
	store <16 x i8> %data, <16 x i8>* %dst
	ret void
}
define <16 x i16> @_Z7vload16u2szPKs(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%src = getelementptr <16 x i16>* %ptr, i64 %offset
	%ret = load <16 x i16>* %src
	ret <16 x i16> %ret
}
define <16 x i16> @_Z7vload16u2szPU2A1Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%src = getelementptr <16 x i16>* %ptr, i64 %offset
	%ret = load <16 x i16>* %src
	ret <16 x i16> %ret
}
define <16 x i16> @_Z7vload16u2szPU2A2Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%src = getelementptr <16 x i16>* %ptr, i64 %offset
	%ret = load <16 x i16>* %src
	ret <16 x i16> %ret
}
define <16 x i16> @_Z7vload16u2szPU2A3Ks(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%src = getelementptr <16 x i16>* %ptr, i64 %offset
	%ret = load <16 x i16>* %src
	ret <16 x i16> %ret
}
define void @_Z8vstore16u3v16su2szPKs(<16 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%dst = getelementptr <16 x i16>* %ptr, i64 %offset
	store <16 x i16> %data, <16 x i16>* %dst
	ret void
}
define void @_Z8vstore16u3v16su2szPU2A1Ks(<16 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%dst = getelementptr <16 x i16>* %ptr, i64 %offset
	store <16 x i16> %data, <16 x i16>* %dst
	ret void
}
define void @_Z8vstore16u3v16su2szPU2A3Ks(<16 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%dst = getelementptr <16 x i16>* %ptr, i64 %offset
	store <16 x i16> %data, <16 x i16>* %dst
	ret void
}
define <16 x i16> @_Z7vload16u2szPKt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%src = getelementptr <16 x i16>* %ptr, i64 %offset
	%ret = load <16 x i16>* %src
	ret <16 x i16> %ret
}
define <16 x i16> @_Z7vload16u2szPU2A1Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%src = getelementptr <16 x i16>* %ptr, i64 %offset
	%ret = load <16 x i16>* %src
	ret <16 x i16> %ret
}
define <16 x i16> @_Z7vload16u2szPU2A2Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%src = getelementptr <16 x i16>* %ptr, i64 %offset
	%ret = load <16 x i16>* %src
	ret <16 x i16> %ret
}
define <16 x i16> @_Z7vload16u2szPU2A3Kt(i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%src = getelementptr <16 x i16>* %ptr, i64 %offset
	%ret = load <16 x i16>* %src
	ret <16 x i16> %ret
}
define void @_Z8vstore16u3v16tu2szPKt(<16 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%dst = getelementptr <16 x i16>* %ptr, i64 %offset
	store <16 x i16> %data, <16 x i16>* %dst
	ret void
}
define void @_Z8vstore16u3v16tu2szPU2A1Kt(<16 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%dst = getelementptr <16 x i16>* %ptr, i64 %offset
	store <16 x i16> %data, <16 x i16>* %dst
	ret void
}
define void @_Z8vstore16u3v16tu2szPU2A3Kt(<16 x i16> %data, i64 %offset, i16* %p) nounwind {
	%ptr = bitcast i16* %p to <16 x i16>*
	%dst = getelementptr <16 x i16>* %ptr, i64 %offset
	store <16 x i16> %data, <16 x i16>* %dst
	ret void
}
define <16 x i32> @_Z7vload16u2szPKi(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%src = getelementptr <16 x i32>* %ptr, i64 %offset
	%ret = load <16 x i32>* %src
	ret <16 x i32> %ret
}
define <16 x i32> @_Z7vload16u2szPU2A1Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%src = getelementptr <16 x i32>* %ptr, i64 %offset
	%ret = load <16 x i32>* %src
	ret <16 x i32> %ret
}
define <16 x i32> @_Z7vload16u2szPU2A2Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%src = getelementptr <16 x i32>* %ptr, i64 %offset
	%ret = load <16 x i32>* %src
	ret <16 x i32> %ret
}
define <16 x i32> @_Z7vload16u2szPU2A3Ki(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%src = getelementptr <16 x i32>* %ptr, i64 %offset
	%ret = load <16 x i32>* %src
	ret <16 x i32> %ret
}
define void @_Z8vstore16u3v16iu2szPKi(<16 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%dst = getelementptr <16 x i32>* %ptr, i64 %offset
	store <16 x i32> %data, <16 x i32>* %dst
	ret void
}
define void @_Z8vstore16u3v16iu2szPU2A1Ki(<16 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%dst = getelementptr <16 x i32>* %ptr, i64 %offset
	store <16 x i32> %data, <16 x i32>* %dst
	ret void
}
define void @_Z8vstore16u3v16iu2szPU2A3Ki(<16 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%dst = getelementptr <16 x i32>* %ptr, i64 %offset
	store <16 x i32> %data, <16 x i32>* %dst
	ret void
}
define <16 x i32> @_Z7vload16u2szPKj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%src = getelementptr <16 x i32>* %ptr, i64 %offset
	%ret = load <16 x i32>* %src
	ret <16 x i32> %ret
}
define <16 x i32> @_Z7vload16u2szPU2A1Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%src = getelementptr <16 x i32>* %ptr, i64 %offset
	%ret = load <16 x i32>* %src
	ret <16 x i32> %ret
}
define <16 x i32> @_Z7vload16u2szPU2A2Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%src = getelementptr <16 x i32>* %ptr, i64 %offset
	%ret = load <16 x i32>* %src
	ret <16 x i32> %ret
}
define <16 x i32> @_Z7vload16u2szPU2A3Kj(i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%src = getelementptr <16 x i32>* %ptr, i64 %offset
	%ret = load <16 x i32>* %src
	ret <16 x i32> %ret
}
define void @_Z8vstore16u3v16ju2szPKj(<16 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%dst = getelementptr <16 x i32>* %ptr, i64 %offset
	store <16 x i32> %data, <16 x i32>* %dst
	ret void
}
define void @_Z8vstore16u3v16ju2szPU2A1Kj(<16 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%dst = getelementptr <16 x i32>* %ptr, i64 %offset
	store <16 x i32> %data, <16 x i32>* %dst
	ret void
}
define void @_Z8vstore16u3v16ju2szPU2A3Kj(<16 x i32> %data, i64 %offset, i32* %p) nounwind {
	%ptr = bitcast i32* %p to <16 x i32>*
	%dst = getelementptr <16 x i32>* %ptr, i64 %offset
	store <16 x i32> %data, <16 x i32>* %dst
	ret void
}
define <16 x i64> @_Z7vload16u2szPKl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%src = getelementptr <16 x i64>* %ptr, i64 %offset
	%ret = load <16 x i64>* %src
	ret <16 x i64> %ret
}
define <16 x i64> @_Z7vload16u2szPU2A1Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%src = getelementptr <16 x i64>* %ptr, i64 %offset
	%ret = load <16 x i64>* %src
	ret <16 x i64> %ret
}
define <16 x i64> @_Z7vload16u2szPU2A2Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%src = getelementptr <16 x i64>* %ptr, i64 %offset
	%ret = load <16 x i64>* %src
	ret <16 x i64> %ret
}
define <16 x i64> @_Z7vload16u2szPU2A3Kl(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%src = getelementptr <16 x i64>* %ptr, i64 %offset
	%ret = load <16 x i64>* %src
	ret <16 x i64> %ret
}
define void @_Z8vstore16u3v16lu2szPKl(<16 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%dst = getelementptr <16 x i64>* %ptr, i64 %offset
	store <16 x i64> %data, <16 x i64>* %dst
	ret void
}
define void @_Z8vstore16u3v16lu2szPU2A1Kl(<16 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%dst = getelementptr <16 x i64>* %ptr, i64 %offset
	store <16 x i64> %data, <16 x i64>* %dst
	ret void
}
define void @_Z8vstore16u3v16lu2szPU2A3Kl(<16 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%dst = getelementptr <16 x i64>* %ptr, i64 %offset
	store <16 x i64> %data, <16 x i64>* %dst
	ret void
}
define <16 x i64> @_Z7vload16u2szPKm(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%src = getelementptr <16 x i64>* %ptr, i64 %offset
	%ret = load <16 x i64>* %src
	ret <16 x i64> %ret
}
define <16 x i64> @_Z7vload16u2szPU2A1Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%src = getelementptr <16 x i64>* %ptr, i64 %offset
	%ret = load <16 x i64>* %src
	ret <16 x i64> %ret
}
define <16 x i64> @_Z7vload16u2szPU2A2Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%src = getelementptr <16 x i64>* %ptr, i64 %offset
	%ret = load <16 x i64>* %src
	ret <16 x i64> %ret
}
define <16 x i64> @_Z7vload16u2szPU2A3Km(i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%src = getelementptr <16 x i64>* %ptr, i64 %offset
	%ret = load <16 x i64>* %src
	ret <16 x i64> %ret
}
define void @_Z8vstore16u3v16mu2szPKm(<16 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%dst = getelementptr <16 x i64>* %ptr, i64 %offset
	store <16 x i64> %data, <16 x i64>* %dst
	ret void
}
define void @_Z8vstore16u3v16mu2szPU2A1Km(<16 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%dst = getelementptr <16 x i64>* %ptr, i64 %offset
	store <16 x i64> %data, <16 x i64>* %dst
	ret void
}
define void @_Z8vstore16u3v16mu2szPU2A3Km(<16 x i64> %data, i64 %offset, i64* %p) nounwind {
	%ptr = bitcast i64* %p to <16 x i64>*
	%dst = getelementptr <16 x i64>* %ptr, i64 %offset
	store <16 x i64> %data, <16 x i64>* %dst
	ret void
}
define <16 x float> @_Z7vload16u2szPKf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <16 x float>*
	%src = getelementptr <16 x float>* %ptr, i64 %offset
	%ret = load <16 x float>* %src
	ret <16 x float> %ret
}
define <16 x float> @_Z7vload16u2szPU2A1Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <16 x float>*
	%src = getelementptr <16 x float>* %ptr, i64 %offset
	%ret = load <16 x float>* %src
	ret <16 x float> %ret
}
define <16 x float> @_Z7vload16u2szPU2A2Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <16 x float>*
	%src = getelementptr <16 x float>* %ptr, i64 %offset
	%ret = load <16 x float>* %src
	ret <16 x float> %ret
}
define <16 x float> @_Z7vload16u2szPU2A3Kf(i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <16 x float>*
	%src = getelementptr <16 x float>* %ptr, i64 %offset
	%ret = load <16 x float>* %src
	ret <16 x float> %ret
}
define void @_Z8vstore16u3v16fu2szPKf(<16 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <16 x float>*
	%dst = getelementptr <16 x float>* %ptr, i64 %offset
	store <16 x float> %data, <16 x float>* %dst
	ret void
}
define void @_Z8vstore16u3v16fu2szPU2A1Kf(<16 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <16 x float>*
	%dst = getelementptr <16 x float>* %ptr, i64 %offset
	store <16 x float> %data, <16 x float>* %dst
	ret void
}
define void @_Z8vstore16u3v16fu2szPU2A3Kf(<16 x float> %data, i64 %offset, float* %p) nounwind {
	%ptr = bitcast float* %p to <16 x float>*
	%dst = getelementptr <16 x float>* %ptr, i64 %offset
	store <16 x float> %data, <16 x float>* %dst
	ret void
}
define <16 x double> @_Z7vload16u2szPKd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <16 x double>*
	%src = getelementptr <16 x double>* %ptr, i64 %offset
	%ret = load <16 x double>* %src
	ret <16 x double> %ret
}
define <16 x double> @_Z7vload16u2szPU2A1Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <16 x double>*
	%src = getelementptr <16 x double>* %ptr, i64 %offset
	%ret = load <16 x double>* %src
	ret <16 x double> %ret
}
define <16 x double> @_Z7vload16u2szPU2A2Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <16 x double>*
	%src = getelementptr <16 x double>* %ptr, i64 %offset
	%ret = load <16 x double>* %src
	ret <16 x double> %ret
}
define <16 x double> @_Z7vload16u2szPU2A3Kd(i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <16 x double>*
	%src = getelementptr <16 x double>* %ptr, i64 %offset
	%ret = load <16 x double>* %src
	ret <16 x double> %ret
}
define void @_Z8vstore16u3v16du2szPKd(<16 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <16 x double>*
	%dst = getelementptr <16 x double>* %ptr, i64 %offset
	store <16 x double> %data, <16 x double>* %dst
	ret void
}
define void @_Z8vstore16u3v16du2szPU2A1Kd(<16 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <16 x double>*
	%dst = getelementptr <16 x double>* %ptr, i64 %offset
	store <16 x double> %data, <16 x double>* %dst
	ret void
}
define void @_Z8vstore16u3v16du2szPU2A3Kd(<16 x double> %data, i64 %offset, double* %p) nounwind {
	%ptr = bitcast double* %p to <16 x double>*
	%dst = getelementptr <16 x double>* %ptr, i64 %offset
	store <16 x double> %data, <16 x double>* %dst
	ret void
}
