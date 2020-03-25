// must find player
if(!instance_exists(obj_player_limbo)) exit;

//// Boss will chase player. attack if its within two boundaries:
//// upper: chase range | lower: backup range.
//// if player position is between boss and backup, 
//// then boss will backup for distance = backup

// Setting walking sprite, with 
scr_set_state_sprite(spr_boss_walk, 0.3, 0);

var distance_to_player = point_distance(x, y, obj_player_limbo.x, obj_player_limbo.y);

// if in between the distance and backup: Attack
if(distance_to_player <= chase_range && distance_to_player > backup_range) state = "attack";

// if we are too far from the player: move towards the player
var facing_direction = image_xscale;
if(distance_to_player > chase_range){
	// face towards the player
	image_xscale = sign(obj_player_limbo.x - x);
	if (image_xscale == 0) image_xscale = 1;
	scr_move_collide_limbo(facing_direction * chase_speed, 0);
}

// if we are too close to the player: backup
if(distance_to_player <= backup_range){
	// face player when backing up
	if(facing_direction != sign(obj_player_limbo.x - x)) {
		image_xscale = sign(obj_player_limbo.x - x);
		if (image_xscale == 0) image_xscale = 1;
	}
	scr_move_collide_limbo(-facing_direction * chase_speed, 0);
}

// screen shake for every step
if(scr_animation_hit_frame(2)||scr_animation_hit_frame(5))
	scr_add_screenshake(5, 10);

// Boss will keep getting hit through all states
scr_boss_knockback();