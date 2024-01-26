/// @description move_solid_entity(push_object)
/// @param push_object
function move_solid_entity(argument0) {
	/*
	    Use this script on moving collision objects instead of move_movement_entity.
	    This script should be called in the end step event.
	*/

	var push_object = argument0; // Object to push
	var ymove = true; // Can we move vertically?
	var xmove = true; // Can we move horizontally?
	var hspd = hsp[0]+hsp[1]; // Get the total hspd
	var vspd = vsp[0]+vsp[1]; // Get the total vspd

	// Check for left and right instances
	var instances = instance_place_multiple(x+hspd+sign(hspd), y, push_object);
	var last_hsp0 = hsp[0];
	var last_hsp1 = hsp[1];
	warp_movement_entity(x+hspd, y);
	for (var i=0; i<ds_list_size(instances); i++) {
	    var instance = instances[| i];
	    if (instance) {
	        var new_x = instance.x;
	        if (hspd > 0) {
	            new_x = (decimal_bbox_right()+1)-((instance.bbox_left-round(instance.x)));
	        } else if (hspd < 0) {
	           new_x = (decimal_bbox_left()-1)-(instance.bbox_right-round(instance.x));
	        }
	        with (instance) {
	            if (place_meeting_exception(new_x+sign(hspd), y, collision_object, other.id)) {
	                if (other.hsp[0] != 0) {
	                    other.hsp[0] = -last_hsp0;
	                }
	                if (other.hsp[1] != 0) {
	                    other.hsp[1] = -last_hsp1;
	                }
	                xmove = false;
	            }
	        }
	    }
	}


	// Move left and right instances
	if (xmove) {
	    for (var i=0; i<ds_list_size(instances); i++) {
	        var instance = instances[| i];
	        if (instance) {
	            var new_x = instance.x;
	            if (hspd > 0) {
	                if (bbox_right > instance.bbox_right) continue;
	                new_x = (decimal_bbox_right()+1)-((instance.bbox_left-round(instance.x)));
	            } else if (hspd < 0) {
	                if (bbox_left < instance.bbox_left) continue;
	                new_x = (decimal_bbox_left()-1)-(instance.bbox_right-round(instance.x));
	            }
	            with (instance) {
	                x=new_x;
	            }
	        }
	    }
	} else {
	    x = xprevious;
	}

	// Destroy the list containing the left and right instances
	ds_list_destroy(instances);

	// Bounce off walls horizontally
	if (place_meeting(x+hspd+sign(hspd), y, collision_object)) {
	    hsp[0] *= -1;
	    hsp[1] *= -1;
	}

	// Check for on top instances
	var top_instances = instance_place_multiple(x, y-(abs(vspd)+1), push_object);
	var last_vsp0 = vsp[0];
	var last_vsp1 = vsp[1];
	warp_movement_entity(x, y+vspd);
	for (var i=0; i<ds_list_size(top_instances); i++) {
	    var instance = top_instances[| i];
	    if (instance) {
	        var new_y = (decimal_bbox_top())-((instance.bbox_bottom-round(instance.y)));
	        with (instance) {
	            if (place_meeting_exception(x, new_y, collision_object, other.id)) {
	                if (other.vsp[0] != 0) {
	                    other.vsp[0] = -last_vsp0;
	                }
	                if (other.vsp[1] != 0) {
	                    other.vsp[1] = -last_vsp1;
	                }
	                ymove = false;
	            }
	        }
	    }
	}

	// Check for bottom instances
	var bottom_instances = instance_place_multiple(x, y+(abs(vspd)+1)+vspd, push_object);
	for (var i=0; i<ds_list_size(bottom_instances); i++) {
	    var instance = bottom_instances[| i];
	    if (instance) {
	        if (instance.bbox_bottom < bbox_bottom) continue;
	        var new_y = (decimal_bbox_bottom()+1)-((instance.bbox_top-round(instance.y)));
	        with (instance) {
	            if (place_meeting_exception(x, new_y+1, collision_object, other.id)) {
	                if (other.vsp[0] != 0) {
	                    other.vsp[0] = -last_vsp0;
	                }
	                if (other.vsp[1] != 0) {
	                    other.vsp[1] = -last_vsp1;
	                }
	                ymove = false;
	            }
	        }
	    }
	}

	if (ymove) {
	    // Move the top instances
	    for (var i=0; i<ds_list_size(top_instances); i++) {
	        var instance = top_instances[| i];
	        if (instance) {
	            var new_y = (decimal_bbox_top())-((instance.bbox_bottom-round(instance.y)));
	            with (instance) {
	                if (instance.bbox_top > bbox_top) continue;
	                y = new_y;
                
	                if (!place_meeting_exception(x+hspd+sign(hspd), y, collision_object, other.id)) {
	                    if (place_meeting(x+hspd, y+1, collision_object)) {
	                        x += hspd;
	                    }
	                }
	            }
	        }
	    }
    
	    // Move the bottom instances
	    for (var i=0; i<ds_list_size(bottom_instances); i++) {
	        var instance = bottom_instances[| i];
	        if (instance) {
	            if (instance.bbox_bottom < bbox_bottom) continue;
	            var new_y = (decimal_bbox_bottom()+1)-((instance.bbox_top-round(instance.y)));
	            with (instance) {
	                if (y < new_y) y = new_y;
	            }
	        }
	    }
	} else {
	    y = yprevious;
	}

	// Destroy the top and bottom instance lists
	ds_list_destroy(bottom_instances);
	ds_list_destroy(top_instances);

	// Bounce off walls
	if (place_meeting(x, y+vspd+sign(vspd), collision_object)) {
	    vsp[0] *= -1;
	    vsp[1] *= -1;
	}



}
