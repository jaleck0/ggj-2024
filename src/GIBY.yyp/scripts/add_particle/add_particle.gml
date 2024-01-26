///@description add_particle(sprite, subimg, x, y, dx, dy, gravity, imgspeed, color, alpha, followplayer)
/// @param sprite
/// @param subimg
/// @param x
/// @param y
/// @param dx
/// @param dy
/// @param gravity
/// @param imgspeed
/// @param color
/// @param alpha
/// @param following
function add_particle(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10) {
	part=instance_create_depth(argument2,argument3,depth-1,obj_particle)
	part.sprite_index=argument0
	part.image_index=argument1
	part.hspeed=argument4
	part.vspeed=argument5
	part.gravity=argument6
	part.image_speed=argument7
	part.color=argument8
	part.image_alpha=argument9
	part.image_alpha=argument9
	part.following=argument10


}
