/// @description Cheat codes
// You can write your code in this editor

// Extra life
if keyboard_check_pressed(ord("Q")) {
	if global.life < 3 {
		global.life += 1
	}
}

// Heal
if keyboard_check_pressed(ord("F")) {
	if (instance_exists(obj_player)) obj_player.hp = 100
}

// Go back to spawn
if keyboard_check_pressed(ord("R")) {
	room_goto(rm_upstairs)
	x = 2880
	y = 1890
}