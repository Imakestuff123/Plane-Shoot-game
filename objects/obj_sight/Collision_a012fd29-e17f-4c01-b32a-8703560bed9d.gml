/// @description Insert description here
// You can write your code in this editor
if (reloadtimer <= 0) {
	with (enemy) {
		
		bullet = instance_create_layer(x, y, "Instances", obj_enemybullet);
		
		bullet.direction = point_direction(x, y, obj_player.x, obj_player.y);
		if (image_blend == c_red) {
			bullet.image_angle = direction + irandom_range(-25, 25);
		} 
		if (image_blend == c_navy) {
			bullet.image_angle = direction + irandom_range(-15, 15);
		}
		bullet.speed = 16;
		bullet.team = 2;
		other.reloadtimer = 5;
	}
}