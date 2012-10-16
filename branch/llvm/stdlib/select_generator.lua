#!/usr/bin/lua

local out = io.stdout;
local scalar_types = { 'char', 'uchar', 'short', 'ushort', 'int', 'uint', 'long', 'ulong', 'float', 'double' };
local scalar_min = { "-128", "0", "-32768", "0", "-268435456", "0", "-1152921504606846976", "0", nil, nil };
local scalar_max = { "127", "255", "32767", "65535", "2147483647", "4294967295", "9223372036854775807", "18446744073709551615", nil, nil };
local scalar_size = { 1, 1, 2, 2, 4, 4, 8, 8, 4, 8 };

local mangled_scalar_types = { 'c', 'h', 's', 't', 'i', 'j', 'l', 'm', 'f', 'd' };
local mangled_scalar_sint_types = { 'c', 'c', 's', 's', 'i', 'i', 'l', 'l', 'i', 'l' };
local mangled_scalar_uint_types = { 'h', 'h', 't', 't', 'j', 'j', 'm', 'm', 'j', 'm' };

out:write("; ModuleID = 'select.ll'\n\n")

llvm_scalar_types = { 'i8', 'i8', 'i16', 'i16', 'i32', 'i32', 'i64', 'i64', 'float', 'double' };
llvm_scalar_int_types = { 'i8', 'i8', 'i16', 'i16', 'i32', 'i32', 'i64', 'i64', 'i32', 'i64' };
scalar_msb = { '128', '128', '32768', '32768', '2147483648', '2147483648', '9223372036854775808', '9223372036854775808', '2147483648', '9223372036854775808' };
local dims = { 1, 2, 3, 4, 8, 16 };
for k, v in pairs(dims) do
	for k2, v2 in pairs(llvm_scalar_types) do
		local nv = v
		if v == 3 then
			nv = 4
		end
		local t;
		if v == 1 then
			t = v2
		else
			t = "<" .. nv .. " x " .. v2 .. ">"
		end
		local u;
		if v == 1 then
			u = llvm_scalar_int_types[k2]
		else
			u = "<" .. nv .. " x " .. llvm_scalar_int_types[k2] .. ">"
		end
		
		local fname = "_Z6select"
		local t0 = ""
		if v > 1 then
			t0 = "u";
			if v3 == 16 then
				t0 = t0 .. "3v16"
			else
				t0 = t0 .. "2v" .. v
			end
		end
		t0 = t0 .. mangled_scalar_types[k2]
		local t1 = ""
		if v > 1 then
			t1 = "u";
			if v3 == 16 then
				t1 = t1 .. "3v16"
			else
				t1 = t1 .. "2v" .. v
			end
		end
		t1 = t1 .. mangled_scalar_sint_types[k2]
		fname = fname .. t0 .. t0 .. t1
		out:write("define " .. t .. " @" .. fname .. "(" .. t .. " %a, " .. t .. " %b, " .. u .." %c) nounwind {\n")
		if v == 1 then
			out:write("\t%cb = icmp ne " .. u .. " %c, zeroinitializer\n")
			out:write("\t%ret = select i1 %cb, " .. t .. " %b, " .. t .. " %a\n")
		else
			local msb
			if nv == 1 then
				msg = llvm_scalar_int_types[k2]
			else
				msb = "<"
				for i = 1, nv do
					if i > 1 then
						msb = msb .. ", "
					end
					msb = msb .. llvm_scalar_int_types[k2] .. " " .. scalar_msb[k2]
				end
				msb = msb .. ">"
			end
			out:write("\t%cm = and " .. u .. " %c, " .. msb .. "\n")
			out:write("\t%cb = icmp ne " .. u .. " %cm, " .. msb .. "\n")
			out:write("\t%ret = select <" .. nv .. " x i1> %cb, " .. t .. " %b, " .. t .. " %a\n")
		end
		out:write("\tret " .. t .. " %ret\n")
		out:write("}\n")

		fname = "_Z6select"
		t1 = ""
		if v > 1 then
			t1 = "u";
			if v3 == 16 then
				t1 = t1 .. "3v16"
			else
				t1 = t1 .. "2v" .. v
			end
		end
		t1 = t1 .. mangled_scalar_uint_types[k2]
		fname = fname .. t0 .. t0 .. t1
		out:write("define " .. t .. " @" .. fname .. "(" .. t .. " %a, " .. t .. " %b, " .. u .." %c) nounwind {\n")
		if v == 1 then
			out:write("\t%cb = icmp ne " .. u .. " %c, zeroinitializer\n")
			out:write("\t%ret = select i1 %cb, " .. t .. " %b, " .. t .. " %a\n")
		else
			local msb
			if nv == 1 then
				msg = llvm_scalar_int_types[k2]
			else
				msb = "<"
				for i = 1, nv do
					if i > 1 then
						msb = msb .. ", "
					end
					msb = msb .. llvm_scalar_int_types[k2] .. " " .. scalar_msb[k2]
				end
				msb = msb .. ">"
			end
			out:write("\t%cm = and " .. u .. " %c, " .. msb .. "\n")
			out:write("\t%cb = icmp ne " .. u .. " %cm, " .. msb .. "\n")
			out:write("\t%ret = select <" .. nv .. " x i1> %cb, " .. t .. " %b, " .. t .. " %a\n")
		end
		out:write("\tret " .. t .. " %ret\n")
		out:write("}\n")
	end
end