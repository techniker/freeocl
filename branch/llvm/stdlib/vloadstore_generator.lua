#!/usr/bin/lua

local out = io.stdout;
local scalar_types = { 'float', 'double' };

local mangled_scalar_types = { 'c', 'h', 's', 't', 'i', 'j', 'l', 'm', 'f', 'd' };

out:write("; ModuleID = 'vloadstore.ll'\n\n")

mode = "i64"

llvm_scalar_types = { 'i8', 'i8', 'i16', 'i16', 'i32', 'i32', 'i64', 'i64', 'float', 'double' };
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
		if v2 == "double" or v2 == "i64" then
			si = 'i64'
		else
			si = 'i32'
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

		-- vload
		local fname = "vload" .. v
		for i = 0, 3 do
			out:write("define " .. t .. " @_Z" .. #fname .. fname .. "u2szP")
			if i > 0 then
				out:write("U2A" .. i)
			end
			out:write("K" .. mangled_scalar_types[k2] .."(" .. mode .. " %offset, " .. ts .. "* %p) nounwind {\n")
			if v == 3 then
				out:write("\t%offx = mul " ..mode .. " %offset, 3\n")
				out:write("\t%px = getelementptr " ..ts .. "* %p, " .. mode .. " %offx\n")
				out:write("\t%x = load " .. ts .. "* %px\n")
				out:write("\t%offy = add " ..mode .. " %offx, 1\n")
				out:write("\t%py = getelementptr " ..ts .. "* %p, " .. mode .. " %offy\n")
				out:write("\t%y = load " .. ts .. "* %py\n")
				out:write("\t%offz = add " ..mode .. " %offy, 1\n")
				out:write("\t%pz = getelementptr " ..ts .. "* %p, " .. mode .. " %offz\n")
				out:write("\t%z = load " .. ts .. "* %pz\n")
				out:write("\t%vx = insertelement " .. t .. " undef, " .. ts .. " %x, i32 0\n")
				out:write("\t%vy = insertelement " .. t .. " %vx, " .. ts .. " %y, i32 1\n")
				out:write("\t%ret = insertelement " .. t .. " %vy, " .. ts .. " %z, i32 2\n")
			else
				out:write("\t%ptr = bitcast " .. ts .. "* %p to " .. t .. "*\n")
				out:write("\t%src = getelementptr " ..t .. "* %ptr, " .. mode .. " %offset\n")
				out:write("\t%ret = load " .. t .. "* %src\n")
			end
			out:write("\tret " .. t .. " %ret\n}\n")
		end
		fname = "vstore" .. v
		for i = 0, 3 do
			if i ~= 2 then
				out:write("define void @_Z" .. #fname .. fname .. t0 .. "u2szP")
				if i > 0 then
					out:write("U2A" .. i)
				end
				out:write("K" .. mangled_scalar_types[k2] .."(" .. t .. " %data, " .. mode .. " %offset, " .. ts .. "* %p) nounwind {\n")
				if v == 3 then
					out:write("\t%x = extractelement " .. t .. " %data, i32 0\n")
					out:write("\t%y = extractelement " .. t .. " %data, i32 1\n")
					out:write("\t%z = extractelement " .. t .. " %data, i32 2\n")
					out:write("\t%offx = mul " ..mode .. " %offset, 3\n")
					out:write("\t%px = getelementptr " ..ts .. "* %p, " .. mode .. " %offx\n")
					out:write("\tstore " .. ts .. " %x, " .. ts .. "* %px\n")
					out:write("\t%offy = add " ..mode .. " %offx, 1\n")
					out:write("\t%py = getelementptr " ..ts .. "* %p, " .. mode .. " %offy\n")
					out:write("\tstore " .. ts .. " %y, " .. ts .. "* %py\n")
					out:write("\t%offz = add " ..mode .. " %offy, 1\n")
					out:write("\t%pz = getelementptr " ..ts .. "* %p, " .. mode .. " %offz\n")
					out:write("\tstore " .. ts .. " %z, " .. ts .. "* %pz\n")
				else
					out:write("\t%ptr = bitcast " .. ts .. "* %p to " .. t .. "*\n")
					out:write("\t%dst = getelementptr " ..t .. "* %ptr, " .. mode .. " %offset\n")
					out:write("\tstore " .. t .. " %data, " .. t .. "* %dst\n")
				end
				out:write("\tret void\n}\n")
			end
		end
	end
end
