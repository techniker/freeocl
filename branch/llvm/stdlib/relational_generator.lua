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
		local all_but_sign_mask32 = "< i32 2147483647"; 
		local all_but_sign_mask64 = "< i64 9223372036854775807"; 
		local exponent_mask32 = "< i32 2139095040"; 
		local exponent_mask64 = "< i64 9218868437227405312"; 
		local mantissa_mask32 = "< i32 8388607"; 
		local mantissa_mask64 = "< i64 4503599627370495"; 
		
		for i = 2, nv do
			minus_one = minus_one .. ", " .. v2 .. " -1.0";
			i_minus_one = i_minus_one .. ", " .. si .. " -1";
			one = one .. ", " .. v2 .. " 1.0";
			all_but_sign_mask32 = all_but_sign_mask32 .. ", i32 2147483647";
			all_but_sign_mask64 = all_but_sign_mask64 .. ", i64 9223372036854775807";
			exponent_mask32 = exponent_mask32 .. ", i32 2139095040";
			exponent_mask64 = exponent_mask64 .. ", i64 9218868437227405312";
			mantissa_mask32 = mantissa_mask32 .. ", i32 8388607";
			mantissa_mask64 = mantissa_mask64 .. ", i64 4503599627370495";
		end
		
		minus_one = minus_one .. " >";
		i_minus_one = i_minus_one .. " >";
		one = one .. " >";
		all_but_sign_mask32 = all_but_sign_mask32 .. " >";
		all_but_sign_mask64 = all_but_sign_mask64 .. " >";
		exponent_mask32 = exponent_mask32 .. " >";
		exponent_mask64 = exponent_mask64 .. " >";
		mantissa_mask32 = mantissa_mask32 .. " >";
		mantissa_mask64 = mantissa_mask64 .. " >";
		if v2 == "float" then
			all_but_sign_mask = all_but_sign_mask32
			exponent_mask = exponent_mask32
			mantissa_mask = mantissa_mask32
		else
			all_but_sign_mask = all_but_sign_mask64
			exponent_mask = exponent_mask64
			mantissa_mask = mantissa_mask64
		end
		
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
		
		-- isinf
		out:write("define " .. ti .. " @_Z5isinf" .. suffix1)
		out:write("\t%b = bitcast " .. t .. " %a to " .. ti .. "\n")
		out:write("\t%bits = and " .. ti .. " %b, " .. all_but_sign_mask .. "\n")
		out:write("\t%cmp = icmp ne " .. ti .. " %bits, " .. exponent_mask .. "\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. ti .. " " .. i_minus_one .. ", " .. ti .. " zeroinitializer\n")
		out:write("\tret " .. ti .. " %ret\n}\n")

		-- isnan
		out:write("define " .. ti .. " @_Z5isnan" .. suffix1)
		out:write("\t%b = bitcast " .. t .. " %a to " .. ti .. "\n")
		out:write("\t%bits0 = and " .. ti .. " %b, " .. exponent_mask .. "\n")
		out:write("\t%cmp0 = icmp eq " .. ti .. " %bits0, " .. exponent_mask .. "\n")
		out:write("\t%bits1 = and " .. ti .. " %b, " .. mantissa_mask .. "\n")
		out:write("\t%cmp1 = icmp ne " .. ti .. " %bits1, zeroinitializer \n")
		out:write("\t%cmp = and " .. bin .. " %cmp0, %cmp1\n")
		out:write("\t%ret = select " .. bin .. " %cmp, " .. ti .. " " .. i_minus_one .. ", " .. ti .. " zeroinitializer\n")
		out:write("\tret " .. ti .. " %ret\n}\n")
	end
end

local llvm_scalar_integer_types = { 'i8', 'i16', 'i32', 'i64' };
local mangled_scalar_integer_types = { 'c', 's', 'i', 'l' };
for k, v in pairs(dims) do
	for k2, v2 in pairs(llvm_scalar_integer_types) do
		local nv = real_dims[k]
		local t;
		local ts = v2
		local bin;
		if v == 1 then
			t = v2
			bin = 'i1'
		else
			t = "<" .. nv .. " x " .. v2 .. ">"
			bin = "<" .. nv .. " x i1>"
		end

		local t0 = ""
		if v > 1 then
			t0 = "u";
			if v == 16 then
				t0 = t0 .. "3v16"
			else
				t0 = t0 .. "2v" .. v
			end
		end
		t0 = t0 .. mangled_scalar_integer_types[k2]
		local tail1 = t0
		local tail2 = t0 .. t0
		local tail2s = t0 .. mangled_scalar_integer_types[k2]
		local tail3 = t0 .. t0 .. t0
		local tail3ss = t0 .. mangled_scalar_integer_types[k2] .. mangled_scalar_integer_types[k2]
		local suffix1 = tail1 .. "(" .. t .. " %a) nounwind {\n"
		local suffix2 = tail2 .. "(" .. t .. " %a, " .. t .. " %b) nounwind {\n"
		local suffix3 = tail3 .. "(" .. t .. " %a, " .. t .. " %b, " .. t .." %c) nounwind {\n"
		local suffix2s = tail2s .. "(" .. t .. " %a, " .. ts .. " %b) nounwind {\n"
		local suffix3ss = tail3ss .. "(" .. t .. " %a, " .. ts .. " %b, " .. ts .." %c) nounwind {\n"

		-- all
		out:write("define i32 @_Z3all" .. suffix1)
		for i = 1, v do
			out:write("  %" .. i .. " = extractelement " .. t .. " %a, i32 " .. (i-1) .. "\n")
		end
		out:write("  %" .. (v + 1) .. " = and " .. ts .. " %1, %2\n")
		for i = 3, v do
			out:write("  %" .. (v + i - 1) .. " = and " .. ts .. " %".. (v+i-2) ..", %" .. i .. "\n")
		end
		out:write("  %.lobit = lshr " .. ts .. " %" .. (2 * v - 1) .. ", 7\n")
		if ts == "i8" or ts == "i16" then
			out:write("  %ret = zext " .. ts .. " %.lobit to i32\n")
			out:write("  ret i32 %ret\n")
		else
			if ts == "i32" then
				out:write("  ret i32 %.lobit\n")
			else
				if ts == "i64" then
					out:write("  %ret = trunc i64 %.lobit to i32\n")
					out:write("  ret i32 %ret\n")
				end
			end
		end
		out:write("}\n")
		
		-- any
		out:write("define i32 @_Z3any" .. suffix1)
		for i = 1, v do
			out:write("  %" .. i .. " = extractelement " .. t .. " %a, i32 " .. (i-1) .. "\n")
		end
		out:write("  %" .. (v + 1) .. " = or " .. ts .. " %1, %2\n")
		for i = 3, v do
			out:write("  %" .. (v + i - 1) .. " = or " .. ts .. " %".. (v+i-2) ..", %" .. i .. "\n")
		end
		out:write("  %.lobit = lshr " .. ts .. " %" .. (2 * v - 1) .. ", 7\n")
		if ts == "i8" or ts == "i16" then
			out:write("  %ret = zext " .. ts .. " %.lobit to i32\n")
			out:write("  ret i32 %ret\n")
		else
			if ts == "i32" then
				out:write("  ret i32 %.lobit\n")
			else
				if ts == "i64" then
					out:write("  %ret = trunc i64 %.lobit to i32\n")
					out:write("  ret i32 %ret\n")
				end
			end
		end
		out:write("}\n")

	end
end