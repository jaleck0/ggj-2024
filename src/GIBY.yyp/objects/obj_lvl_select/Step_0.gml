/// @description Insert description here
// You can write your code in this editor

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
	room = roomArray[sel]
}