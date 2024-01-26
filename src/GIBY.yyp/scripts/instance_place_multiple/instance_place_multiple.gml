/// @description instance_place_multiple(x, y, instance)
/// @param x
/// @param  y
/// @param  instance
function instance_place_multiple(argument0, argument1, argument2) {
	/*
	    Works like instance_place but returns a ds_list of
	    all the instances at that location.
	*/

	var xx = argument0; // x position to check
	var yy = argument1; // y position to check
	var ins = argument2; // Object to check for
	var list = ds_list_create(); // New list data structure

	// Loop through the instances and add them to the list
	while (instance_place(xx, yy, ins)) {
	    var o = instance_place(xx, yy, ins); // o is the id of the instance
	    ds_list_add(list, o); // Add the instance to the list
	    instance_deactivate_object(o); // deactivate the instance we just added to the list
	}

	// Reactivate all the deactivated instances
	for (var i=0; i<ds_list_size(list); i++) {
	    instance_activate_object(list[| i]);
	}

	return list;



}
