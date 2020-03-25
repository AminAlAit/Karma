switch(state){
	#region Chase State
	case "chase":
		scr_set_state_sprite(spr_knight_walk, 0.4, 0);
		scr_chase_state(obj_player_limbo, chase_range, "attack");
	break;
	#endregion
	#region Attack State
	case "attack":
		scr_set_state_sprite(spr_knight_attack, 0.6, 0);
		
		if (scr_animation_hit_frame(4)) {
			// Play swipe audio
			audio_play_sound(snd_swipe, 75, false);
			scr_create_hitbox(x, y, id, spr_skeleton_attack_one_damage, 4, 4, 10, image_xscale);
		}
		
		//if(distance_to_player > chase_range) state = "chase";
		if(scr_animation_end()) state = "chase";
	break;
	#endregion
	#region Knockback State
	case "knockback":
		scr_knockback_state(spr_knight_hitstun, "chase");
	break;
	#endregion
 	#region Death State
	case "death":
		scr_death_state(spr_knight_die);
	break;
	#endregion
	#region Default State
	default:
		//show_debug_message("State " + state + "does not exist");
		state = "chase";
	break;
	#endregion
}