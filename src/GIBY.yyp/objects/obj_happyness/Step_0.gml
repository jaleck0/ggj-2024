/// @description Insert description here
// You can write your code in this editor
var dir = point_direction(x,y, o_player.x, o_player.y);

if point_distance(x,y,o_player.x, o_player.y) < 64
{
	tracked = true;
}


if tracked 
{
	dx = lengthdir_x(8,dir)
	dy = lengthdir_y(8,dir)
}

x += dx 
y += dy