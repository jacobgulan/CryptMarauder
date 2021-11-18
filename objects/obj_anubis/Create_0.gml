/// @description Initialize
// You can write your code in this editor

// NOTE: For the timeline's sake this is a reverse healthbar, starts at 0 dies at 100
hp = 0
aggro_range = 128
canMelee = true
canRanged = false
pathX = 0
pathY = 0
pathPos = 0
pause = false
resume = false
onPath = true
changeForm = false
alarm[1] = room_speed * 1
x = room_width/2
y = 1408
image_speed = 0
path_start(pth_anubis, 2, path_action_restart, true)