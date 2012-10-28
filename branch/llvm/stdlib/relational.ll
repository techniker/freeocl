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
