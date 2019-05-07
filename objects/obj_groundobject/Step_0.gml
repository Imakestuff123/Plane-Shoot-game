/// @description Insert description here
// You can write your code in this editor

if (hhealth <= maxhhealth / 2) {
	switch (sprite_index) {
		case spr_house:
			sprite_index = spr_house2;
			break;
		case spr_tree:
			sprite_index = spr_tree2;
			break;
		case spr_tower:
			sprite_index = spr_tower2;
			break;
	}
}

if (hhealth <= 0) {
	instance_destroy();
}