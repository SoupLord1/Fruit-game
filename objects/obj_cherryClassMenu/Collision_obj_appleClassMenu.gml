//Selection

if mouse_check_button(mb_left) and  position_meeting(mouse_x, mouse_y, obj_appleClassMenu)
{
 
	   
       image_index = 1
	   ready = 1
}
//Idle Functions
else
{
	//Idle Menu
	image_index = 2;
	ready = 0
}