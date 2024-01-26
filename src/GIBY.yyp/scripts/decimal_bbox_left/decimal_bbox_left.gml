/// @description decimal_bbox_left()
function decimal_bbox_left() {
	/*
	    Bounding boxes in gamemaker are an integer values.
	    This script allows you to get the decimal value of the
	    bounding box.
	*/
	return bbox_left+(x-round(x));



}
