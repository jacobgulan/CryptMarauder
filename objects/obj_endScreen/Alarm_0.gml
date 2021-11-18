/// @description Stop egyptian music
// You can write your code in this 
audio_stop_sound(snd_egyptianMusic)
if (room == rm_gameOver) {
	audio_play_sound(snd_notEpicEnding, 0, false)
}

if (room == rm_victory) {
	audio_play_sound(snd_epicEnding, 0, false)
}