/*
	Copyright 2011-2021 Daniel S. Buckstein

	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at

		http://www.apache.org/licenses/LICENSE-2.0

	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
*/

/*
	animal3D SDK: Minimal 3D Animation Framework
	By Daniel S. Buckstein
	
	postBlend_fs4x.glsl
	Blending layers, composition.
*/

#version 450

// ****TO-DO:
//	-> declare texture coordinate varying and set of input textures
//	-> implement some sort of blending algorithm that highlights bright areas
//		(hint: research some Photoshop blend modes)
layout (location = 0) out vec4 rtFragColor;

layout (location = 0) uniform sampler2D hdr_image;
layout (location = 1) uniform sampler2D bloom_image;

in vec4 vTexcoord_atlas;

uniform vec4 uColor0;

uniform sampler2D uImage00;

void main()
{
	// DUMMY OUTPUT: all fragments are OPAQUE PURPLE
	rtFragColor = vec4(0.5, 0.0, 1.0, 1.0);

	/*
	vec4 c = vec4(0.0);

	c+= texelFetch(hdr_image, ivec2(vTexcoord_atlas.xy), 0) * 1.0;
	c+= texelFetch(bloom_image, ivec2(vTexcoord_atlas.xy), 0) * 1.0;

	c.rgb = vec3(1.0) - exp(-c.rgb * 0.9);
	rtFragColor = c;
	*/
}
