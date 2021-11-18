/// @description Set position
// You can write your code in this editor
if (room == rm_upstairs) {
	x = 2880
	y = 1620
} else {
	audio_play_sound(snd_discovery, 0, false)
	x = 960
	y = 3000
}