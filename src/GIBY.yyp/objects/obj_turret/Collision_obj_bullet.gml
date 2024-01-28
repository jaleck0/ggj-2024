/// @description Insert description here
// You can write your code in this editor
hp -= 10

set_movement_direction_speed(other.image_angle,5)
audio_play_sound(snd_enemhit,10,false)
with other
{
	instance_destroy()
}
