/// @description Insert description here
// You can write your code in this editor


hhealth -= 1 - (global.currentdamagepercent * 0.5);

if (instance_exists(obj_player)){
	if (obj_player.weaponcharge + 0.01 <= obj_player.maxweaponcharge){
	obj_player.weaponcharge += 0.35;
	}
}