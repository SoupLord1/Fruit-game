/// @description Insert description here
// You can write your code in this editor

draw_text(0, 0, "x: " + string(round(obj_player.x)) + " y: " + string(round(obj_player.y)));

if (position_meeting(obj_player.x + 10, obj_player.y + 10, obj_solid) or position_meeting(obj_player.x - 10, obj_player.y - 10, obj_solid)) {
	draw_text(0, 10, "There was a colision");
}
