if (surface_exists(surf)){
	surface_set_target(surf);	
	// set the dark overlay: Bed Room 
	draw_set_color(c_black);
	draw_set_alpha(opacity);
	draw_rectangle(0, 0, room_width, room_height, 0);
	
	//
	//gpu_set_blendmode(bm_subtract);
	gpu_set_blendmode(bm_normal);
	//gpu_set_blendmode(bm_add);
	//gpu_set_blendmode(bm_max);
	
	//draw_set_color(c_black);
	//draw_set_alpha(0.5);
	
	with(obj_car){
		//draw_set_color(c_ltgray);
		draw_self();
	}
	
#region Leave this stuff
	// Reset all of the set draws
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	surface_reset_target();
}
else {
	surf = surface_create(room_width, room_height);
	surface_set_target(surf);
	draw_clear_alpha(c_black, clearalpha);
	surface_reset_target();
}
#endregion