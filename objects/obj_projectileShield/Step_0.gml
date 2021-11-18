/// @description Orbit
// You can write your code in this editor
radian = angle * 0.0174532925
if (instance_exists(obj_anubis)) {
	x = obj_anubis.x + (radius *  cos(radian))
	y = obj_anubis.y + (radius *  sin(radian))
} else {
	instance_destroy()
}
angle += orbitalSpeed * reverse