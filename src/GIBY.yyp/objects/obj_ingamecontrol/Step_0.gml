/// @description Insert description here
// You can write your code in this editor
if global.mood <= 0
{
	room_restart()
	audio_stop_all()
}

if global.mood > 200
{
	global.mood = 200 
}

if global.mood > 0
{
	if global.mood > global.const_neutralmood
	{
		global.mood -= global.depressionspeed
	}

	
	global.moodindex = floor((global.mood/40)-0.01)
	if global.moodindex < 0
	{
		global.moodindex = 0
	}
}

if room == rm_lvl_god or room == rm_lvl_devl
{
	camera_set_view_pos(view_camera[0], 0, 32);
}
else
{
	camera_set_view_pos(view_camera[0], o_player.x-240, o_player.y-170);
}