/// @description Point projectile towards player
// You can write your code in this editor
if instance_exists(obj_player) {
	direction = point_direction(x, y, obj_player.x, obj_player.y)
	speed = projSpeed
}
image_speed = 0.5

// Shader
upixelH = shader_get_uniform(shd_outline, "pixelH")
upixelW = shader_get_uniform(shd_outline, "pixelW")
textW = texture_get_texel_width(sprite_get_texture(sprite_index, 0))
textH = texture_get_texel_height(sprite_get_texture(sprite_index, 0))