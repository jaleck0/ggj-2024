/// @description warp_movement_entity(xwarp, vwarp)
/// @param xwarp
/// @param  vwarp
function warp_movement_entity(argument0, argument1) {
	/*
	    This script can be used to warp a movement or solid entity
	    to a location while keeping that instance outside of any
	    collision objects.
	*/

	var xwarp = argument0; // x position to warp to
	var ywarp = argument1; // y position to warp to

	// Warp to the location but don't move inside collision objects
	if (place_meeting(xwarp, y, collision_object)) {
	    while(!place_meeting(sign(xwarp-x), y, collision_object)) {
	        x+=sign(xwarp-x);
	    }
	    xwarp = x;
	}
	x = xwarp;

	// Warp to the location but don't move inside collision objects
	if (place_meeting(x, ywarp, collision_object)) {
	    while(!place_meeting(x, sign(ywarp-y), collision_object)) {
	        y+=sign(ywarp-y);
	    }
	    ywarp = y;
	}
	y = ywarp;



}
