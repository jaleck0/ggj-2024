/// @description Insert description here
// You can write your code in this editor
draw_self()
if weapon>0 {
draw_sprite_ext(spr_guns,weapon-1,x,y,1,image_xscale,dir,c_white,1)
}
//draw_text(x,y-16,string(vspeed))