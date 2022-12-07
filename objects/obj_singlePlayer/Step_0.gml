/// @description Insert description here
// You can write your code in this editor

if mouse_check_button(mb_left) and  position_meeting(mouse_x, mouse_y, obj_singlePlayer)
{
 
	   //Activating the animation
       image_index = 1;
       //Activaing Single Player
	   Gamemode = 1;
	   //Going to Room1
	   room_goto(Room1);
}
//Idle Functions
else
{
	//Idle Menu
	image_index = 2;
}


