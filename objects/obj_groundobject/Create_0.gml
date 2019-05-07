/// @description Insert description here
// You can write your code in this editor

var i = irandom_range(1, 3);
	switch (i) {
		case 1:
			sprite_index = spr_tree;
			maxhhealth = 10;
			break;
		case 2:
			sprite_index = spr_house;
			maxhhealth = 50;
			break;
		case 3:
			sprite_index = spr_tower;
			maxhhealth = 25;
			break;
	}
	
hhealth = maxhhealth;

global.groundobjects++;