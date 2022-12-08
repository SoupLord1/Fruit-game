if mouse_check_button(mb_left) and  position_meeting(mouse_x, mouse_y, obj_watermelonClassMenu)
{
 
	   
       image_index = 1;
	   watermelonClassReady = 1;
}
if appleClassReady = 1 or bananaClassReady = 1 or cherryClassReady = 1
{
	image_index = 2
}
else
{
		watermelonClassReady = 0;
}
