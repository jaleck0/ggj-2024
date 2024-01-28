/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_menu)
draw_set_color(WHITE)

for (i = 0; i < count; i++)
{
	draw_text(84,96+i*32,string(nameArray[i]))
}
draw_text(64,96+sel*32,">")

for (i = 0; i < 3; i++)
{
	if global.done[i,0]
	{
		draw_sprite(Sprite38,0,270,102+i*36);
	}
}

for (i = 0; i < 3; i++)
{
	if global.done[i,1]
	{
		draw_sprite(Sprite3839,0,332,102+i*36);
	}
}
if global.goddead
{
draw_sprite(Sprite38,0,301,210);
}

if global.devdead
{
draw_sprite(Sprite3839,0,301,246);
}