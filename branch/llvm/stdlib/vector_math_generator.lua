#!/usr/bin/lua

local out = io.stdout;
local scalar_types = { 'float', 'double' };

local mangled_scalar_types = { 'f', 'd' };

out:write("; ModuleID = 'vector_math.ll'\n\n")

llvm_scalar_types = { 'float', 'double' };
local dims = { 2, 3, 4, 8, 16 };
local real_dims = { 2, 4, 4, 8, 16 };
local functions = {
	{ name = "acos", params = { "v" } },
	{ name = "acosh", params = { "v" } },
	{ name = "acospi", params = { "v" } },
	{ name = "asin", params = { "v" } },
	{ name = "asinh", params = { "v" } },
	{ name = "asinpi", params = { "v" } },
	{ name = "atan", params = { "v" } },
	{ name = "atan2", params = { "v", "v" } },
	{ name = "atanh", params = { "v" } },
	{ name = "atanpi", params = { "v" } },
	{ name = "atan2pi", params = { "v", "v" } },
	{ name = "cbrt", params = { "v" } },
	{ name = "ceil", params = { "v" } },
	{ name = "copysign", params = { "v", "v" } },
	{ name = "cosh", params = { "v" } },
	{ name = "cospi", params = { "v" } },
	{ name = "erfc", params = { "v" } },
	{ name = "erf", params = { "v" } },
	{ name = "exp2", params = { "v" } },
	{ name = "exp10", params = { "v" } },
	{ name = "expm1", params = { "v" } },
	{ name = "fdim", params = { "v", "v" } },
	{ name = "fmax", params = { "v", "v" } },
	{ name = "fmin", params = { "v", "v" } },
	{ name = "fmod", params = { "v", "v" } },
	{ name = "fract", params = { "v", "pv" } },
	{ name = "frexp", params = { "v", "pi" } },
	{ name = "hypot", params = { "v", "v" } },
	{ name = "ldexp", params = { "v", "i" } },
	{ name = "lgamma", params = { "v" } },
	{ name = "lgamma_r", params = { "v", "pi" } },
	{ name = "log2", params = { "v" } },
	{ name = "log10", params = { "v" } },
	{ name = "log1p", params = { "v" } },
	{ name = "logb", params = { "v" } },
	{ name = "mad", params = { "v", "v", "v" } },
	{ name = "maxmag", params = { "v", "v" } },
	{ name = "minmag", params = { "v", "v" } },
	{ name = "modf", params = { "v", "pv" } },
	{ name = "nextafter", params = { "v", "v" } },
	{ name = "powr", params = { "v", "v" } },
	{ name = "remainder", params = { "v", "v" } },
	{ name = "remquo", params = { "v", "v", "pi" } },
	{ name = "rint", params = { "v" } },
	{ name = "rootn", params = { "v", "i" } },
	{ name = "round", params = { "v" } },
	{ name = "rsqrt", params = { "v" } },
	{ name = "sincos", params = { "v", "pv" } },
	{ name = "sinh", params = { "v" } },
	{ name = "sinpi", params = { "v" } },
	{ name = "tan", params = { "v" } },
	{ name = "tanh", params = { "v" } },
	{ name = "tanpi", params = { "v" } },
	{ name = "tgamma", params = { "v" } },
	{ name = "trunc", params = { "v" } },

	{ name = "half_cos", params = { "v" } },
	{ name = "half_divide", params = { "v", "v" } },
	{ name = "half_exp", params = { "v" } },
	{ name = "half_exp2", params = { "v" } },
	{ name = "half_exp10", params = { "v" } },
	{ name = "half_log", params = { "v" } },
	{ name = "half_log2", params = { "v" } },
	{ name = "half_log10", params = { "v" } },
	{ name = "half_powr", params = { "v", "v" } },
	{ name = "half_recip", params = { "v" } },
	{ name = "half_rsqrt", params = { "v" } },
	{ name = "half_sin", params = { "v" } },
	{ name = "half_sqrt", params = { "v" } },
	{ name = "half_tan", params = { "v" } },

	{ name = "native_exp2", params = { "v" } },
	{ name = "native_exp10", params = { "v" } },
	{ name = "native_log2", params = { "v" } },
	{ name = "native_log10", params = { "v" } },
	{ name = "native_recip", params = { "v" } },
	{ name = "native_rsqrt", params = { "v" } },
	{ name = "native_sqrt", params = { "v" } },
	{ name = "native_sin", params = { "v" } },
	{ name = "native_cos", params = { "v" } },
	{ name = "native_exp", params = { "v" } },
	{ name = "native_log", params = { "v" } },
	{ name = "native_tan", params = { "v" } },
	{ name = "native_divide", params = { "v", "v" } },
	{ name = "native_powr", params = { "v", "v" } },
	{ name = "native_ldexp", params = { "v", "i" } } }

for k, v in pairs(dims) do
	for k2, v2 in pairs(llvm_scalar_types) do
		local nv = real_dims[k]
		local t;
		local ts = v2
		local ti;
		t = "<" .. nv .. " x " .. v2 .. ">"
		ti = "<" .. nv .. " x i32>"
		local tp = ""
		tp = "u";
		if v == 16 then
			tp = tp .. "3v16"
		else
			tp = tp .. "2v" .. v
		end

		for k3, v3 in pairs(functions) do
			local fname = "_Z" .. #v3.name .. v3.name
			local fname_scalar = fname

			if k == 1 then
				out:write("declare " .. ts .. " @" .. fname)
				local nb_params = #v3.params
				for k4, v4 in pairs(v3.params) do
					if v4 == "v" then
						out:write(mangled_scalar_types[k2])
					else
						if v4 == "pv" then
							out:write("P" .. mangled_scalar_types[k2])
						else
							if v4 == "i" then
								out:write("i")
							else
								out:write("Pi")
							end
						end
					end
				end
				out:write("(")
				for k4, v4 in pairs(v3.params) do
					if k4 > 1 then
						out:write(", ")
					end
					if v4 == "v" then
						out:write(ts .. " %p" .. (k4 - 1))
					else
						if v4 == "pv" then
							out:write(ts .. "* %p" .. (k4 - 1))
						else
							if v4 == "i" then
								out:write("i32 %p" .. (k4 - 1))
							else
								out:write("i32* %p" .. (k4 - 1))
							end
						end
					end
				end
				out:write(") nounwind\n")
			end

			out:write("define " .. t .. " @" .. fname)
			local nb_params = #v3.params
			for k4, v4 in pairs(v3.params) do
				if v4 == "v" then
					out:write(tp .. mangled_scalar_types[k2])
					fname_scalar = fname_scalar .. mangled_scalar_types[k2]
				else
					if v4 == "pv" then
						out:write("P" .. tp .. mangled_scalar_types[k2])
					fname_scalar = fname_scalar .. "P" .. mangled_scalar_types[k2]
					else
						if v4 == "i" then
							out:write(tp .. "i")
							fname_scalar = fname_scalar .. "i"
						else
							out:write("P" .. tp .. "i")
							fname_scalar = fname_scalar .. "Pi"
						end
					end
				end
			end
			out:write("(")
			for k4, v4 in pairs(v3.params) do
				if k4 > 1 then
					out:write(", ")
				end
				if v4 == "v" then
					out:write(t .. " %p" .. (k4 - 1))
				else
					if v4 == "pv" then
						out:write(t .. "* %p" .. (k4 - 1))
					else
						if v4 == "i" then
							out:write(ti .. " %p" .. (k4 - 1))
						else
							out:write(ti .. "* %p" .. (k4 - 1))
						end
					end
				end
			end
			out:write(") nounwind {\n")
			local last_v = "undef"
			for d = 1, v do
				for k4, v4 in pairs(v3.params) do
					if v4 == "v" then
						out:write("\t%s" .. d .. "_" .. (k4 - 1) .. " = extractelement " .. t .. " %p" .. (k4 - 1) .. ", i32 " .. (d - 1) .. "\n")
					else
						if v4 == "pv" then
							out:write("\t%s" .. d .. "_" .. (k4 - 1) .. " = getelementptr " .. t .. "* %p" .. (k4 - 1) .. ", i32 0, i32 " .. (d - 1) .. "\n")
						else
							if v4 == "i" then
								out:write("\t%s" .. d .. "_" .. (k4 - 1) .. " = extractelement " .. ti .. " %p" .. (k4 - 1) .. ", i32 " .. (d - 1) .. "\n")
							else
								out:write("\t%s" .. d .. "_" .. (k4 - 1) .. " = getelementptr " .. ti .. "* %p" .. (k4 - 1) .. ", i32 0, i32 " .. (d - 1) .. "\n")
							end
						end
					end
				end
				out:write("\t%v" .. d .. " = call " .. ts .. " @" .. fname_scalar .."(")
				for k4, v4 in pairs(v3.params) do
					if k4 > 1 then
						out:write(", ")
					end
					if v4 == "v" then
						out:write(ts .. " %s" .. d .. "_" .. (k4 - 1))
					else
						if v4 == "pv" then
							out:write(ts .. "* %s" .. d .. "_" .. (k4 - 1))
						else
							if v4 == "i" then
								out:write("i32 %s" .. d .. "_" .. (k4 - 1))
							else
								out:write("i32* %s" .. d .. "_" .. (k4 - 1))
							end
						end
					end
				end
				out:write(")\n")
				out:write("\t%r" ..d .. " = insertelement " .. t .. " " .. last_v .. ", " .. ts .. " %v" .. d .. ", i32 " .. (d - 1) .. "\n")
				last_v = "%r" .. d
			end
			out:write("\tret " .. t .. " " .. last_v .. "\n}\n")
		end
	end
end