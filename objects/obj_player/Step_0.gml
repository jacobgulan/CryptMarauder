/// @description Core Functions
// You can write your code in this editor
if ((keyboard_check(vk_up) or keyboard_check(ord("W"))) and !instance_place(x, y-moveSpeed, obj_wall)) {
	y -= moveSpeed
	
}

if ((keyboard_check(vk_down) or keyboard_check(ord("S"))) and !instance_place(x, y+moveSpeed, obj_wall)) {
	y += moveSpeed
	
}

if ((keyboard_check(vk_right) or keyboard_check(ord("D"))) and !instance_place(x+moveSpeed, y, obj_wall)) {
	x += moveSpeed
	image_xscale = 1
}

if ((keyboard_check(vk_left) or keyboard_check(ord("A"))) and !instance_place(x-moveSpeed, y, obj_wall))  {
	x -= moveSpeed
	image_xscale = -1
	
}


if keyboard_check(vk_space) and canSwing {
	// Create sword swing
	canSwing = false
	audio_play_sound(snd_sword, 5, false)
	alarm[0] = room_speed
	if (image_xscale == 1) {
		instance_create_layer(x+64, y, "Instances", obj_sword)
	} else if (image_xscale == -1) {
		instance_create_layer(x-64, y, "Instances", obj_sword)
	}
	sprite_index = spr_playerAttack
	image_speed = 0.4
	
}

// CHANGE ROOM VIEW
if (room_get_name(room) == "rm_upstairs") {
	// Bottom Middle
	if ((y > 1080) and (x > 1920) and (x < 3840)) {
		view_visible[0] = 1
		view_visible[1] = 0
		view_visible[2] = 0
		view_visible[3] = 0
	}

	// Top Middle
	if ((y < 1080) and (x > 1920) and (x < 3840)) {
		view_visible[0] = 0
		view_visible[1] = 1
		view_visible[2] = 0
		view_visible[3] = 0
	}

	// Bottom Left
	if ((y > 1080) and (x < 1920)) {
		view_visible[0] = 0
		view_visible[1] = 0
		view_visible[2] = 1
		view_visible[3] = 0
	}

	// Bottom Right
	if ((y > 1080) and (x > 3840)) {
		view_visible[0] = 0
		view_visible[1] = 0
		view_visible[2] = 0
		view_visible[3] = 1
	}
	
	// Keep player in bounds
	if (view_visible[0] == 1) {
		x = clamp(x, 128, 5632)
		y = clamp(y, 224, 2032)
	} else if (view_visible[1] == 1) {
		x = clamp(x, 2048, 3712)
		y = clamp(y, 224, 2032)
	} else if (view_visible[2] == 1) {
		x = clamp(x, 128, 5632)
		y = clamp(y, 1238, 2032)
	} else if (view_visible[3] == 1) {
		x = clamp(x, 128, 5632)
		y = clamp(y, 1238, 2032)
	}
	
	
}

// CHANGE ROOM VIEW
if (room_get_name(room) == "rm_basement") {
	// Bottom
	if (y > 2160) {
		view_visible[0] = 1
		view_visible[1] = 0
		view_visible[2] = 0
	}
	
	// Middle
	if (y > 1080 and y < 2160) {
		view_visible[0] = 0
		view_visible[1] = 1
		view_visible[2] = 0
	}
	
	// Bottom
	if (y < 1080) {
		view_visible[0] = 0
		view_visible[1] = 0
		view_visible[2] = 1
	}
	
	x = clamp(x, 128, 1792)
	y = clamp(y, 128, 3112)
}

// Write Interact Message
if (place_meeting(x, y, obj_gem0) or (place_meeting(x, y, obj_stairs) and ready) or place_meeting(x, y, obj_statue) or place_meeting(x, y, obj_riddle0)) {
	global.writeInteract = true
} else {
	global.writeInteract = false
}

