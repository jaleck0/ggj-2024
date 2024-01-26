/// @description decimal_bbox_bottom()
function decimal_bbox_bottom() {
	/*
	    Bounding boxes in gamemaker are an integer values.
	    This script allows you to get the decimal value of the
	    bounding box.
	*/
	return bbox_bottom+(y-round(y));



}
