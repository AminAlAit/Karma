switch(state){
	#region Chase State
	case "chase":
		scr_boss_chase_state();
	break;
	#endregion
	#region Attack State
	case "attack":
		scr_set_state_sprite(spr_boss_attack, 0.5, 0);
		if(scr_animation_hit_frame(7)){
			// Play hit audio
			audio_play_sound(snd_big_hit, 100, false);
			audio_play_sound(snd_medium_hit, 40, false);
			scr_create_hitbox(x, y, id, spr_boss_attack_damage, 10, 3, 20, image_xscale);
		}
		if(scr_animation_end()){
			state = "stall";
			alarm[2] = 30;	// 1/2 second
			scr_add_screenshake(10, 16);
		}
		// Boss will keep getting hit through all states
		scr_boss_knockback();
	break
	#endregion
	#region Stall State
	case "stall":
		scr_set_state_sprite(spr_boss_idle, 0.3, 0);
		if(alarm[2] <= 0) state = "chase";
		// Boss will keep getting hit through all states
		scr_boss_knockback();
	break;
	#endregion
	#region Death State
	case "death":
		scr_death_state(spr_boss_die);
	break;
	#endregion
}