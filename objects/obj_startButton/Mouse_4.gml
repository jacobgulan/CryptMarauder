/// @description Change room
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id) {
	image_index = 1
	alarm[0] = room_speed/4
	alarm[1] = room_speed/8
}