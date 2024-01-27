/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menu)
for (i = 0; i < count; i++)
{
	draw_text(72,96+i*24,string(nameArray[i]))
}
draw_text(64,96+sel*24,">")
