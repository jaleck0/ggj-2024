/// @description Insert description here
// You can write your code in this editor
var sx = 16
var sy = 8

if room == rm_lvl_god or room == rm_lvl_devl
{
	sx = 212
	sy = 196
}

if global.mood > 0 
{
	draw_sprite(spr_GUI_boxes, global.moodindex, sx, sy);
	
	draw_sprite(global.portrait_sprites[global.moodindex], port_fram, sx+6, sy+6);

	draw_set_color(global.moodcolors[global.moodindex,0]);
	draw_rectangle(sx+7, sy+60, sx+7 + ((global.mood / global.const_maxmood) * 41), sy+64, false);
}

