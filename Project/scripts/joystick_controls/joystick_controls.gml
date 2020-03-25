global.jump_released = 0;

if (gamepad_axis_value(0, gp_axislh) < -0.75){
	global.left_held  = 1;
	global.joy_in_use = 1;
}
else
	global.left_held = 0;

if (gamepad_axis_value(0, gp_axislh) > 0.75){
	global.right_held = 1;
	global.joy_in_use = 1;
}
else
	global.right_held = 0;
    
if (gamepad_axis_value(0, gp_axislv) < -0.75){
	global.up_held	  = 1;
	global.joy_in_use = 1;
}
else
	global.up_held = 0;
    
if (gamepad_axis_value(0, gp_axislv) > 0.75){
	global.down_held  = 1;
	global.joy_in_use = 1;
}
else
	global.down_held = 0;
    
if gamepad_button_check(0, gp_face1){
	if((global.jump_pressed = 0) && (global.jump_held = 0)){
		global.jump_pressed = 1;
		global.joy_in_use   = 1;
	}
    else {
		global.jump_pressed = 0;
		global.jump_held	= 1;
		global.joy_in_use	= 1;
	}
}
else {
	global.jump_pressed	 = 0;
	global.jump_released = 1;
	global.jump_held	 = 0;
}