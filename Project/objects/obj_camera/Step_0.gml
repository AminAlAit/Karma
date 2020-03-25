global.cx = camera_get_view_x(view_camera[0]);
global.cy = camera_get_view_y(view_camera[0]);

switch(mode){
	#region Follow Object
	case cammode.follow_object:
		if(!instance_exists(following)) 
			break;
		global.cx = following.x - (global.view_w/2);
		global.cy = following.y - (global.view_h/2);
	break;#endregion
	#region Follow Mouse Drag
	case cammode.follow_mouse_drag:
		
	break;#endregion
	#region Follow Mouse Border
	case cammode.follow_mouse_border:
		if(!point_in_rectangle(mouse_x, mouse_y, global.cx + (global.view_w * 0.1), global.cy + (global.view_h * 0.1),  global.cx + (global.view_w * 0.9), global.cy + (global.view_h * 0.9))){
			global.cx = lerp(global.cx, mouse_x - (global.view_w / 2), 0.01);
			global.cy = lerp(global.cy, mouse_y - (global.view_h / 2), 0.01);
		}
	break;#endregion
	#region Follow Mouse Peek
	case cammode.follow_mouse_peek:
		global.cx = lerp(following.x, mouse_x, 0.2) - (global.view_w/2);
		global.cy = lerp(following.y, mouse_y, 0.2) - (global.view_h/2);
	break;#endregion
	#region Move to Target
	case cammode.move_to_target:
		
	break;#endregion
	#region Move to Follow Object
	case cammode.move_to_follow_object:
		
	break;#endregion
}

if(!boundless){
	global.cx = clamp(global.cx, 0, room_width  - global.view_w);
	global.cy = clamp(global.cy, 0, room_height - global.view_h);
}

camera_set_view_pos(view_camera[0], global.cx, global.cy);