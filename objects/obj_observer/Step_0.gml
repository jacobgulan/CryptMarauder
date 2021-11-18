/// @description Add gems to side rooms when cleared and start Anubis fight
// You can write your code in this editor
if (rightRoom == 2 and not rStop) {
	instance_create_layer(4768, 1665, "lyr_gems", obj_gem0)
	rStop = true
}

if (leftRoom == 2 and not lStop) {
	instance_create_layer(860, 1665, "lyr_gems", obj_gem2)
	lStop = true
}

if (instance_exists(obj_anubis) and view_visible[1]) {
	timeline_position = obj_anubis.hp
	
}

// Fade in music and fade out old music
if (instance_exists(obj_anubis) and view_visible[1] and playMusic) {
	playMusic = false
	audio_sound_gain(snd_ominousBackground, 0, 750)
	audio_play_sound(snd_egyptianMusic, 0, true)
	audio_sound_gain(snd_egyptianMusic, 0, 0)
	audio_sound_gain(snd_egyptianMusic, 0.3, 500)
	alarm[0] = room_speed * 0.75
	
}
