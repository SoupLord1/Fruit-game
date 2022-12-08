
if mouse_check_button(mb_left) and  position_meeting(mouse_x, mouse_y, obj_bananaClassMenu)
{
 
	   
       image_index = 1;
	   bananaClassReady = 1;
		
}
 
if appleClassReady = 1 or watermelonClassReady = 1 or cherryClassReady = 1
{
	
	image_index = 2;

}
else
{
	bananaClassReady = 1;
}