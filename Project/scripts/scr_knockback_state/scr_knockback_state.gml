///@arg knockback_sprite
///@arg next_state

var knockback_sprite = argument0;
var next_state		 = argument1;

scr_set_state_sprite(knockback_sprite, 0, 0);
image_xscale = -sign(knockback_speed);
scr_move_collide_limbo(knockback_speed, 0);
var knockback_friction = random_range(0.1, 0.9);
knockback_speed = scr_approach(knockback_speed, 0, knockback_friction);
if(knockback_speed == 0) state = next_state;