scr_move_collide_limbo(knockback_speed, 0);
var knockback_friction = random_range(0.1, 0.5);
knockback_speed = scr_approach(knockback_speed, 0, knockback_friction);