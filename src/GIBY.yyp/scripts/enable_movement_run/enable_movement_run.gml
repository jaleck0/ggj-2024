/// @description enable_movement_run(acceleration, max_speed, right_input, left_input)
/// @param acceleration
/// @param  max_speed
/// @param  right_input
/// @param  left_input
function enable_movement_run() {
	/*
	    Call this script in order to enable horizontal
	    running on a movement entity.
	*/

	var acc = argument[0]; // Acceleration value
	var maxspd = argument[1]; // Maximum run speed
	var right_input = argument[2]; // Right movement input
	var left_input = argument[3]; // Left movement input
	var hacc = (right_input - left_input)*acc;
	maxspd *= sign(hacc);

	horizontal_move_input = hacc != 0;

	add_movement_horizontal_vertical_maxspeed(hacc, 0, maxspd, 0);



}
