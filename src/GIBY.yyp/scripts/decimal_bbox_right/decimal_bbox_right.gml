/// @description decimal_bbox_right()
function decimal_bbox_right() {
	/*
	    Bounding boxes in gamemaker are an integer values.
	    This script allows you to get the decimal value of the
	    bounding box.
	*/
	return bbox_right+(x-round(x));



}
