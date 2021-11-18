/// @description Avoid and attack player
// You can write your code in this editor

if room == rm_upstairs {
	
	if not view_visible[origin] {
		playerInRoom = false
		alarm[1] = room_speed * 1
	}
	
	if (origin == 0) {
		if (view_visible[0] == 1) {
			// Avoid player
			if (distance_to_object(obj_player) < aggro_range) {
				path_end()
				direction = point_direction(x, y, obj_player.x, obj_player.y) + 180
				speed = hsp
			} else {
				speed = 0
			}
			
			
			// Attack player
			if instance_exists(obj_player) and canAttack and playerInRoom {
				canAttack = false
				alarm[0] = rateOfFire
				instance_create_layer(x, y, "lyr_projectiles", obj_attackProjectile)
			}
			
		} else {
			speed = 0
		}
		x = clamp(x, 2080, 3680)
		y = clamp(y, 1238, 2032)
	}

	// Top Middle
	if (origin == 1) {
		if (view_visible[1] == 1) {
			
			// Avoid player
			if (distance_to_object(obj_player) < aggro_range) {
				path_end()
				direction = point_direction(x, y, obj_player.x, obj_player.y) + 180
				speed = hsp
			} else {
				speed = 0
			}
			
			// Attack player
			if instance_exists(obj_player) and canAttack and playerInRoom {
				canAttack = false
				alarm[0] = rateOfFire
				instance_create_layer(x, y, "lyr_projectiles", obj_attackProjectile)
			}
		} else {
			speed = 0
		}
		x = clamp(x, 2080, 3680)
		y = clamp(y, 128, 952)
	}

	// Bottom Left
	if (origin == 2) {
		if (view_visible[2] == 1) {
			
			// Avoid player
			if (distance_to_object(obj_player) < aggro_range) {
				path_end()
				direction = point_direction(x, y, obj_player.x, obj_player.y) + 180
				if (direction > 90 and direction < 270) image_xscale = 1
				else image_xscale = -1
				speed = hsp
			} else {
				speed = 0
			}
			
			// Attack player
			if instance_exists(obj_player) and canAttack and playerInRoom {
				canAttack = false
				alarm[0] = rateOfFire
				instance_create_layer(x, y, "lyr_projectiles", obj_attackProjectile)
			}
		} else {
			speed = 0
		}
	
		x = clamp(x, 160, 1760)
		y = clamp(y, 1334, 1968)
	}

	// Bottom Right
	if (origin == 3) {
		if (view_visible[3] == 1) {
			
			// Avoid player
			if (distance_to_object(obj_player) < aggro_range) {
				path_end()
				direction = point_direction(x, y, obj_player.x, obj_player.y) + 180
				if (direction > 90 and direction < 270) image_xscale = 1
				else image_xscale = -1
				speed = hsp
			} else {
				speed = 0
			}
			
			// Attack player
			if instance_exists(obj_player) and canAttack and playerInRoom {
				canAttack = false
				alarm[0] = rateOfFire
				instance_create_layer(x, y, "lyr_projectiles", obj_attackProjectile)
			}
		} else {
			speed = 0
		}
		x = clamp(x, 4000, 5600)
		y = clamp(y, 1334, 1968)
	}
	
	
}

if room == rm_basement {
	
	// Avoid player
	if (distance_to_object(obj_player) < aggro_range) {
		path_end()
		direction = point_direction(x, y, obj_player.x, obj_player.y) + 180
		speed = hsp
	} else {
		speed = 0
	}
			
	// Attack player
	if instance_exists(obj_player) and canAttack {
		canAttack = false
		alarm[0] = rateOfFire
		instance_create_layer(x, y, "lyr_projectiles", obj_attackProjectile)
	} else {
		speed = 0
	}
		
	x = clamp(x, 160, 1760)
	y = clamp(y, 1282, 2040)
}

