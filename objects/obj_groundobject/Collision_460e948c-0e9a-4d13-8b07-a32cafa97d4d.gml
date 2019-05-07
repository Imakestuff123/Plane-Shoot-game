/// @description Insert description here
// You can write your code in this editor

hhealth--;
bullet = instance_place(x, y, obj_enemybullet);
if (instance_exists(bullet)) {
	with (bullet) {
		instance_destroy();
	}
}
	