///@arg death_sprite

var death_sprite = argument0;

scr_set_state_sprite(death_sprite, 0.25, 0);
friction = true;

// Execute when we reach animation end
if(image_index >= image_number - 1){
	
	image_index = image_number - 1;
	image_speed = 0;
	
	if(image_alpha > 0)	image_alpha -= 0.005;
	else instance_destroy();
}

// death animation resumes
scr_move_collide_limbo(knockback_speed, 0);
var knockback_friction = random_range(0.1, 0.9);
knockback_speed = scr_approach(knockback_speed, 0, knockback_friction);