/// @description Basic behavior
// You can write your code in this editor
if instance_exists(obj_player) {
	if (distance_to_object(obj_player) < aggro) {
		path_end()
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		
		if (direction > 90 and direction < 270) image_xscale = -1
		else image_xscale = 1
		
		speed = hsp
		if ((abs(obj_player.x - x) < 96) and (abs(obj_player.y - y) < 128) and canSwing)  {
			canSwing = false
			alarm[0] = room_speed * 2
			instance_create_layer(x, y, "Instances", obj_skeleSword)
			sprite_index = spr_skeletonAttack
			image_speed = 0.3
		}
	} else {
		speed = 0
	}
}

if (origin == 0) {
	x = clamp(x, 2080, 3680)
	y = clamp(y, 1240, 2000)
}

// Top Middle
if (origin == 1) {
	x = clamp(x, 2080, 3680)
	y = clamp(y, 224, 952)
}

// Bottom Left
if (origin == 2) {
	x = clamp(x, 160, 1760)
	y = clamp(y, 1240, 2000)
}

// Bottom Right
if (origin == 3) {
	x = clamp(x, 4000, 5600)
	y = clamp(y, 1240, 2000)
}

