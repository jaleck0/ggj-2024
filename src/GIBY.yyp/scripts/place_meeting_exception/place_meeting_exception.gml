/// @description place_meeting_exception(x, y, obj, exception)
/// @param x
/// @param  y
/// @param  obj
/// @param  exception
function place_meeting_exception(argument0, argument1, argument2, argument3) {
	/*
	    Works just like place_meeting but you can pass an exception
	    instance that won't be included in the check.
	*/

	var xx = argument0; // x position to check
	var yy = argument1; // y position to check
	var obj = argument2; // Object to check for
	var exception = argument3; // Exception instance to leave out

	var instance = instance_place(xx, yy, obj); // Call instance_place

	// Return true unless the exception instance matches the instance at that location
	return (instance != exception && instance != noone);



}
