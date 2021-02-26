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
	
	drawPhong_shadow_fs4x.glsl
	Output Phong shading with shadow mapping.
*/

#version 450

// ****TO-DO:
// 1) Phong shading
//	-> identical to outcome of last project
// 2) shadow mapping
//	-> declare shadow map texture
//	-> declare shadow coordinate varying
//	-> perform manual "perspective divide" on shadow coordinate
//	-> perform "shadow test" (explained in class)

layout (location = 0) out vec4 rtFragColor;

uniform int uCount;

in vec4 vPosition;
in vec4 vNormal;
in vec2 vTexcoord;

uniform vec4 uLightPos; //ubo_light is what i think should be here, but its just yelling at me and idk why!!!!!!!!!!!!!
uniform vec4 uColor0;


uniform float uAttenuation;
uniform vec4 uLightColor;

uniform sampler2D uImage00;

void main()
{
    float ambientStrength = 0.1;
    vec4 ambient = ambientStrength * uLightColor;
    vec4 result = ambient * uColor0;
    rtFragColor = vec4(result);
	// DUMMY OUTPUT: all fragments are OPAQUE MAGENTA
	//rtFragColor = vec4(1.0, 0.0, 1.0, 1.0);
//	vec4 norm = normalize(vNormal);
//	vec4 lightDir = normalize(uLightPos - vec4(vTexcoord,0.0,0.0));  
//	float diff = max(dot(norm, lightDir), 0.0);
//	vec4 diffuse = diff * uLightColor;
//	result = (ambient + diffuse) * uColor0;
//	rtFragColor = result;
	/*
	vec4 N = normalize(vNormal);
	vec4 L = normalize(uLightPos-vPosition);
	float kd = dot(N, L);

	vec4 shadingModel = kd * uAttenuation * uLightColor * uColor0;

	rtFragColor = shadingModel;
	*/
}
