shader_type canvas_item;

uniform vec2 center;
uniform float force;
uniform sampler2D SCREEN_TEXTURE : hint_screen_texture, filter_linear_mipmap;

void fragment() {
	vec2 disp = normalize(SCREEN_UV - center) * force;
	COLOR = texture(SCREEN_TEXTURE, SCREEN_UV - disp);
}
