/// @description Insert description here
// You can write your code in this editor
if (enemyhealth <= 0) {
	instance_destroy();	
}
if (frame_cooldown < 1) {
	currentframe = 0;
}

move_towards_point(irandom_range(10, 300), irandom_range(10, 200) , 1);
image_index = currentframe
frame_cooldown -= 1;

