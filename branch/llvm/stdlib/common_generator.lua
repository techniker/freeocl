#!/usr/bin/lua

local out = io.stdout;
local scalar_types = { 'float', 'double' };

local mangled_scalar_types = { 'f', 'd' };

out:write("; ModuleID = 'common.ll'\n\n")

llvm_scalar_types = { 'float', 'double' };
local dims = { 2, 3, 4, 8, 16 };
local real_dims = { 2, 4, 4, 8, 16 };
for k, v in pairs(dims) do
	for k2, v2 in pairs(llvm_scalar_types) do
		local nv = real_dims[k]
		local t;
		local ts = v2
		local bin;
		local ti;
		if v == 1 then
			t = v2
			bin = 'i1'
			if v2 == "float" then
				ti = 'i32'
			else
				ti = 'i64'
			end
		else
			t = "<" .. nv .. " x " .. v2 .. ">"
			bin = "<" .. nv .. " x i1>"
			if v2 == "float" then
				ti = "<" .. nv .. " x i32>"
			else
				ti = "<" .. nv .. " x i64>"
			end
		end
		
		local minus_one = "< " .. v2 .. " -1.0";
		local one = "< " .. v2 .. " 1.0";
		
		for i = 2, nv do
			minus_one = minus_one .. ", " .. v2 .. " -1.0";
			one = one .. ", " .. v2 .. " 1.0";
		end
		
		minus_one = minus_one .. " >";
		one = one .. " >";
		
		local fname = "_Z6select"
		local t0 = ""
		if v > 1 then
			t0 = "u";
			if v == 16 then
				t0 = t0 .. "3v16"
			else
				t0 = t0 .. "2v" .. v
			end
		end
		t0 = t0 .. mangled_scalar_types[k2]
		local tail1 = t0
		local tail2 = t0 .. t0
		local tail2s = t0 .. mangled_scalar_types[k2]
		local tail3 = t0 .. t0 .. t0
		local tail3ss = t0 .. mangled_scalar_types[k2] .. mangled_scalar_types[k2]
		local suffix1 = tail1 .. "(" .. t .. " %a) nounwind {\n"
		local suffix2 = tail2 .. "(" .. t .. " %a, " .. t .. " %b) nounwind {\n"
		local suffix3 = tail3 .. "(" .. t .. " %a, " .. t .. " %b, " .. t .." %c) nounwind {\n"
		local suffix2s = tail2s .. "(" .. t .. " %a, " .. ts .. " %b) nounwind {\n"
		local suffix3ss = tail3ss .. "(" .. t .. " %a, " .. ts .. " %b, " .. ts .." %c) nounwind {\n"

		out:write("define " .. t .. " @_Z3max" .. suffix2)
		out:write("\t%cmp = fcmp ogt " .. t .. " %a, %b\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. t .. " %a, " .. t .. " %b\n")
		out:write("\tret " .. t .. " %ret\n}\n")

		out:write("define " .. t .. " @_Z3max" .. suffix2s)
		out:write("\t%bv0 = insertelement " .. t .. " undef, " .. ts .. " %b, i32 0\n")
		out:write("\t%bv = shufflevector " .. t .. " %bv0, " .. t .. " undef, <" .. nv .. " x i32> zeroinitializer\n")
		out:write("\t%cmp = fcmp ogt " .. t .. " %a, %bv\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. t .. " %a, " .. t .. " %bv\n")
		out:write("\tret " .. t .. " %ret\n}\n")

		out:write("define " .. t .. " @_Z3min" .. suffix2)
		out:write("\t%cmp = fcmp olt " .. t .. " %a, %b\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. t .. " %a, " .. t .. " %b\n")
		out:write("\tret " .. t .. " %ret\n}\n")

		out:write("define " .. t .. " @_Z3min" .. suffix2s)
		out:write("\t%bv0 = insertelement " .. t .. " undef, " .. ts .. " %b, i32 0\n")
		out:write("\t%bv = shufflevector " .. t .. " %bv0, " .. t .. " undef, <" .. nv .. " x i32> zeroinitializer\n")
		out:write("\t%cmp = fcmp olt " .. t .. " %a, %bv\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. t .. " %a, " .. t .. " %bv\n")
		out:write("\tret " .. t .. " %ret\n}\n")

		out:write("define " .. t .. " @_Z5clamp" .. suffix3)
		out:write("\t%cmp = fcmp ogt " .. t .. " %a, %b\n")
		out:write("\t%x = select " .. bin .. " %cmp, " .. t .. " %a, " .. t .. " %b\n")
		out:write("\t%cmp2 = fcmp olt " .. t .. " %x, %c\n")
		out:write("\t%ret = select " .. bin .. " %cmp2, " .. t .. " %x, " .. t .. " %c\n")
		out:write("\tret " .. t .. " %ret\n}\n")

		out:write("define " .. t .. " @_Z5clamp" .. suffix3ss)
		out:write("\t%bv0 = insertelement " .. t .. " undef, " .. ts .. " %b, i32 0\n")
		out:write("\t%bv = shufflevector " .. t .. " %bv0, " .. t .. " undef, <" .. nv .. " x i32> zeroinitializer\n")
		out:write("\t%cv0 = insertelement " .. t .. " undef, " .. ts .. " %c, i32 0\n")
		out:write("\t%cv = shufflevector " .. t .. " %cv0, " .. t .. " undef, <" .. nv .. " x i32> zeroinitializer\n")
		out:write("\t%cmp = fcmp ogt " .. t .. " %a, %bv\n")
		out:write("\t%x = select " .. bin .. " %cmp, " .. t .. " %a, " ..t .. " %bv\n")
		out:write("\t%cmp2 = fcmp olt " .. t .. " %x, %cv\n")
		out:write("\t%ret = select " .. bin .. " %cmp2, " .. t .. " %x, " .. t .. " %cv\n")
		out:write("\tret " .. t .. " %ret\n}\n")

		out:write("declare " .. ti .. " @_Z5isnan" .. tail1 .. "(" .. t .. " %v) nounwind\n")

		out:write("define " .. t .. " @_Z4sign" .. suffix1)
		out:write("\t%cmp0 = fcmp ogt " .. t .. " %a, zeroinitializer\n")
		out:write("\t%cmp1 = fcmp olt " .. t .. " %a, zeroinitializer\n")
		out:write("\t%tst = call " .. ti .. " @_Z5isnan" .. tail1 .. "(" .. t .. " %a)\n")
		out:write("\t%cmp2 = icmp ne " .. ti .. " %tst, zeroinitializer\n")
		out:write("\t%x = select " .. bin .. " %cmp2, " .. t .. " zeroinitializer, " .. t .. " %a\n")
		out:write("\t%y = select " .. bin .. " %cmp1, " .. t .. " " .. minus_one .. ", " .. t .. " %x\n")
		out:write("\t%ret = select " .. bin .. " %cmp0, " .. t .. " " .. one .. ", " .. t .. " %y\n")
		out:write("\tret " .. t .. " %ret\n}\n")
	end
end