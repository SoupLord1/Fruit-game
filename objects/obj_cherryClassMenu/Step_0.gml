if mouse_check_button(mb_left) and  position_meeting(mouse_x, mouse_y, obj_cherryClassMenu)
{
 
	   
       image_index = 1;
	   cherryClassReady = 1;
		
}

if appleClassReady = 1 or bananaClassReady = 1 or watermelonClassReady = 1
{
	image_index = 2;
}
else
{
	cherryClassReady = 0;
}

