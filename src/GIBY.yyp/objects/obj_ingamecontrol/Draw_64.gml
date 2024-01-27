/// @description Insert description here
// You can write your code in this editor
if global.mood > 0 
{
	draw_sprite(spr_GUI_boxes, global.moodindex, 16, 8);
	
	draw_sprite(global.portrait_sprites[global.moodindex], port_fram, 22, 14);

	draw_set_color(global.moodcolors[global.moodindex,0]);
	draw_rectangle(23, 68, 23 + ((global.mood / global.const_maxmood) * 41), 72, false);
}

