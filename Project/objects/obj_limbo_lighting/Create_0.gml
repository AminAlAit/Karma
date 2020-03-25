// for opacity and alpha: 1 is complete dark
//						  0 is complete brightness

opacity	   = 0.2;	// hospital: bed room and hallway
clearalpha = 0;		// all of the viewport

surf	= surface_create(room_width, room_height);

surface_set_target(surf);
draw_clear_alpha(c_black, clearalpha);
surface_reset_target();