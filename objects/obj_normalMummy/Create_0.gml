/// @description Initialize
// You can write your code in this editor
canAttack = false
rateOfFire = room_speed * rateOfFire
alarm[0] = rateOfFire
origin = -1
playerInRoom = false


// Set original room of enemy
// Bottom Middle
if ((y > 1080) and (x > 1920) and (x < 3840)) {
	origin = 0
}

// Top Middle
if ((y < 1080) and (x > 1920) and (x < 3840)) {
	origin = 1
}

// Bottom Left
if ((y > 1080) and (x < 1920)) {
	origin = 2
}

// Bottom Right
if ((y > 1080) and (x > 3840)) {
	origin = 3
}

if (followPath == 1) {
	path_start(pathNum, 1, path_action_restart, true)
}