/// @description End game
// You can write your code in this editor
if instance_exists(obj_player) {
	xDiff = abs(x - obj_player.x)
	yDiff = abs(y - obj_player.y)
}

if (xDiff < 256 and yDiff < 256) {
	obj_dialog.write = true	
	image_index = 1
	if keyboard_check(ord("E")) {
		obj_dialog.write = false
		room_goto(rm_victory)
	}
}

if view_visible[2] and playSound {
	playSound = false
	audio_play_sound(snd_treasure, 1, false)
}