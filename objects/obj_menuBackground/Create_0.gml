/* Try something like this ↓
width = room_width * 0.8;
height = room_height * 0.8;
*/

width = 60;
height = 144;
op_border = 8;

op_space = 16;

option[0] = "Apple ";
option[1] = "Banana";
option[2] = "Cherry";
option[3] = "Watermelon";

op_length = array_length(option);

if mouse_check_button(mb_left) and position_meeting(mouse_x, mouse_y, obj_menuBackground) {
	room_goto(GameTestingRoom)
}