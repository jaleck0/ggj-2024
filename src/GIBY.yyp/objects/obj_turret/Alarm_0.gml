/// @description Insert description here
// You can write your code in this editor
if flp = 1 
{
	set_movement_direction_speed(180,blowbackspeed)
}
else
{
	set_movement_direction_speed(0,blowbackspeed)
}

flp *= -1

alarm[0] = 120