instance_destroy(obj_projectileShield)
with instance_create_layer(x, y, "lyr_projectiles", obj_projectileShield) {
	reverse = -1
	orbitalSpeed = 2
}
with instance_create_layer(x, y, "lyr_projectiles", obj_projectileShield) {
	orbitalSpeed = 2
}