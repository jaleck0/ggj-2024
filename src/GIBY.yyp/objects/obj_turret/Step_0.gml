/// @description Insert description here
// You can write your code in this editor
move_movement_entity();
image_xscale = flp

if hp <=0
{
	if sad
	{
		for (i =0; i<5;i++)
		{
			ball = instance_create_layer(x+random_range(-32,32),y+random_range(-32,32),layer,obj_sadness)
			ball.range = 400
		}
	}
	else
	{
		for (i =0; i<5;i++)
		{
			ball = instance_create_layer(x+random_range(-32,32),y+random_range(-32,32),layer,obj_happyness)
			ball.range = 400
		}
	}
	
	
	instance_destroy()
}

if sad
{
	sprite_index = spr_turret_sad
}
else
{
	sprite_index = spr_turret_happy
}