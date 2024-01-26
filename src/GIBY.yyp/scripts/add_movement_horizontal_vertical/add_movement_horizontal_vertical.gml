/// @description add_movement_horizontal_vertical(hacceleration, vacceleration)
/// @param hacceleration
/// @param  vacceleration
function add_movement_horizontal_vertical(argument0, argument1) {
	/*
	    This script adds a horizontal and/or a vertical acceleration
	    to a movement entity. This acceleration will be relative to 
	    the previous horizontal speed and vertical speed. It is sort
	    of like motion_add but it takes a horizontal acceleration and
	    a vertical acceleration as arguments instead of a direction and
	    speed.
	*/

	hsp[1] += argument0;
	vsp[1] += argument1;



}
