/*
	FreeOCL - a free OpenCL implementation for CPU
	Copyright (C) 2011  Roland Brochard

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU Lesser General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU Lesser General Public License for more details.

	You should have received a copy of the GNU Lesser General Public License
	along with this program.  If not, see <http://www.gnu.org/licenses/>
*/
#ifndef __FREEOCL_OPENCL_C_PREINCLUDE_IMAGE1D_T_H__
#define __FREEOCL_OPENCL_C_PREINCLUDE_IMAGE1D_T_H__

struct image1d_t
{
	uint channel_order;
	uint channel_data_type;
	size_t width;
	size_t element_size;
	void *data;
};

inline int __address_mode(const image1d_t &image, const sampler_t sampler, const int coord)
{
	int __coord;
	switch(sampler & 0xFF)
	{
	case CLK_ADDRESS_NONE:
		__coord = coord;
		break;
	case CLK_ADDRESS_CLAMP_TO_EDGE:
		__coord = clamp(coord, 0, image.width - 1);
		break;
	case CLK_ADDRESS_CLAMP:
		__coord = clamp(coord, -1, image.width);
		break;
	case CLK_ADDRESS_REPEAT:
		__coord = coord % image.width;
		break;
	case CLK_ADDRESS_MIRRORED_REPEAT:
		__coord = coord % (image.width << 1);
		__coord = abs(__coord - image.width);
		break;
	}
	return __coord;
}

// Built-in image read/write functions
inline float4 read_imagef(const image1d_t &image, sampler_t sampler, const int coord)
{
	const int __coord = __address_mode(image, sampler, coord);

	const char * const ptr = (const char*)image.data + __coord * image.element_size;
	size_t nb_chan;
	switch(image.channel_order)
	{
	case CLK_R:			nb_chan = 1;	break;
	case CLK_A:			nb_chan = 1;	break;
	case CLK_INTENSITY:	nb_chan = 1;	break;
	case CLK_LUMINANCE:	nb_chan = 1;	break;
	case CLK_Rx:		nb_chan = 1;	break;

	case CLK_RG:		nb_chan = 2;	break;
	case CLK_RA:		nb_chan = 2;	break;
	case CLK_RGx:		nb_chan = 2;	break;

	case CLK_RGB:		nb_chan = 3;	break;
	case CLK_RGBx:		nb_chan = 3;	break;

	case CLK_RGBA:		nb_chan = 4;	break;
	case CLK_BGRA:		nb_chan = 4;	break;
	case CLK_ARGB:		nb_chan = 4;	break;
	}

	float4 v;
	switch(image.channel_data_type)
	{
	case CLK_UNORM_INT8:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const uchar*)ptr)[i] * (1.0f / 255.0f);
		break;
	case CLK_UNORM_INT16:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const ushort*)ptr)[i] * (1.0f / 65535.0f);
		break;
	case CLK_UNORM_SHORT_555:
		{
			const uint s = *(const ushort*)ptr;
			v.get<0>() = ((s >> 10) & 31U) * (1.0f / 31.0f);
			v.get<1>() = ((s >> 5) & 31U) * (1.0f / 31.0f);
			v.get<2>() = (s & 31U) * (1.0f / 31.0f);
		}
		break;
	case CLK_UNORM_SHORT_565:
		{
			const uint s = *(const ushort*)ptr;
			v.get<0>() = ((s >> 11) & 31U) * (1.0f / 31.0f);
			v.get<1>() = ((s >> 5) & 63U) * (1.0f / 63.0f);
			v.get<2>() = (s & 31U) * (1.0f / 31.0f);
		}
		break;
	case CLK_UNORM_INT_101010:
		{
			const uint s = *(const uint*)ptr;
			v.get<0>() = ((s >> 20) & 1023U) * (1.0f / 1023.0f);
			v.get<1>() = ((s >> 10) & 1023U) * (1.0f / 1023.0f);
			v.get<2>() = (s & 1023U) * (1.0f / 1023.0f);
		}
		break;
	case CLK_SNORM_INT8:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const char*)ptr)[i] * (1.0f / 127.0f);
		break;
	case CLK_SNORM_INT16:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const short*)ptr)[i] * (1.0f / 32767.0f);
		break;
	case CLK_HALF_FLOAT:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const half*)ptr)[i];
		break;
	case CLK_FLOAT:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const float*)ptr)[i];
		break;
	}

	return __map_channels_for_reading(image, v);
}
inline float4 read_imagef(const image1d_t &image, sampler_t sampler, const float coord)
{
	float rcoord = coord;
	if (sampler & CLK_NORMALIZED_COORDS_TRUE)
		rcoord *= float(image.width);
	if (!(sampler & CLK_FILTER_LINEAR))
		return read_imagef(image, sampler, convert_int(rcoord));
	const int c0 = convert_int(rcoord - 0.5f);
	const float dp = rcoord - convert_float(c0);
	const float4 v0 = read_imagef(image, sampler, c0);
	const float4 v1 = read_imagef(image, sampler, c0 + 1);
	return v0 + dp * (v1 - v0);
}
inline float4 read_imagef(const image1d_t &image, const int coord)
{
	return read_imagef(image, CLK_NORMALIZED_COORDS_FALSE | CLK_FILTER_NEAREST | CLK_ADDRESS_NONE, coord);
}

inline int4 read_imagei(const image1d_t &image, sampler_t sampler, const int coord)
{
	const int __coord = __address_mode(image, sampler, coord);

	const char * const ptr = (const char*)image.data + __coord * image.element_size;
	size_t nb_chan;
	switch(image.channel_order)
	{
	case CLK_R:			nb_chan = 1;	break;
	case CLK_A:			nb_chan = 1;	break;
	case CLK_INTENSITY:	nb_chan = 1;	break;
	case CLK_LUMINANCE:	nb_chan = 1;	break;
	case CLK_Rx:		nb_chan = 1;	break;

	case CLK_RG:		nb_chan = 2;	break;
	case CLK_RA:		nb_chan = 2;	break;
	case CLK_RGx:		nb_chan = 2;	break;

	case CLK_RGB:		nb_chan = 3;	break;
	case CLK_RGBx:		nb_chan = 3;	break;

	case CLK_RGBA:		nb_chan = 4;	break;
	case CLK_BGRA:		nb_chan = 4;	break;
	case CLK_ARGB:		nb_chan = 4;	break;
	}

	int4 v;
	switch(image.channel_data_type)
	{
	case CLK_SIGNED_INT8:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const char*)ptr)[i];
		break;
	case CLK_SIGNED_INT16:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const short*)ptr)[i];
		break;
	case CLK_SIGNED_INT32:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const int*)ptr)[i];
		break;
	}

	return __map_channels_for_reading(image, v);
}
inline int4 read_imagei(const image1d_t &image, sampler_t sampler, const float coord)
{
	if (sampler & CLK_NORMALIZED_COORDS_TRUE)
		return read_imagei(image, sampler, convert_int(coord * float(image.width)));
	return read_imagei(image, sampler, convert_int(coord));
}
inline int4 read_imagei(const image1d_t &image, const int coord)
{
	return read_imagei(image, CLK_NORMALIZED_COORDS_FALSE | CLK_FILTER_NEAREST | CLK_ADDRESS_NONE, coord);
}

inline uint4 read_imageui(const image1d_t &image, sampler_t sampler, const int coord)
{
	const int __coord = __address_mode(image, sampler, coord);

	const char * const ptr = (const char*)image.data + __coord * image.element_size;
	size_t nb_chan;
	switch(image.channel_order)
	{
	case CLK_R:			nb_chan = 1;	break;
	case CLK_A:			nb_chan = 1;	break;
	case CLK_INTENSITY:	nb_chan = 1;	break;
	case CLK_LUMINANCE:	nb_chan = 1;	break;
	case CLK_Rx:		nb_chan = 1;	break;

	case CLK_RG:		nb_chan = 2;	break;
	case CLK_RA:		nb_chan = 2;	break;
	case CLK_RGx:		nb_chan = 2;	break;

	case CLK_RGB:		nb_chan = 3;	break;
	case CLK_RGBx:		nb_chan = 3;	break;

	case CLK_RGBA:		nb_chan = 4;	break;
	case CLK_BGRA:		nb_chan = 4;	break;
	case CLK_ARGB:		nb_chan = 4;	break;
	}

	uint4 v;
	switch(image.channel_data_type)
	{
	case CLK_UNSIGNED_INT8:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const uchar*)ptr)[i];
		break;
	case CLK_UNSIGNED_INT16:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const ushort*)ptr)[i];
		break;
	case CLK_UNSIGNED_INT32:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			v.v[i] = ((const uint*)ptr)[i];
		break;
	}

	return __map_channels_for_reading(image, v);
}
inline uint4 read_imageui(const image1d_t &image, sampler_t sampler, const float coord)
{
	if (sampler & CLK_NORMALIZED_COORDS_TRUE)
		return read_imageui(image, sampler, convert_int(coord * float(image.width)));
	return read_imageui(image, sampler, convert_int(coord));
}
inline uint4 read_imageui(const image1d_t &image, const int coord)
{
	return read_imageui(image, CLK_NORMALIZED_COORDS_FALSE | CLK_FILTER_NEAREST | CLK_ADDRESS_NONE, coord);
}

inline void write_imagef(image1d_t &image, const int coord, const float4 &color)
{
	size_t nb_chan;
	const float4 v = __map_channels_for_writing(image, color, nb_chan);
	char *const ptr = (char*)image.data + coord * image.element_size;
	switch(image.channel_data_type)
	{
	case CLK_SNORM_INT8:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((char*)ptr)[i] = clamp(v.v[i] * 127.0f, -127.0f, 127.0f);
		break;
	case CLK_SNORM_INT16:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((short*)ptr)[i] = clamp(v.v[i] * 32767.0f, -32767.0f, 32767.0f);
		break;
	case CLK_UNORM_INT8:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((uchar*)ptr)[i] = clamp(v.v[i] * 255.0f, 0.0f, 255.0f);
		break;
	case CLK_UNORM_INT16:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((ushort*)ptr)[i] = clamp(v.v[i] * 65535.0f, 0.0f, 65535.0f);
		break;
	case CLK_UNORM_SHORT_565:
		*((ushort*)ptr) = (((uint)clamp(v.get<0>() * 31.0f, 0.0f, 31.0f)) << 11)
						| (((uint)clamp(v.get<1>() * 63.0f, 0.0f, 63.0f)) << 5)
						| ((uint)clamp(v.get<2>() * 31.0f, 0.0f, 31.0f));
		break;
	case CLK_UNORM_SHORT_555:
		*((ushort*)ptr) = (((uint)clamp(v.get<0>() * 31.0f, 0.0f, 31.0f)) << 10)
						| (((uint)clamp(v.get<1>() * 31.0f, 0.0f, 31.0f)) << 5)
						| ((uint)clamp(v.get<2>() * 31.0f, 0.0f, 31.0f));
		break;
	case CLK_UNORM_INT_101010:
		*((uint*)ptr) = (((uint)clamp(v.get<0>() * 1023.0f, 0.0f, 1023.0f)) << 20)
						| (((uint)clamp(v.get<1>() * 1023.0f, 0.0f, 1023.0f)) << 10)
						| ((uint)clamp(v.get<2>() * 1023.0f, 0.0f, 1023.0f));
		break;
	case CLK_HALF_FLOAT:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((half*)ptr)[i] = half::from_float(v.v[i]);
		break;
	case CLK_FLOAT:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((float*)ptr)[i] = v.v[i];
		break;
	}
}

inline void write_imagei(image1d_t &image, const int coord, const int4 &color)
{
	size_t nb_chan;
	const int4 v = __map_channels_for_writing(image, color, nb_chan);
	char *const ptr = (char*)image.data + coord * image.element_size;
	switch(image.channel_data_type)
	{
	case CLK_SIGNED_INT8:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((char*)ptr)[i] = clamp(v.v[i], -128, 127);
		break;
	case CLK_SIGNED_INT16:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((short*)ptr)[i] = clamp(v.v[i], -32768, 32767);
		break;
	case CLK_SIGNED_INT32:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((int*)ptr)[i] = v.v[i];
		break;
	}
}

inline void write_imageui(image1d_t &image, const int coord, const uint4 &color)
{
	size_t nb_chan;
	const uint4 v = __map_channels_for_writing(image, color, nb_chan);
	char *const ptr = (char*)image.data + coord * image.element_size;
	switch(image.channel_data_type)
	{
	case CLK_UNSIGNED_INT8:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((uchar*)ptr)[i] = clamp(v.v[i], 0, 255);
		break;
	case CLK_UNSIGNED_INT16:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((ushort*)ptr)[i] = clamp(v.v[i], 0, 65535);
		break;
	case CLK_SIGNED_INT32:
		for(size_t i = 0 ; i < nb_chan ; ++i)
			((uint*)ptr)[i] = v.v[i];
		break;
	}
}

inline int get_image_width(const image1d_t &image)	{	return image.width;	}
inline int get_image_channel_data_type(const image1d_t &image)	{	return image.channel_data_type;	}
inline int get_image_channel_order(const image1d_t &image)	{	return image.channel_order;	}

#endif
