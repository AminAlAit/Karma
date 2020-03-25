#region Joystick Input
global.joy_in_use = 0;
switch(global.joy){
	#region Joystick plugged
	case 1:
		joystick_controls();
		switch(global.joy_in_use){
			#region Yes
			case 1:
				exit;
				// this gets joystick input, and if there was input,
				// this step ends the step event to ingore keyboard input.
			break;#endregion
		}
	break;#endregion
}
#endregion
#region Keyboard Input
#region Left Input
// HELD
if (keyboard_check(vk_left)) 
	global.left_held = 1;
else 
	global.left_held = 0;
// PRESSED
if (keyboard_check_pressed(vk_left)) 
	global.left_pressed = 1;
else 
	global.left_pressed = 0;
// RELEASED	
if(keyboard_check_released(vk_left))
	global.left_released = 1;
else 
	global.left_released = 0;
#endregion
#region Right Input
// HELD
if (keyboard_check(vk_right)) 
	global.right_held = 1;
else 
	global.right_held = 0;
// PRESSED
if (keyboard_check_pressed(vk_right)) global.right_pressed = 1;
else global.right_pressed = 0;
// RELEASED
if(keyboard_check_released(vk_left))
	global.right_released = 1;
else 
	global.right_released = 0;
#endregion
#region Up Input
// HELD
if (keyboard_check(vk_up)) 
	global.up_held = 1;
else 
	global.up_held = 0;
// PRESSED
if (keyboard_check_pressed(vk_right)) 
	global.up_pressed = 1;
else 
	global.up_pressed = 0;
// RELEASED
if(keyboard_check_released(vk_left))
	global.up_released = 1;
else 
	global.up_released = 0;
#endregion
#region Down Input
// HELD
if (keyboard_check(vk_down)) 
	global.down_held = 1;
else 
	global.down_held = 0;
// PRESSED
if (keyboard_check_pressed(vk_right)) 
	global.down_pressed = 1;
else 
	global.down_pressed = 0;
// RELEASED
if(keyboard_check_released(vk_left))
	global.down_released = 1;
else 
	global.down_released = 0;
#endregion
#region Jump Input
global.jump_released = 0;
if (keyboard_check_pressed(vk_space)) 
	global.jump_pressed = 1;
else {
    if (keyboard_check(vk_space)) {
        global.jump_pressed  = 0;
        global.jump_held	 = 1;
	} else {
        global.jump_pressed	 = 0;
        global.jump_released = 1;
        global.jump_held	 = 0;
	}
}
#endregion
#region Roll Input
// HELD
if (keyboard_check(ord("X"))) 
	global.roll_held = 1;
else 
	global.roll_held = 0;
// PRESSED
if (keyboard_check_pressed(ord("X"))) 
	global.roll_pressed = 1;
else 
	global.roll_pressed = 0;
// RELEASED	
if(keyboard_check_released(ord("X")))
	global.roll_released = 1;
else 
	global.roll_released = 0;
#endregion
#region Action Input
// HELD
if (keyboard_check(ord("Z"))) 
	global.action_held = 1;
else 
	global.action_held = 0;
// PRESSED
if (keyboard_check_pressed(ord("Z"))) 
	global.action_pressed = 1;
else 
	global.action_pressed = 0;
// RELEASED	
if(keyboard_check_released(ord("Z")))
	global.action_released = 1;
else 
	global.action_released = 0;
#endregion
#region GIF Input
// HELD
if (keyboard_check(ord("G"))) 
	global.gif_held = 1;
else 
	global.gif_held = 0;
// PRESSED
if (keyboard_check_pressed(ord("G"))) 
	global.gif_pressed = 1;
else 
	global.gif_pressed = 0;
// RELEASED	
if(keyboard_check_released(ord("G")))
	global.gif_released = 1;
else 
	global.gif_released = 0;
#endregion
#endregion