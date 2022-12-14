/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left)) {
	enemyhealth -= 5;
	image_index = 1;
	if (mouse_check_button_released(mb_left)) {
		image_index = 0;
	}
}
else {
	image_index = 0;	
}


