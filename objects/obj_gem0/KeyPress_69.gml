/// @description Pick up gem
// You can write your code in this editor
if place_meeting(x, y, obj_player) {
	global.writeInteract = false
	if not obj_dialog.custom {
		visible = 0
		audio_play_sound(snd_pickup, 1, false)
		if (gemType == 0) obj_player.gem0 = true
		if (gemType == 1) obj_player.gem1 = true
		if (gemType == 2) obj_player.gem2 = true
		scr_customPrompt("Gem acquired")
		alarm[0] = room_speed * 1
	}
}