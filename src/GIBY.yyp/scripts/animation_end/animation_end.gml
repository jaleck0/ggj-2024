/// @description animation_end()
function animation_end() {
	/*
	    This script will return true if the image_index of your
	    sprite hits the last frame.
	*/

	// Will return true if an animation is at its last frame
	return animation_hit_frame(image_number - 1);



}
