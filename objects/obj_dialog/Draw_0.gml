/// @description Draw dialog
// You can write your code in this editor
draw_set_color(c_purple)
draw_set_halign(fa_center)
draw_set_font(fnt_default)


// Draw interact message
if instance_exists(obj_player) and (global.writeInteract or write or custom) and instance_exists(obj_dialogBox) {
	obj_dialogBox.visible = 1
	
	if (room == rm_upstairs) {
		if (view_visible[0]) {
			if (custom) draw_text(2880, 2096-32, customPrompt)
			else if (global.writeInteract or write) draw_text(2880, 2096-32, "Press [E] to interact")
			obj_dialogBox.x = 2880
			obj_dialogBox.y = 2096+16-32
		}
		if (view_visible[1]) {
			if (custom) draw_text(2880, 1016-32, customPrompt)
			else if (global.writeInteract or write) draw_text(2880, 1016-32, "Press [E] to interact")
			obj_dialogBox.x = 2880
			obj_dialogBox.y = 1016+16-32
		}
		if (view_visible[2]) {
			if (custom) draw_text(960, 2096-32, customPrompt)
			else if (global.writeInteract or write) draw_text(960, 2096-32, "Press [E] to interact")
			obj_dialogBox.x = 960
			obj_dialogBox.y = 2096+16-32
		}
		if (view_visible[3]) {
			if (custom) draw_text(4800, 2096-32, customPrompt)
			else if (global.writeInteract or write) draw_text(4800, 2096, "Press [E] to interact")
			obj_dialogBox.x = 4800
			obj_dialogBox.y = 2096+16-32
		}
	}
	
	if (room == rm_basement) {
		if (view_visible[0]) {
			if (custom) draw_text(960, 3176-32, customPrompt)
			else if (global.writeInteract or write) draw_text(960, 3176-32, "Press [E] to interact")
			obj_dialogBox.x = 960
			obj_dialogBox.y = 3176+16-32
		}
		if (view_visible[1]) {
			if (custom) draw_text(960, 2096-32, customPrompt)
			else if (global.writeInteract or write) draw_text(960, 2096-32, "Press [E] to interact")
			obj_dialogBox.x = 960
			obj_dialogBox.y = 2096+16-32
		}
		if (view_visible[2]) {
			if (custom) draw_text(960, 1016-32, customPrompt)
			else if (global.writeInteract or write) draw_text(960, 1016-32, "Press [E] to interact")
			obj_dialogBox.x = 960
			obj_dialogBox.y = 1016+16-32
		}
	}
	
} else {
	
	// Write pedestal's riddles
	if instance_exists(obj_player) and instance_exists(obj_dialogBox) {
		if (riddle0) {
			draw_text(960, 3176-32, "The person who makes it does not need it, the person who buys it does not use it for himself, and the person who uses it cannot see or feel it.")
			obj_dialogBox.x = 960
			obj_dialogBox.y = 3176+16-32
			obj_dialogBox.visible = 1
		} else if (riddle1) {
			draw_text(960, 3176-32, "I have rivers without water, forests without trees, mountains without rocks, towns without houses.")
			obj_dialogBox.x = 960
			obj_dialogBox.y = 3176+16-32
			obj_dialogBox.visible = 1
		} else if (riddle2) {
			draw_text(960, 3176-32, "I am tall when I am young and I am short when I am old.")
			obj_dialogBox.x = 960
			obj_dialogBox.y = 3176+16-32
			obj_dialogBox.visible = 1
		} else {
			obj_dialogBox.visible = 0
		} 
	}
}



// Draw inventory
if instance_exists(obj_player)  and instance_exists(obj_dialogBox) {
	draw_set_halign(fa_left)
	draw_set_font(fnt_inventory)
	
	if (obj_player.riddle0 and obj_player.riddle1 and obj_player.riddle2) riddlesObtained = 3
	else if (obj_player.riddle0 and obj_player.riddle1 and not obj_player.riddle2) riddlesObtained = 2
	else if (obj_player.riddle0 and not obj_player.riddle1 and obj_player.riddle2) riddlesObtained = 2
	else if (not obj_player.riddle0 and obj_player.riddle1 and obj_player.riddle2) riddlesObtained = 2
	else if (obj_player.riddle0 and not obj_player.riddle1 and not obj_player.riddle2) riddlesObtained = 1
	else if (not obj_player.riddle0 and obj_player.riddle1 and not obj_player.riddle2) riddlesObtained = 1
	else if (not obj_player.riddle0 and not obj_player.riddle1 and obj_player.riddle2) riddlesObtained = 1
	else riddlesObtained = 0
	
	if (obj_player.gem0 and obj_player.gem1 and obj_player.gem2) gemsObtained = 3
	else if (obj_player.gem0 and obj_player.gem1 and not obj_player.gem2) gemsObtained = 2
	else if (obj_player.gem0 and not obj_player.gem1 and obj_player.gem2) gemsObtained = 2
	else if (not obj_player.gem0 and obj_player.gem1 and obj_player.gem2) gemsObtained = 2
	else if (obj_player.gem0 and not obj_player.gem1 and not obj_player.gem2) gemsObtained = 1
	else if (not obj_player.gem0 and obj_player.gem1 and not obj_player.gem2) gemsObtained = 1
	else if (not obj_player.gem0 and not obj_player.gem1 and obj_player.gem2) gemsObtained = 1
	else gemsObtained = 0
	
	
	if (room == rm_upstairs) {
		if view_visible[0] {
			x1 = 3648
			y1 = 1112
		} else if view_visible[1] {
			x1 = 3648
			y1 = 32
		} else if view_visible[2] {
			x1 = 1728
			y1 = 1112
		} else if view_visible[3] {
			x1 = 5568
			y1 = 1112
		}
	}
	
	if (room == rm_basement) {
		if view_visible[0] {
			x1 = 1728
			y1 = 2192
		} else if view_visible[1] {
			x1 = 1728
			y1 = 1112
		} else if view_visible[2] {
			x1 = 1728
			y1 = 32
		}
	}
	
	if (obj_player.riddle0) {
		offset = 0
		draw_text(x1, y1 + (offset * 32), "1x Coffin (Z)")
	}
	
	if (obj_player.riddle1) {
		if (riddlesObtained == 1) offset = 0
		
		if (riddlesObtained == 2) {
			if (obj_player.riddle0) offset = 1
			else if (obj_player.riddle2) offset = 0
		}
		if (riddlesObtained == 3) offset = 1
		draw_text(x1, y1 + (offset * 32), "1x Map (X)")	
	}

	if (obj_player.riddle2) {
		if (riddlesObtained == 1) offset = 0
		if (riddlesObtained == 2) offset = 1
		if (riddlesObtained == 3) offset = 2
		draw_text(x1, y1 + (offset * 32), "1x Candle (C)")
	}
	
	if (gemsObtained > 0) {
		if (riddlesObtained == 0) offset = 0
		if (riddlesObtained == 1) offset = 1
		if (riddlesObtained == 2) offset = 2
		if (riddlesObtained == 3) offset = 3
		draw_text(x1, y1 + (offset * 32), string(gemsObtained) + "x Gems")
	}
	
	if (gemsObtained > 0 or riddlesObtained > 0) {
		obj_inventory.x = x1 - 8
		obj_inventory.y = y1 - 8
		obj_inventory.visible = 1
	} else {
		obj_inventory.visible = 0
	}
}