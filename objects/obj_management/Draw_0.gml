/// @description Insert description here
// You can write your code in this editor
if (room == room0) {
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
draw_set_alpha(0.3);
if (room == room0){
	if (instance_exists(obj_player)) {
	draw_healthbar(cx + 10, cy + 10, cx + 50, cy + 20, (100 / obj_player.maxhhealth) * obj_player.hhealth , c_black, c_red, c_red, 0, true, true);
	draw_healthbar(cx + 10, cy + 90, cx + 20, cy + 40, (100 / obj_player.maxenergy) * obj_player.energy, c_black, c_black, c_yellow, 2, true, true);
	draw_healthbar(cx + 360, cy + 90, cx + 370, cy + 40, (100 / obj_player.maxspd) * obj_player.spd, c_black, c_black, c_teal, 2, true, true);
	draw_healthbar(cx + 10, cy + 200, cx + 20, cy + 150, (100 / obj_player.maxweaponcharge) * obj_player.weaponcharge, c_black, c_black, c_red, 2, true, true);
	}
}
draw_set_color(c_black);
draw_text(cx + cw - 120, cy + 10, "Score: " + string(sscore));
draw_text(cx + cw - 120, cy + 20, string(global.gametime / room_speed));
//draw_text(cx + cw - 120, cy + 30, string(1 - (global.currentdamagepercent * 0.5)));
draw_set_alpha(1);
}