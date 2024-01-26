/// @description  Initialize the moving solid
initialize_movement_entity(0, 0, 0, 0, o_solid);

// Start moving
set_movement_horizontal_vertical(1, 1);

/*
    IMPORTANT:
    Moving solids and slopes should inherite from the solid
    object or the player will not collide with them.
*/

/* */
/*  */
