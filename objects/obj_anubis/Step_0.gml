/// @description Advanced Behavior
// You can write your code in this editor
if (instance_exists(obj_player)) {
	if onPath {
		pathPos = path_position
		pathX = path_get_x(pth_anubis, pathPos)
		pathY = path_get_y(pth_anubis, pathPos)
	}
	
	// Ensure player doesn't get shot upon entering
	// Place Anubis back on path
	if view_visible[0] {
		canRanged = false
		alarm[1] = room_speed * 1
		
		resume = false
		path_start(pathPos, 2, path_action_restart, true)
		onPath = true
				
		// Bug fix for Anubis resetting path
		pause = true
		alarm[2] = room_speed * 0.3
	}
	xDiff = abs(obj_player.x - x)
	yDiff = abs(obj_player.y - y)
	if (distance_to_object(obj_player) < aggro_range and view_visible[1]) {
		path_end()
		onPath = false
		resume = true
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		speed = 3
		if (canMelee and (abs(obj_player.x - x) < 96) and (abs(obj_player.y - y) < 128)) {
			if changeForm {
				sprite_index = spr_anubisMeleeRed
				image_speed = 0.3
			} else {
				sprite_index = spr_anubisMelee
				image_speed = 0.3
			}
			
			canMelee = false
			alarm[0] = room_speed * 2
			instance_create_layer(x, y, "Instances", obj_skeleSword)
		}
	} else if (xDiff < 384 and yDiff < 320 and view_visible[1]) {
		path_end()
		onPath = false
		resume = true
		direction = point_direction(x, y, obj_player.x, obj_player.y) + 180
		speed = 1
		
		// Shoot
		if canRanged and not pause {
			canRanged = false
			alarm[1] = room_speed * 1.5
			var inst = instance_create_layer(x, y, "lyr_projectiles", obj_attackProjectile)
			inst.projSpeed = 12
			
			if changeForm {
				sprite_index = spr_anubisRaiseRed
				image_speed = 0.1
			} else {
				sprite_index = spr_anubisRaise
				image_index = 1
				image_speed = 0.1	
			}
		}
	} else {
		// Resume path
		if resume {
			move_towards_point(pathX, pathY, 2)
			xDisposition = abs(pathX - x)
			yDispostion = abs(pathY - y)
			if (xDisposition < 1 and yDispostion < 1 and not pause) {
				resume = false
				path_start(pathPos, 2, path_action_restart, true)
				onPath = true
				
				// Bug fix for Anubis resetting path
				pause = true
				alarm[2] = room_speed * 0.3
			}
		}
		
		if canRanged and not pause {
			canRanged = false
			alarm[1] = room_speed * 1.5
			var inst = instance_create_layer(x, y, "lyr_projectiles", obj_attackProjectile)
			inst.projSpeed = 12
			
			if changeForm {
				sprite_index = spr_anubisRaiseRed
				image_speed = 0.1
			} else {
				sprite_index = spr_anubisRaise
				image_index = 1
				image_speed = 0.1	
			}
			
		}
	}
	
}

if (hp >= 100) {
	instance_destroy()
}

if (hp >= 70 and not changeForm) {
	changeForm = true
	sprite_index = spr_anubisEyes
	image_speed = 0.2
}


x = clamp(x, 160, 1760)
y = clamp(y, 1282, 1980)