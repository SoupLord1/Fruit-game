
obj_Melee.image_angle = point_direction(obj_Melee.x, obj_Melee.y, mouse_x, mouse_y) - 90;

reset_vars();

get_input();

calc_movement();

//Keyboards Imputs
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

//Shooting timer
if (timer > 0)
{
    timer -= 1/room_speed //decrease in seconds
}
else
{
    
}

if mouse_check_button_pressed(vk_space){
    timer = timermax;
	instance_create_layer(x, y, "Instances", obj_bullet);
}
//instance_create_layer(x, y, "Instances", obj_bullet);
