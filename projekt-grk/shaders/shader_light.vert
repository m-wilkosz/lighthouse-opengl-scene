#version 430 core

layout(location = 0) in vec3 vertexPosition;
layout(location = 1) in vec2 vertexTexCoord;
layout(location = 2) in vec3 vertexNormal;

uniform mat4 transformation;

out vec3 vPos;

void main() {

	gl_Position = transformation * vec4(vertexPosition, 1.0f);
	vPos = vertexPosition;
}