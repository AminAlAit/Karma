///@arg target(player)
///@arg range
///@arg next_state

var player	   = argument0;
var range	   = argument1;
var next_state = argument2;

// must find player
if(!instance_exists(player)) exit;

// face towards the player
image_xscale = sign(player.x - x);

// within "next state" range?
if(collision_circle(x, y, range, player, false, false)){
	state = next_state;
}

// Keep moving
else {
	var facing_direction = image_xscale;
	scr_move_collide_limbo(facing_direction * x_chase_speed, sign(player.y - y) * y_chase_speed);
}