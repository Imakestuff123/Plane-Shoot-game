/// @description Insert description here
// You can write your code in this editor



timer = 0;

spd = 5;
sight = instance_create_layer(x, y, "sight", obj_sight);
sight.enemy = id;
hhealth = 10;

global.enemynumber++;
if (global.gametime > room_speed * 20) {
	var i = irandom_range(0, 1);
} else { 
	var i = 0;
}
if (i == 0) {
	image_blend = c_red;
}
if (i == 1) {
	image_blend = c_navy;
	spd = 8;
}
	