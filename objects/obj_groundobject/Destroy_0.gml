/// @description Insert description here
// You can write your code in this editor

explosion = instance_create_layer(x, y, "Instances", obj_explosion);
explosion.sprite_index = spr_missileexplosion;

var i = irandom_range(0, 7);


if ((sprite_index != spr_tower) && (sprite_index != spr_tower2)) {
switch (i) {
	case 0:
		item = instance_create_layer(x, y, "Instances", obj_item);
		item.sprite_index = spr_box;
		item.type = 1;
	case 1: 
		item = instance_create_layer(x, y, "Instances", obj_item);
		item.sprite_index = spr_health;
		item.type = 2;
}
}
if (sprite_index == spr_tower2) {
	item = instance_create_layer(x, y, "Instances", obj_item);
		item.sprite_index = spr_box;
		item.type = 1;
}

global.groundobjects--;