// Hitbox
creator				= noone;
hit_objects			= ds_list_create();

knockback			= 1;
damage				= 1;

first_strike		= false;
second_strike		= false;
third_strike		= false;

//// Effects calibration [Knight|Crow|Player]
// Commented variables are not in use so far.
knight_hitFlash		= 15;		// measured in frames
knight_hitEffect	= 80;		// number of particles
knight_gameFreeze	= 100;	// measured in milliseconds
//knight_SS_intensity = 0;	// measured in pixels betweem -x & x
//knight_SS_duration = 0;	// measured in frames

crow_hitFlash		= 15;	// measured in frames
crow_hitEffect		= 40;	// number of particles
//crow_gameFreeze	= 0;	// measured in milliseconds
//crow_SS_intensity = 0;	// measured in pixels betweem -x & x
//crow_SS_duration	= 0;	// measured in frames

player_hitFlash		= 30;	// measured in frames
//player_hitEffect	= 0;	// number of particles
player_gameFreeze	= 100;	// measured in milliseconds
player_SS_intensity = 6;	// measured in pixels betweem -x & x
player_SS_duration	= 10;	// measured in frames