/// @description Insert description here
// You can write your code in this editor
if (obj_player.spd >= 7) {
with (obj_player) {
	hhealth -= 10;
	spd -= 3;
		}
	instance_destroy();
}