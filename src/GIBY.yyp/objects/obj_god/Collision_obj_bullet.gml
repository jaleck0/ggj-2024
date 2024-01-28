/// @description Insert description here
// You can write your code in this editor
hp -=10
audio_play_sound(snd_enemhit, 10,false)

if hp <= 0
{
	alarm[0] = 60
	alarm[1] = 180
}

with other
{
	instance_destroy()
}





