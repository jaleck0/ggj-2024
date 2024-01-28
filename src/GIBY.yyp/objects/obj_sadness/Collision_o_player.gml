/// @description Insert description here
// You can write your code in this editor
if global.mood > 40 
{
	global.mood -= 10;
}
audio_play_sound(snd_pickupball,10,false)
instance_destroy()



