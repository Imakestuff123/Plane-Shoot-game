/// @description Insert description here
// You can write your code in this editor
if (instance_exists(obj_player)){
	x = obj_player.x;
	y = obj_player.y;
} else {
	instance_destroy();
}
timer--;
if (timer <= 0) {
	instance_destroy();
}