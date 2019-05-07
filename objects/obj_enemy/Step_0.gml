/// @description Insert description here
// You can write your code in this editor
timer--;

if (timer <= 0) {
	//change
	var i = irandom_range(0, 1);
	if (i == 0) {
		direction += 45;
	}
	if (i == 1) {
		direction -= 45;
	}
	timer = irandom_range(room_speed / 2, room_speed * 3);
}
		

		
speed = spd;

switch (direction) {
	case 0: 
		sprite_index = spr_player0;
		break;
	case 45:
		sprite_index = spr_player315;
		break;
	case 90:	
		sprite_index = spr_player270;
		break;
	case 135:
		sprite_index = spr_player225;
		break;
	case 180:
		sprite_index = spr_player180;
		break;
	case 225:
		sprite_index = spr_player135;
		break;
	case 270:
		sprite_index = spr_player90;
		break;
	case 315:
		sprite_index = spr_player45; 
		break;
}

if (x <= 50) || (y <= 50) || (x >= room_width - 50) || (y >= room_height - 50) {
	direction += 90;
}
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

if (hhealth <= 0) {
	instance_destroy();
}
