/// @description Determine if riddle needs to be written
// You can write your code in this editor

if instance_exists(obj_player) {
	xDiff = abs(x - obj_player.x)
	yDiff = abs(y - obj_player.y)
}

// If player is in range of pedestal write the riddle
if (xDiff < 192 and yDiff < 192 and (obj_observer.correct != 3)) {
	if (riddle == 0) obj_dialog.riddle0 = true
	if (riddle == 1) obj_dialog.riddle1 = true
	if (riddle == 2) obj_dialog.riddle2 = true
	
	// Place and pick up item off of pedestal
	if (keyboard_check(ord("E")) and not obj_dialog.custom) {
		if (holding < 0) {
			scr_customPrompt("I should try using the items in my inventory")
			alarm[0] = room_speed * 1.25
		} else {
			// Pick up from pedestal
			if (holding == 0) {
				if (riddle == holding) {
					obj_observer.correct -= 1
				}
				holding = -1
				obj_player.riddle0 = true
				instance_destroy(obj_drawRiddle0)
				scr_customPrompt("Coffin acquired")
				alarm[0] = room_speed
				
			} else if (holding == 1) {
				if (riddle == holding) {
					obj_observer.correct -= 1
				}
				holding = -1
				obj_player.riddle1 = true
				instance_destroy(obj_drawRiddle1)
				scr_customPrompt("Map acquired")
				alarm[0] = room_speed
				
			} else if (holding == 2) {
				if (riddle == holding) {
					obj_observer.correct -= 1
				}
				holding = -1
				obj_player.riddle2 = true
				instance_destroy(obj_drawRiddle2)
				scr_customPrompt("Candle acquired")
				alarm[0] = room_speed
				
			}
		}
	} else if (keyboard_check(ord("Z")) and not obj_dialog.custom and obj_player.riddle0 and holding == -1) {
		scr_customPrompt("Coffin placed")
		instance_create_layer(x, 2464, "lyr_riddles", obj_drawRiddle0)
		alarm[0] = room_speed
		holding = 0
		obj_player.riddle0 = false
		if (riddle == holding) {
			obj_observer.correct += 1
		}
	}  else if (keyboard_check(ord("X")) and not obj_dialog.custom and obj_player.riddle1 and holding == -1) {
		scr_customPrompt("Map placed")
		instance_create_layer(x, 2464, "lyr_riddles", obj_drawRiddle1)
		alarm[0] = room_speed
		holding = 1
		obj_player.riddle1 = false
		if (riddle == holding) {
			obj_observer.correct += 1
		}
	} else if (keyboard_check(ord("C")) and not obj_dialog.custom and obj_player.riddle2 and holding == -1) {
		scr_customPrompt("Candle placed")
		instance_create_layer(x, 2464, "lyr_riddles", obj_drawRiddle2)
		alarm[0] = room_speed
		holding = 2
		obj_player.riddle2 = false
		if (riddle == holding) {
			obj_observer.correct += 1
		}
	}
		
} else {
	if (riddle == 0) obj_dialog.riddle0 = false
	if (riddle == 1) obj_dialog.riddle1 = false
	if (riddle == 2) obj_dialog.riddle2 = false
}

// Remove the door to the boss fight
if (instance_exists(obj_door) and obj_observer.correct == 3) {
	instance_destroy(obj_door)
}