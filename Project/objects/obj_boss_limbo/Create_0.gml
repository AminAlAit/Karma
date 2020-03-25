/// @description Inherit from obj_enemy_parent_limbo

// Inherit the parent event
event_inherited();

state			= "chase";
hp				= 100;
max_hp			= hp;
chase_speed		= 0.5;
max_chase_speed = 2;
experience		= 50;
chase_range		= 120;
backup_range	= 96;