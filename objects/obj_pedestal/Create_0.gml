/// @description Initialize
// You can write your code in this editor
xDiff = 500
yDiff = 500
holding = -1

// Determine start position
if (riddle == 0) {
	x = room_width/4
} else if (riddle == 1) {
	x = room_width/2
} else if (riddle == 2) {
	x = room_width/4 * 3
}