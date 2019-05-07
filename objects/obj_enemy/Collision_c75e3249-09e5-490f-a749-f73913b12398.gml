/// @description Insert description here
// You can write your code in this editor


if (spd > 5) {
	hhealth -= 3;
	spd -= 3;
	tower = instance_place(x, y, obj_groundobject);
	if (instance_exists(tower)) {
		if (tower.sprite_index == spr_tower){
			with (tower) {
				explosion = instance_create_layer(x, y, "Instances", obj_explosion);
				explosion.sprite_index = spr_missileexplosion;
				instance_destroy();
			}
		}
	}
}