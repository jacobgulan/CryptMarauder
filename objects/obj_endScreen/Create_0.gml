/// @description Destroy persistent objects
// You can write your code in this editor
instance_destroy(obj_dialog)
instance_destroy(obj_observer)
instance_destroy(obj_player)
audio_sound_gain(snd_egyptianMusic, 0, 500)
alarm[0] = room_speed * 0.5