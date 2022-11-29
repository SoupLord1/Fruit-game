
reset_vars();

get_input();

calc_movement();


if keyboard_check(ord("W")) {
	image_index = 1;
	last_dir = 90;
}
else if keyboard_check(ord("S")) {
	image_index = 2;
	last_dir = 270;
}
else if keyboard_check(ord("D")) {
	image_index = 3;
	last_dir = 0;
}
else if keyboard_check(ord("A")) {
	image_index = 4;
	last_dir = 180;
}
else {
	image_index = 0;	
}


if keyboard_check(vk_space) {
	instance_create_layer(x, y, "Instances", obj_bullet);
}