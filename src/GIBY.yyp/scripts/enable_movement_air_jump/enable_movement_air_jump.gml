/// @description enable_movement_air_jump(height, input)
/// @param height
/// @param  input
function enable_movement_air_jump() {
	/*
	    Call this script in order to add platform double jumping
	    (air jumping) to a movement entity.
	*/

	var height = argument[0]; // Jump height
	var input = argument[1]; // Jump input

	// Air jump
	if (!place_meeting(x, y+1, collision_object) && air_jump == 1 && input) {
	    vsp[0] = -height;
	    air_jump--;
		for (var i=0;i<=6;i++) {
			add_particle(spr_part,1,x+random_range(-8,8),y+14,random_range(-1,1),random_range(0,-1),0,0.8+random(.5),global.moodcolors[global.moodindex,0],1,false);
		}
		audio_play_sound(snd_jump,10,false)
	}



}
