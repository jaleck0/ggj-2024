/// @description add_movement_direction_acceleration(direction, acceleration);
/// @param direction
/// @param  acceleration
function add_movement_direction_acceleration() {
	/*
	    This script adds a direction and acceleration
	    to a movement entity. This acceleration will be relative to 
	    the previous speed of that entity. It works very much like
	    motion_add.
	*/

	var dir = argument[0]; // Direction value
	var acc = argument[1]; // Acceleration value

	hsp[1] += lengthdir_x(acc, dir);
	vsp[1] += lengthdir_y(acc, dir);



}
