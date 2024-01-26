/// @description initialize_movement_entity(gravity, friction, air_resistance, bounce, collision_object)
/// @param gravity
/// @param  friction
/// @param  air_resistance
/// @param  bounce
/// @param  collision_object
function initialize_movement_entity() {
	/*
	    This script is used to initialize a movement entity.
	    You need to call this script in the CREATE EVENT of
	    any object you would like using the movement scripts.
	*/

	// Input speeds
	hsp[0] = 0;
	vsp[0] = 0;

	// Knockback speeds
	hsp[1] = 0;
	vsp[1] = 0;

	grav = argument[0]; // Gravity amount (positive is down).
	fric = argument[1]; // Friction amount (Only applies on ground for Platform Games).
	air_res = argument[2]; // Friction for all movement( When gravity is not 0 it only applies horizontally)
	bounce = argument[3]; // Bounce amount. 0 is no bounce, .5 is half velocity lost, 1 is no velocity lost.
	collision_object = argument[4] // The object that will be used for collisions.

	horizontal_move_input = false;
	vertical_move_input = false;
	air_jump = 0;



}
