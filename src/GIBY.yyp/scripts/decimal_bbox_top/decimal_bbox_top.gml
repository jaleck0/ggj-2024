/// @description decimal_bbox_top()
function decimal_bbox_top() {
	/*
	    Bounding boxes in gamemaker are an integer values.
	    This script allows you to get the decimal value of the
	    bounding box.
	*/
	return bbox_top+(y-round(y));



}
