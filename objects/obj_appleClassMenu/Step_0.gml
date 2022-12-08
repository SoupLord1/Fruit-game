//Selection

if mouse_check_button(mb_left) and position_meeting(mouse_x, mouse_y, obj_appleClassMenu)
{
 
	   
       image_index = 1;
	   appleClassReady = 1;
}
//Idle Functions
if bananaClassReady = 1 or watermelonClassReady = 1 or cherryClassReady = 1
{

	image_index = 2;

}
else
{
	appleClassReady = 0;
}
