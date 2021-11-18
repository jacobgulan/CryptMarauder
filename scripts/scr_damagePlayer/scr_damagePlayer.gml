// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_damagePlayer(damage){
	obj_player.hp -= damage
	if (obj_player.hp <= 0) {
		global.life -= 1
		obj_player.hp = 100
		room_goto(rm_upstairs)
		obj_player.x = 2880
		obj_player.y = 1890
		audio_play_sound(snd_death, 7, false)
	}
}