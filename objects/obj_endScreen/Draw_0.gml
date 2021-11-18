/// @description Print end game message
// You can write your code in this editor
draw_set_font(fnt_big)
draw_set_halign(fa_center)
draw_set_color(c_purple)
if (room == rm_victory) {
	draw_text(room_width/2, room_height/3, "Victory!")
} else if (room == rm_gameOver) {
	draw_text(room_width/2, room_height/3, "Game Over")
}