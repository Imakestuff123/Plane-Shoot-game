/// @description Insert description here
// You can write your code in this editor
item = instance_place(x, y, obj_item);
if (instance_exists(item)) {
	if (item.type == 1) {
		energy += 300;
		weaponcharge += 200;	
	}
	if (item.type == 2) {
		hhealth += maxhhealth / 2;
	}
}

with (item) {
	instance_destroy();
}