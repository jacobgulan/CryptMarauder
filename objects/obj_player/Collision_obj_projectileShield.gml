/// @description Damage self
// You can write your code in this editor
if other.activated {
	scr_damagePlayer(25)
	image_index = 1
	image_speed = 0.1
	instance_destroy(other)
}