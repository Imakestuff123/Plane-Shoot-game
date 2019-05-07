/// @description Insert description here
// You can write your code in this editor
if (room == room0) {
global.groundobjects = 0;
global.enemynumber = 0;
global.gametime = 0;
sscore = 0;

repeat(55) {
	instance_create_layer(irandom_range(150, 1930), irandom_range(150, 1400), "groundstuff", obj_groundobject);
}

repeat(20) {
	instance_create_layer(irandom_range(150, 1930), irandom_range(150, 1400), "Instances", obj_enemy);
}

difficulty = 1;
global.gametime = 0;
}