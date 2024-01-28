/// @description Insert description here
// You can write your code in this editor

global.mood -= 25

if image_angle = 0
{
	with other
	{
		set_movement_direction_speed(0,10)
	}
}
else
{
	with other
	{
		set_movement_direction_speed(180,10)
	}
}




instance_destroy();
