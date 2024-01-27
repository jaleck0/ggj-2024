/// @description Insert description here
// You can write your code in this editor
if flp = 1 
{
	set_movement_direction_speed(180,blowbackspeed)
	bullet=instance_create_layer(x,y-20,layer,obj_opprojectile)
	bullet.direction=0
	bullet.image_angle=bullet.direction
	bullet.speed=15
}
else
{
	set_movement_direction_speed(0,blowbackspeed)
	bullet=instance_create_layer(x,y-20,layer,obj_opprojectile)
	bullet.direction=180
	bullet.image_angle=bullet.direction
	bullet.speed=15
}

flp *= -1

alarm[0] = 120