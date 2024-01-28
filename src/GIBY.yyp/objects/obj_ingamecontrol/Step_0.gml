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
	
	if global.desiredmusic != snd_manic and global.mood > 160
	{
		audio_stop_sound(global.desiredmusic)
		global.desiredmusic = snd_manic
		audio_play_sound(global.desiredmusic,1,true)
	}

	if global.desiredmusic != snd_neutralmusic and global.mood > 40 and global.mood < 160
	{
		audio_stop_sound(global.desiredmusic)
		global.desiredmusic = snd_neutralmusic
		audio_play_sound(global.desiredmusic,1,true)
	}

	if global.desiredmusic != snd_depressionmusic and global.mood < 40
	{
		audio_stop_sound(global.desiredmusic)
		global.desiredmusic = snd_depressionmusic
		audio_play_sound(global.desiredmusic,1,true)
	}
}

