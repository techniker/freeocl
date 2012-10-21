#!/usr/bin/lua

local out = io.stdout;
local scalar_types = { 'char', 'uchar', 'short', 'ushort', 'int', 'uint', 'long', 'ulong', 'float', 'double' };
local scalar_min = { "-128", "0", "-32768", "0", "-268435456", "0", "-1152921504606846976", "0", nil, nil };
local scalar_max = { "127", "255", "32767", "65535", "2147483647", "4294967295", "9223372036854775807", "18446744073709551615", nil, nil };
local scalar_size = { 1, 1, 2, 2, 4, 4, 8, 8, 4, 8 };

local mangled_scalar_types = { 'c', 'h', 's', 't', 'i', 'j', 'l', 'm', 'f', 'd' };

out:write("; ModuleID = 'asyncmemop.ll'\n\n")
out:write("declare void @llvm.prefetch(i8* %address, i32 %rw, i32 %locality, i32 %cache_type)\n")

llvm_scalar_types = { 'i8', 'i8', 'i16', 'i16', 'i32', 'i32', 'i64', 'i64', 'float', 'double' };
local vector_dims = { 1, 2, 3, 4, 8, 16 };
for k, v in pairs(vector_dims) do
	for k2, v2 in pairs(llvm_scalar_types) do
		local nv = v
		if v == 3 then
			nv = 4
		end
		local t = "<" .. nv .. " x " .. v2 .. ">"
		if nv == 1 then
			t = v2
		end
		local fname = "prefetch"
		local len = #fname
		fname = fname .. "PU2A1K"
		if v > 1 then
			if v == 16 then
				fname = fname .. "u3v16"
			else
				fname = fname .. "u2v" .. v
			end
		end
		fname = fname .. mangled_scalar_types[k2] .. "u2sz"
		out:write("define void @_Z" .. len .. fname .. "(" .. t .. "* %ptr, i64 %s) nounwind {\n")
		out:write("\t%ptri8 = bitcast " .. t .. "* %ptr to i8*\n")
		out:write("\tcall void @llvm.prefetch(i8* %ptri8, i32 0, i32 3, i32 1)\n")
		out:write("\tret void\n")
		out:write("}\n")
	end
end
