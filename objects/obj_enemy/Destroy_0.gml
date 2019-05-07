/// @description Insert description here
// You can write your code in this editor

with (obj_management) {
	sscore++;
}

var i = irandom_range(0, 10);


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

global.enemynumber--;

obj_player.weaponcharge += 50;
instance_create_layer(x, y, "Instances", obj_explosion);
