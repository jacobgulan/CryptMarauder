/// @description Draw healthbar
// You can write your code in this editor
if (instance_exists(obj_player) and instance_exists(obj_rectangle)) {
	
	if (room == rm_upstairs) {
		if view_visible[0] {
			x1 = 1952
			x2 = 2208
			y1 = 1272
			y2 = 1304
		} else if view_visible[1] {
			x1 = 1952
			x2 = 2208
			y1 = 192
			y2 = 224
		} else if view_visible[2] {
			x1 = 32
			x2 = 288
			y1 = 1272
			y2 = 1304
		} else if view_visible[3] {
			x1 = 3872
			x2 = 4128
			y1 = 1272
			y2 = 1304
		}
	}
	
	if (room == rm_basement) {
		if view_visible[0] {
			x1 = 32
			x2 = 288
			y1 = 2352
			y2 = 2384
		} else if view_visible[1] {
			x1 = 32
			x2 = 288
			y1 = 1272
			y2 = 1304
		} else if view_visible[2] {
			x1 = 32
			x2 = 288
			y1 = 192
			y2 = 224
		}
	}
	
	obj_rectangle.x = x1
	obj_rectangle.y = y1 - 176
	draw_healthbar(x1+16, y1-64, x2-64, y2-80, obj_player.hp, c_black, c_red, c_lime, 0, true, true)
}

if (instance_exists(obj_anubis) and view_visible[1]) {
	draw_healthbar(720, 1096, 1200, 1128, (100 - obj_anubis.hp), c_black, c_red, c_lime, 0, true, true)
}
