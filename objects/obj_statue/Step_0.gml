/// @description Collect gems
// You can write your code in this editor
if instance_exists(obj_player) {
	xDiff = abs(x - obj_player.x)
	yDiff = abs(y - obj_player.y)
}

if (xDiff < 256 and yDiff < 256) {
	if (firstIteration) obj_dialog.write = true	
	if keyboard_check(ord("E")) {
		// Take gem from player and place in statue
		if (obj_player.gem0) and ready {
			obj_player.gem0 = false
			gem0 = true
			ready = false
			alarm[0] = room_speed * 0.5
			scr_customPrompt("Gem inserted")
			alarm[1] = room_speed * 0.5
		} else if (obj_player.gem1) and ready {
			obj_player.gem1 = false
			gem1 = true
			ready = false
			alarm[0] = room_speed * 0.5
			scr_customPrompt("Gem inserted")
			alarm[1] = room_speed * 0.5
		} else if (obj_player.gem2) and ready {
			obj_player.gem2 = false
			gem2 = true
			ready = false
			alarm[0] = room_speed * 0.5
			scr_customPrompt("Gem inserted")
			alarm[1] = room_speed * 0.5
		} else {
			if not obj_dialog.custom and firstIteration {
				scr_customPrompt("It's a statue. It appears there are small indentations in the statue that can hold precious stones.")
				alarm[1] = room_speed * 2
			}
		}
	}
} else {
	obj_dialog.write = false
}

// Shift combination based on colors
if (gem0 and gem1 and gem2) {
	if firstIteration {
		firstIteration = false
		finalState = true
		instance_create_layer(x, y, "lyr_environment", obj_stairs)
	}
	image_index = 1
} else if (gem0 and gem1) {
	image_index = 5
} else if (gem1 and gem2) {
	image_index = 3
} else if (gem0 and gem2) {
	image_index = 6
} else if gem0 {
	image_index = 4
} else if gem1 {
	image_index = 0
} else if gem2 {
	image_index = 2
}

if finalState {
	if playMusic {
		playMusic = false
		audio_play_sound(snd_statue, 1, false)
	}
	x += 1
	x = clamp(x, 2880, 3136)
	obj_player.visible = false
	if (x == 3136) {
		finalState = false
		obj_player.ready = true
		obj_player.x = 2880
		obj_player.y = 1620
		obj_player.visible = true
	}
}