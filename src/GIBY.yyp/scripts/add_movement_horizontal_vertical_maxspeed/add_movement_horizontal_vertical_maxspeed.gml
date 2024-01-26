/// @description add_movement_horizontal_vertical_maxspeed(hacceleration, vacceleration, maxhspeed, maxvspeed)
/// @param hacceleration
/// @param  vacceleration
/// @param  maxhspeed
/// @param  maxvspeed
function add_movement_horizontal_vertical_maxspeed(argument0, argument1, argument2, argument3) {
	/*
	    This script adds a horizontal and/or a vertical acceleration
	    to a movement entity. This acceleration will be relative to 
	    the previous horizontal speed and vertical speed. It also allowes
	    for a maximum horizontal speed and vertical speed. It is sort
	    of like motion_add but it takes a horizontal acceleration and
	    a vertical acceleration as arguments instead of a direction and
	    speed.
	*/
	var hacc = argument0; // Horizontal acceleration
	var vacc = argument1; // Vertical acceleration
	var maxhspd = argument2; // Maximum horizontal speed
	var maxvspd = argument3; // Maximum vertical speed
	horizontal_move_input = hacc != 0;
	vertical_move_input = hacc != 0;

	hsp[0] = approach(hsp[0], maxhspd, abs(hacc));
	vsp[0] = approach(vsp[0], maxvspd, abs(vacc));



}
