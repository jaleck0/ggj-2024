/// @description enable_movement_platform_sprites(idle_sprite, walk_sprite, jump_sprite, walk_animation_speed)
/// @param idle_sprite
/// @param  walk_sprite
/// @param  jump_sprite
/// @param  walk_animation_speed
function enable_movement_platform_sprites(argument0, argument1, argument2, argument3) {
	/*
	    This script can be used to set basic sprites and animations
	    for a movement entity. The script is rather basic and is
	    more of a example to show you how you might set the
	    sprites for your character using your own script.
	*/

	var idle_sprite = argument0;
	var walk_sprite = argument1;
	var jump_sprite = argument2;
	var walk_animation_speed = argument3;

	// Set the image speed to 0 as a default
	image_speed = 0;

	/// Check to see if we are in the air
	if (!place_meeting(x, y+1, collision_object)) {
	    // We are in the air
	    // Change to jump sprite
	    sprite_index = jump_sprite;
    
	    // The jump sprite has two images, one for going up,
	    // and the other for falling. This code will show the
	    // correct image index based on that information.
	    image_index = (vsp[0] > 0);
	} else {
	    // We are on the ground
	    // Are we moving?
	    if (hsp[0] != 0) {
	        // We are moving
	        // Change to walk sprite and animate
        
				sprite_index = walk_sprite;
				image_speed = walk_animation_speed;
	    } else {
	        // We aren't moving
	        // Change to idle sprite
	        sprite_index = idle_sprite;
	    }
	}

	// We need to update the direction the sprite is facing
	//if (hsp[0] != 0) {
	//    // Use the xscale and hspd to flip the sprite
	//    image_xscale = sign(hsp[0]);
	//}



}
