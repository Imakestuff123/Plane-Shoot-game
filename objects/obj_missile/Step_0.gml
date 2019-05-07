/// @description Insert description here
// You can write your code in this editor
if (instance_exists(currentenemy)) {
	direction = point_direction(x, y, currentenemy.x, currentenemy.y);
}
image_angle = direction;
timer--;
if (timer <= 0) {
	with (targeting) {
		instance_destroy();
	}
	instance_destroy();
}