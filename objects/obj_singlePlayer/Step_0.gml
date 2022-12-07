/// @description Insert description here
// You can write your code in this editor

if ( keyboard_check_pressed (ord("e")) )
{
	   //Activating the animation
       image_index = 2;
       //Activaing Single Player
       Single_Player = true;
}
 else
{
       //Idle Animation
       image_index = 1;
	   //Turning Single Player off
		Single_Player = false;
}