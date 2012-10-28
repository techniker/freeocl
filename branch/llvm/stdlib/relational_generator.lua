#!/usr/bin/lua

local out = io.stdout;
local scalar_types = { 'float', 'double' };

local mangled_scalar_types = { 'f', 'd' };

out:write("; ModuleID = 'relation.ll'\n\n")

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
		local si;
		if v2 == "float" then
			si = 'i32'
		else
			si = 'i64'
		end
		if v == 1 then
			t = v2
			bin = 'i1'
			ti = si
		else
			t = "<" .. nv .. " x " .. v2 .. ">"
			bin = "<" .. nv .. " x i1>"
			ti = "<" .. nv .. " x " .. si .. ">"
		end
		
		local minus_one = "< " .. v2 .. " -1.0";
		local one = "< " .. v2 .. " 1.0";
		local i_minus_one = "< " .. si .. " -1";
		
		for i = 2, nv do
			minus_one = minus_one .. ", " .. v2 .. " -1.0";
			i_minus_one = i_minus_one .. ", " .. si .. " -1";
			one = one .. ", " .. v2 .. " 1.0";
		end
		
		minus_one = minus_one .. " >";
		i_minus_one = i_minus_one .. " >";
		one = one .. " >";
		
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

		-- isequal
		out:write("define " .. ti .. " @_Z7isequal" .. suffix2)
		out:write("\t%cmp = fcmp oeq " .. t .. " %a, %b\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. ti .. " " .. i_minus_one .. ", " .. ti .. " zeroinitializer\n")
		out:write("\tret " .. ti .. " %ret\n}\n")

		-- isnotequal
		out:write("define " .. ti .. " @_Z10isnotequal" .. suffix2)
		out:write("\t%cmp = fcmp une " .. t .. " %a, %b\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. ti .. " " .. i_minus_one .. ", " .. ti .. " zeroinitializer\n")
		out:write("\tret " .. ti .. " %ret\n}\n")

		-- isgreater
		out:write("define " .. ti .. " @_Z9isgreater" .. suffix2)
		out:write("\t%cmp = fcmp ogt " .. t .. " %a, %b\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. ti .. " " .. i_minus_one .. ", " .. ti .. " zeroinitializer\n")
		out:write("\tret " .. ti .. " %ret\n}\n")

		-- isgreaterequal
		out:write("define " .. ti .. " @_Z14isgreaterequal" .. suffix2)
		out:write("\t%cmp = fcmp oge " .. t .. " %a, %b\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. ti .. " " .. i_minus_one .. ", " .. ti .. " zeroinitializer\n")
		out:write("\tret " .. ti .. " %ret\n}\n")

		-- isless
		out:write("define " .. ti .. " @_Z6isless" .. suffix2)
		out:write("\t%cmp = fcmp olt " .. t .. " %a, %b\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. ti .. " " .. i_minus_one .. ", " .. ti .. " zeroinitializer\n")
		out:write("\tret " .. ti .. " %ret\n}\n")

		-- islessequal
		out:write("define " .. ti .. " @_Z11islessequal" .. suffix2)
		out:write("\t%cmp = fcmp ole " .. t .. " %a, %b\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. ti .. " " .. i_minus_one .. ", " .. ti .. " zeroinitializer\n")
		out:write("\tret " .. ti .. " %ret\n}\n")

		-- islessgreater
		out:write("define " .. ti .. " @_Z13islessgreater" .. suffix2)
		out:write("\t%cmp = fcmp one " .. t .. " %a, %b\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. ti .. " " .. i_minus_one .. ", " .. ti .. " zeroinitializer\n")
		out:write("\tret " .. ti .. " %ret\n}\n")
	end
end
