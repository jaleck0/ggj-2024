/// @description enable_movement_jump(height, input, release_input)
/// @param height
/// @param  input
/// @param  release_input
function enable_movement_jump() {
	/*
	    Call this script to enable platform jumping
	    on a movement entity.
	*/

	var height = argument[0]; // The jump height (Should be positive)
	var input = argument[1]; // The input for jumping
	var release_input = argument[2]; // The input for jump height control (release)

	// Check for jump
	if (place_meeting(x, y+1, collision_object) || place_meeting(xprevious, yprevious+1, collision_object)) {
	    if (input) {
	        vsp[0] = -height;
			for (var i=0;i<=6;i++) {
			add_particle(spr_part,1,x+random_range(-8,8),y+14,random_range(-1,1),random_range(0,-1),0,0.8+random(.5),c_white,1,false);
			}
	    }
	} else {
	    if (release_input && vsp[0] <= -height/3) {
	        vsp[0] = -height/3;
	    }
	}



}
