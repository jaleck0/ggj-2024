/// @description Insert description here
// You can write your code in this editor
hp -= 5
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

instance_create_layer(x+random_range(-16,16),y+random_range(-16,16),layer,obj_happyness)



