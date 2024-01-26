/// @description enable_movement_wall_jump(height, distance, jump_input, right_input, left_input)
/// @param height
/// @param  distance
/// @param  jump_input
/// @param  right_input
/// @param  left_input
function enable_movement_wall_jump() {
	/*
	    Call this script in order to enable platform wall
	    jumping on a movement entity.
	*/

	var height = argument[0]; // Jump height
	var distance = argument[1]; // Distance to check from wall and horizontal jump speed
	var jump_input = argument[2]; // Jump input
	var right_input = argument[3]; // Right movement input
	var left_input = argument[4]; // Left movement input

	// Wall jump
	if (!place_meeting(x, y+1, collision_object)) {
	    // Left wall
	    if (place_meeting(x-distance, y, collision_object)) {
	        if (jump_input && (right_input - left_input) != 0) {
	            hsp[0] += distance;
	            vsp[0] = -height;
	        }
	    }
    
	    // Right wall
	    if (place_meeting(x+distance, y, collision_object)) {
	        if (jump_input && (right_input - left_input) != 0) {
	            hsp[0] -= distance;
	            vsp[0] = -height;
	        }
	    }
	}



}
