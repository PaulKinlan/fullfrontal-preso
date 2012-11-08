/** spec: css */

precision mediump float;

varying float shadow;

void main() {

	css_ColorMatrix = mat4(
		shadow, 0.0, 0.0, 0.0,
		0.0, shadow, 0.0, 0.0,
		0.0, 0.0, shadow, 0.0,
		0.0, 0.0, 0.0, 1.0
	);
}
