#ifdef GL_ES
precision mediump float;
#endif

uniform sampler2D u_tex0;
uniform vec2 u_tex0Resolution;

varying vec4 v_position;
varying vec4 v_color;
varying vec3 v_normal;
varying vec2 v_texcoord;

void main (void) {

    vec3 color = texture2D(u_tex0, v_texcoord).rgb;
    float gray = (color.r + color.b + color.g) / 3.0;
    vec3 grayscale = vec3(gray);

	gl_FragColor = vec4(grayscale, 1.0);
}
