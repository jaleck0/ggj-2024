/// @description enable_movement_run_axis(acceleration, max_speed, horizontal_axis)
/// @param acceleration
/// @param  max_speed
/// @param  horizontal_axis
function enable_movement_run_axis() {
	/*
	    Call this script in order to enable horizontal
	    running on a movement entity.
	*/

	var acc = argument[0]; // Acceleration value
	var max_spd = argument[1]; // Maximum run speed
	var haxis = argument[2]; // Horizontal input axis
	var hacc = (haxis)*acc;
	maxspd = max_spd*abs(haxis);

	horizontal_move_input = hacc != 0;

	add_movement_horizontal_vertical_maxspeed(hacc, 0, maxspd, 0);



}
