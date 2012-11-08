/* spec: css */
precision mediump float;

uniform mat4 u_projectionMatrix;
uniform mat4 transform;
uniform float time;

attribute vec4 a_position;
attribute vec2 a_texCoord;

varying float shadow;

const float PI = 3.141592653589793;

void main() {

	vec4 position = a_position;
	float dist = a_position.x;
	float localTime = (
		min(max(time - a_texCoord.y, 0.0), 1.0)
	);
	float angle = localTime * PI;

	shadow = 1.0 - (sin(angle) * 0.4);

	position.x = cos(angle) * dist;
	position.z = sin(angle) * dist * 600.0;

	gl_Position = u_projectionMatrix * transform * position;
}
