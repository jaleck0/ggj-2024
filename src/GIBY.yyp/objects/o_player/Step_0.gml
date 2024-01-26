/// @description  Move the Player


if !dashing {
//dir=point_direction(x,y,mouse_x,mouse_y)
	if global.RleftH 
	{
		dir = 180
		flp = -1;
	}
	else if global.RrighttH
	{
		dir=0
		flp = 1
	}
	else
	{
		if hsp[0] > 0
		{
			dir=0
			flp = 1
		}
		else if hsp[0] < 0
		{
			dir=180
			flp = -1
		}
		
	}
}

if (global.RleftP or global.RrighttP) and !(dashing) and dready and weapon=0 {
	vsp[0]=0
	vsp[1]=0
	hsp[0]=0
	hsp[1]=0
	dashing=true;
	timer=dtime;
	set_movement_direction_speed(dir+throwangleUp*flp,13)
	dready=false
	alarm[0]=dtimer
	set_movement_gravity(0.4)
	for (var i=0;i<=16;i++) {
		add_particle(spr_part,0,x+random_range(-16,16),y+random_range(-16,16),-random(hsp[1])/8,-random(vsp[1])/8,0,0.8+random(.5),c_white,1,false);
	}
} 

//if mouse_check_button_pressed(mb_right) and weapon>0 
if global.RdownP and weapon>0 
{
	guna=instance_create_layer(x,y,layer,obj_throwgun)
	guna.direction=dir+throwangleUp*flp
	guna.speed=13
	guna.image_angle=guna.direction

	guna.rotdir=flp//image_xscale
	alarm[0]=dtimer
	weapon=0
}

if (global.RleftP or global.RrighttP) and weapon>0 and !firing 
{
	firing=true
	alarm[1]=firerate
	add_particle(spr_flare,0,x+lengthdir_x(16,dir),y+lengthdir_y(16,dir),lengthdir_y(1,dir),lengthdir_y(1,dir),0,2,c_yellow,.5,true);
	for (var i=0;i<5;i++) 
	{
		bullet=instance_create_layer(x,y,layer,obj_bullet)
		bullet.direction=dir+random_range(-i*2,i*2)
		bullet.image_angle=bullet.direction
		bullet.speed=15+random(5)
	}
}

if (timer <= 0 and place_meeting(x,y+1,collision_object)) or place_meeting(x+hsp[1],y,collision_object) or place_meeting(x,y-1,collision_object)  {
	set_movement_gravity(0.5)
	dashing=false
}

if timer>0{ 
	timer--
}



if dashing {
	sprite_index=spr_player_stealing;
	instance_create_layer(x,y,layer,obj_trail)
	
}else{
	
	// Enable platform movement actions
	//enable_movement_platform_actions(.5, 4, 9, keyboard_check(ord("D")), keyboard_check(ord("A")), keyboard_check_pressed(vk_space), keyboard_check_released(vk_space));
	enable_movement_platform_actions(.5, 4, 9, global.LrightH, global.LleftH, sign(global.RupP + global.LupP), sign(global.RupR + global.LupR));
	
	if global.moodindex > MOODS.NEUTRAL
	{
		enable_movement_air_jump(12, sign(global.RupP + global.LupP))
	}
	// This script might not work for every kind of sprite set but it will work for a basic
	// set and will show how you could get started if you want to add more
	if weapon=0 
	{
		enable_movement_platform_sprites(spr_player_idle, spr_player_walk, spr_player_jump, .9);
	} 
	else 
	{
		enable_movement_platform_sprites(spr_player_hold, spr_player_walk_hold, spr_player_jump_hold, .9);
	}
}

// Move the entity
move_movement_entity();