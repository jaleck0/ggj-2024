/// @description Insert description here
// You can write your code in this editor
dashing=false
weapon=other.wep_id
audio_play_sound(snd_pickup,10,false)
with other { 
	instance_destroy()
}