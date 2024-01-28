/// @description Insert description here
// You can write your code in this editor
image_angle-=rotdir*9


if place_meeting(x+hspeed,y+vspeed,o_solid){
audio_play_sound(snd_gunhitwall,10,false)
for (var i=0;i<=6;i++) {
	add_particle(spr_part,0,x+random_range(-4,4),y+random_range(-4,4),-random(hspeed)/6,-random(vspeed)/6,0,1+random(.5),global.moodcolors[global.moodindex,0],1,false);
}
item=instance_create_layer(x,y,layer,obj_gun)
item.image_xscale=rotdir
instance_destroy();
}