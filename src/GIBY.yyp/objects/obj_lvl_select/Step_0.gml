/// @description Insert description here
// You can write your code in this editor
if global.done[0,0] or global.done[0,1]
{
	count = 2
}

if global.done[1,0] or global.done[1,1]
{
	count = 3
}

if global.done[2,0] or global.done[2,1]
{
	count = 4
}

if global.done[0,1] and global.done[1,1] and global.done[2,1]
{
	count = 5
}


if global.LupP 
{
	sel--
}

if global.LdownP 
{
	sel++
}
if sel <0 {sel  = count-1}
sel %= count

if global.RrighttP
{
	audio_stop_all()
	room = roomArray[sel]
}