/// @description Change rooms
// You can write your code in this editor
if place_meeting(x, y, obj_stairs) {
	if ready {	
		nextRoom = obj_stairs.gotoRoom
		room_goto(nextRoom)
		if (nextRoom == rm_basement) {
			x = 960
			y = 3000
		} else if (nextRoom == rm_upstairs) {
			x = 2880
			y = 1620
		}
	}
}