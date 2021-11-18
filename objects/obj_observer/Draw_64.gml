/// @description Display lives
// You can write your code in this editor

// Restart game if out of lives
if (global.life < 0) {
	global.gameOver = true
}

// Display game over if true 
if (global.gameOver) {
	room_goto(rm_gameOver)
}

// Draw lives
for (var i = 0; i < global.life; i++) {
	draw_set_color(c_white)
	draw_set_halign(fa_left)
	draw_set_font(fnt_big)
	draw_sprite(spr_life, 0, (64 + 64 * i), 64)	
}

