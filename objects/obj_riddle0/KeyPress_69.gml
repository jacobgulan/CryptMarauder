/// @description Pick up riddle piece
// You can write your code in this editor
if place_meeting(x, y, obj_player) {
	global.writeInteract = false
	// Ensure item isn't picked up multiple times
	if not obj_dialog.custom {
		visible = 0
		audio_play_sound(snd_pickup, 1, false)
		if (riddleType == 0) {
			obj_player.riddle0 = true
			scr_customPrompt("Coffin acquired")
			alarm[0] = room_speed * 1
		}
		if (riddleType == 1) {
			obj_player.riddle1 = true
			scr_customPrompt("Map acquired")
			alarm[0] = room_speed * 1
		}
		if (riddleType == 2) {
			obj_player.riddle2 = true
			scr_customPrompt("Candle acquired")
			alarm[0] = room_speed * 1
		}
	}
}