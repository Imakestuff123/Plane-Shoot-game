/// @description Insert description here
// You can write your code in this editor
//resets inputs every step
if (hhealth > 20) hhealth = 20;

key_right = 0;
key_left = 0;
key_up = 0;
key_shoot = 0;
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
key_shoot = keyboard_check(ord("J"));
key_flip = keyboard_check_pressed(vk_space);

key_special1 = keyboard_check_pressed(ord("K"));
key_special2 = keyboard_check_pressed(ord("L"));
key_special3 = keyboard_check_pressed(vk_lshift);

/*
if (key_up) {
	spdtimer--;
	if (spdtimer <= 0) {
		if (spd + 1 <= maxspd) {
			spd++;
		}
		spdtimer = 30;
	}
}
if (key_down) {
	spdtimer--;
	if (spdtimer <= 0) {
		if (spd - 1 > 0) {
			spd--;
		}
		spdtimer = 30;
	}
}
*/
//flips it
if (key_flip) {
	direction += 180;
	energy -= 100;
}
//increases speed
if (key_up) {
	spdtimer--;
	if (spdtimer <= 0) {
		if (spd + 1 <= maxspd){
			spd++;
		}
		spdtimer = 30;
	}
}
//decreases speed
if (key_down) {
	spdtimer--;
	if (spdtimer <= 0) {
		if (spd - 1 > 0) {
			spd--;
		}
		spdtimer = 30;
	}
}

speed = spd;
turn = ((key_right * -1) + (key_left));

//turns the plane
direction += turn * spd * 1.25;
image_angle = direction - 90;


reloadtimer--;
//shooting script
if (key_shoot) && (reloadtimer <= 0) {
	bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet.direction = direction + irandom_range(-5, 5);
	bullet.image_angle = direction;
	bullet.speed = 16;
	bullet.team = 1;
	reloadtimer = 2;
	energy--;
} else {
	
}
//missile thing
if (key_special1) && (weaponcharge >= 100) {
	weaponcharge -= 100;
	nearestenemy = instance_nearest(x, y, obj_enemy);
	currenttarget = instance_create_depth(x, y, -100, obj_target);
	currenttarget.currentenemy = nearestenemy;
	missile = instance_create_depth(x, y, -100, obj_missile);
	missile.currentenemy = nearestenemy;
	missile.targeting = currenttarget;
}
//prevents from leaving the room
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

timer--;
//moving loses energy
if (timer <= 0) {
	
	if (energy <= maxenergy) {
		energy -= spd;
		timer = 20;
	}
}

if (timer <= 0) {
	if (key_right) || (key_left){
		energy -= spd * 1.25;
		timer = 20;
	}
}

//shiled thing
if (key_special2) && (energy >= 200) && !(instance_exists(obj_shield)){
	energy -= 200;
	timer = 20;
	shield = instance_create_layer(x, y, "Instances", obj_shield);
	shield.timer = 60;
	}

global.currentdamagepercent = weaponcharge / maxweaponcharge;
if (hhealth <= 0) {
	instance_destroy();
}
if (energy <= 0) {
	instance_destroy();
}
