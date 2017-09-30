#ifdef GL_ES
precision mediump float;
#endif

uniform mat4 u_modelMatrix;
uniform mat4 u_viewMatrix;
uniform mat4 u_projectionMatrix;
uniform mat4 u_modelViewProjectionMatrix;
uniform mat3 u_normalMatrix;

uniform float u_time;
uniform vec2 u_mouse;
uniform vec2 u_resolution;

attribute vec4 a_position;
varying vec4 v_position;
attribute vec4 a_color;
varying vec4 v_color;
attribute vec3 a_normal;
varying vec3 v_normal;
attribute vec2 a_texcoord;
varying vec2 v_texcoord;

void main(void)
{
    v_position = a_position;
    v_color = a_color;
    v_normal = a_normal;
    v_texcoord = a_texcoord;
    gl_Position = u_modelViewProjectionMatrix * v_position;
}
