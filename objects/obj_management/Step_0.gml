/// @description Insert description here
// You can write your code in this editor
if (room == room0) {
global.gametime++;
difficulty = global.gametime / room_speed * 20;
if (global.enemynumber <= 55) {
	instance_create_layer(irandom_range(150, 1930), irandom_range(150, 1400), "Instances", obj_enemy);
}
if (global.groundobjects <= 75) {
	instance_create_layer(irandom_range(150, 1930), irandom_range(150, 1400), "groundstuff", obj_groundobject);
}
}


if (room != room1) {
	audio_stop_sound(sound_end);
} else {
	if !(audio_is_playing(sound_end)) {
		audio_play_sound(sound_end, 1, false);
	}
}