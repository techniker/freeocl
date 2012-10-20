#!/usr/bin/lua

local out = io.stdout;
local scalar_types = { 'char', 'uchar', 'short', 'ushort', 'int', 'uint', 'long', 'ulong', 'float', 'double' };
local scalar_min = { "-128", "0", "-32768", "0", "-268435456", "0", "-1152921504606846976", "0", nil, nil };
local scalar_max = { "127", "255", "32767", "65535", "2147483647", "4294967295", "9223372036854775807", "18446744073709551615", nil, nil };
local scalar_size = { 1, 1, 2, 2, 4, 4, 8, 8, 4, 8 };
local scalar_min_flt = { "0xc060000000000000",                "0.0", "0xc0e0000000000000",                "0.0", "0xc1b0000000000000",                "0.0", "0xc3b0000000000000",                "0.0", nil, nil };
local scalar_max_flt = { "0x405fc00000000000", "0x406fe00000000000", "0x40dfffc000000000", "0x40efffe000000000", "0x41e0000000000000", "0x41f0000000000000", "0x43e0000000000000", "0x43f0000000000000", nil, nil };
local scalar_min_dbl = { "0xc060000000000000",                "0.0", "0xc0e0000000000000",                "0.0", "0xc1b0000000000000",                "0.0", "0xc3b0000000000000",                "0.0", nil, nil };
local scalar_max_dbl = { "0x405fc00000000000", "0x406fe00000000000", "0x40dfffc000000000", "0x40efffe000000000", "0x41dfffffffc00000", "0x41efffffffe00000", "0x43e0000000000000", "0x43f0000000000000", nil, nil };

local mangled_scalar_types = { 'c', 'h', 's', 't', 'i', 'j', 'l', 'm', 'f', 'd' };
-- for k, v in pairs(scalar_types) do
-- 	for k2, v2 in pairs(scalar_types) do
-- 		local fname = "convert_" .. v;
-- 		out:write("__" .. v .. " _Z" .. #fname .. fname .. mangled_scalar_types[k2] .. "(const __" .. v2 .. " x)\n{\n")
-- 		out:write("\treturn x;\n")
-- 		out:write("}\n")
-- 
-- 		fname = "convert_" .. v .. "_sat";
-- 		out:write("__" .. v .. " _Z" .. #fname .. fname .. mangled_scalar_types[k2] .. "(const __" .. v2 .. " x)\n{\n")
-- 		if scalar_min[k] == nil then
-- 			out:write("\treturn x;\n")
-- 		else
-- 			out:write("\treturn x < " .. scalar_min[k] .. " ? " .. scalar_min[k] .. " : x > " .. scalar_max[k] .. " ? " .. scalar_max[k] .. " : x ;\n")
-- 		end
-- 		out:write("}\n")
-- 	end
-- end

out:write("; ModuleID = 'converters.ll'\n\n")

llvm_scalar_types = { 'i8', 'i8', 'i16', 'i16', 'i32', 'i32', 'i64', 'i64', 'float', 'double' };
local vector_dims = { '2', '3', '4', '8', '16' };
for k, v in pairs(vector_dims) do
	for k2, v2 in pairs(llvm_scalar_types) do
		local nv = v
		if v == 3 then
			nv = 4
		end
		local t = "<" .. nv .. " x " .. v2 .. ">"
		local k3 = k
		local v3 = v
		local nv3 = nv
		for k4, v4 in pairs(llvm_scalar_types) do
			local lower = "<";
			local upper = "<";
			if scalar_min[k2] ~= nil then
				for i = 1, nv do
					if i > 1 then
						lower = lower .. ", "
						upper = upper .. ", "
					end
					if k4 == 9 then
						lower = lower .. v4 .. " " .. scalar_min_flt[k2]
						upper = upper .. v4 .. " " .. scalar_max_flt[k2]
					else
						if k4 == 10 then
							lower = lower .. v4 .. " " .. scalar_min_dbl[k2]
							upper = upper .. v4 .. " " .. scalar_max_dbl[k2]
						else
							lower = lower .. v4 .. " " .. scalar_min[k2]
							upper = upper .. v4 .. " " .. scalar_max[k2]
						end
					end
				end
				lower = lower .. ">"
				upper = upper .. ">"
			end
		
			local f = "<" .. nv3 .. " x " .. v4 .. ">"
			local fname = "convert_" .. scalar_types[k2] .. v .. "u";
			local len = #fname - 1
			if v3 == 16 then
				fname = fname .. "3v16"
			else
				fname = fname .. "2v" .. v3
			end
			fname = fname .. mangled_scalar_types[k4]
			out:write("define " .. t .. " @_Z" .. len .. fname .. "(" .. f .. " %x) nounwind {\n")
			local b_ret = true;
			if scalar_min[k2] ~= nil then
				if k4 < 9 then
					out:write("\t%cmp = icmp slt " .. f .. " %x, " .. lower .. "\n")
					out:write("\t%sel0 = select <" .. nv .. " x i1> %cmp, " .. f .. " " .. lower .. ", " ..f .. " %x\n")
					out:write("\t%cmp2 = icmp sgt " .. f .. " %x, " .. upper .. "\n")
					out:write("\t%sel1 = select <" .. nv .. " x i1> %cmp2, " .. f .. " " .. upper .. ", " .. f .. " %sel0\n")
				else
					out:write("\t%cmp = fcmp olt " .. f .. " %x, " .. lower .. "\n")
					out:write("\t%sel0 = select <" .. nv .. " x i1> %cmp, " .. f .. " " .. lower .. ", " ..f .. " %x\n")
					out:write("\t%cmp2 = fcmp ogt " .. f .. " %x, " .. upper .. "\n")
					out:write("\t%sel1 = select <" .. nv .. " x i1> %cmp2, " .. f .. " " .. upper .. ", " .. f .. " %sel0\n")
				end
				if f == t then
					out:write("\tret " .. t .. " %sel1\n")
					b_ret = false
				else
					if k2 < 9 and k4 > 8 then
						out:write("\t%ret = fptosi " .. f .. " %sel1 to " .. t .. "\n")
					else
						if k2 > 8 and k4 < 9 then
							out:write("\t%ret = sitofp " .. f .. " %sel1 to " .. t .. "\n")
						else
							if k2 > 8 and k4 > 8 then
								if k2 < k4 then
									out:write("\t%ret = fptrunc " .. f .. " %sel1 to " .. t .. "\n")
								else
									if k4 < k2 then
										out:write("\t%ret = fpext " .. f .. " %sel1 to " .. t .. "\n")
									else
										out:write("\tret " .. t .. " %sel1\n")
										b_ret = false
									end
								end
							else
								if k2 < k4 then
									out:write("\t%ret = trunc " .. f .. " %sel1 to " .. t .. "\n")
								else
									if k4 < k2 then
										out:write("\t%ret = sext " .. f .. " %sel1 to " .. t .. "\n")
									else
										out:write("\tret " .. t .. " %sel1\n")
										b_ret = false
									end
								end
							end
						end
					end
				end
			else
				if f == t then
					out:write("\tret " .. t .. " %x\n")
					b_ret = false
				else
					if k2 < 9 and k4 > 8 then
						out:write("\t%ret = fptosi " .. f .. " %x to " .. t .. "\n")
					else
						if k2 > 8 and k4 < 9 then
							out:write("\t%ret = sitofp " .. f .. " %x to " .. t .. "\n")
						else
							if k2 > 8 and k4 > 8 then
								if k2 < k4 then
									out:write("\t%ret = fptrunc " .. f .. " %x to " .. t .. "\n")
								else
									if k4 < k2 then
										out:write("\t%ret = fpext " .. f .. " %x to " .. t .. "\n")
									else
										out:write("\tret " .. t .. " %x\n")
										b_ret = false
									end
								end
							else
								if k2 < k4 then
									out:write("\t%ret = trunc " .. f .. " %x to " .. t .. "\n")
								else
									if k4 < k2 then
										out:write("\t%ret = sext " .. f .. " %x to " .. t .. "\n")
									else
										out:write("\tret " .. t .. " %x\n")
										b_ret = false
									end
								end
							end
						end
					end
				end
			end
			if b_ret then
				out:write("\tret " .. t .. " %ret\n")
			end
			out:write("}\n")
		end
	end
end

local dims = { 1, 2, 3, 4, 8, 16 };
for k, v in pairs(dims) do
	for k2, v2 in pairs(llvm_scalar_types) do
		local size0 = scalar_size[k2] * v
		local t;
		local nv = v;
		if v == 3 then
			nv = 4;
		end
		if v == 1 then
			t = v2
		else
			t = "<" .. nv .. " x " .. v2 .. ">"
		end
		for k3, v3 in pairs(dims) do
			for k4, v4 in pairs(llvm_scalar_types) do
				local f;
				local nv3 = v3;
				if v3 == 3 then
					nv3 = 4;
				end
				if v3 == 1 then
					f = v4
				else
					f = "<" .. nv3 .. " x " .. v4 .. ">"
				end
				local size1 = scalar_size[k4] * nv3
				if size0 == size1 then
					local fname = "as_" .. scalar_types[k2]
					if v > 1 then
						fname = fname .. v;
					end
					local len = #fname
					if v3 > 1 then
						fname = fname .. "u";
						if v3 == 16 then
							fname = fname .. "3v16"
						else
							fname = fname .. "2v" .. v3
						end
					end
					fname = fname .. mangled_scalar_types[k4]
					out:write("define " .. t .. " @_Z" .. len .. fname .. "(" .. f .. " %x) nounwind {\n")
					out:write("\t%ret = bitcast " .. f .. " %x to " .. t .. "\n")
					out:write("\tret " .. t .. " %ret\n")
					out:write("}\n")
				end
			end
		end
	end
end