//// Creator is the object that created the hitbox
//// Target is the hitbox that is being hit by the creator

//// Insuring we do not hit the same hitbox 4 times
// Raw Hitbox		  || created by same obj || does belong the hit objects list.			   || If player doesn't exist then exit.
if((creator == noone) || (creator == other)  || (ds_list_find_index(hit_objects, other) != -1) || (!instance_exists(obj_player_limbo))) 
	exit;

// When player hits and enemies die: player kill score (kills) increases
if(creator.object_index == obj_player_limbo && other.hp <= 0)
	obj_player_limbo.kills += 1;


// Target is the other hitbox's object
var target = other.object_index;
var hitter = creator.object_index;
switch(target){
	#region Player
	case (obj_player_limbo):
		#region Player Death Effect: Bones Splatter | Saving our score: saving kills
		// When player is dead: bones splatter effect
		if(other.hp <= 0){
			var number_of_images = sprite_get_number(spr_skeleton_bones);
			for(var i = 0; i < number_of_images; i++){
				var bone_x = other.x + random_range(-8, 8);
				var bone_y = other.y + random_range(-24, 8);
				var bone = instance_create_layer(bone_x, bone_y, "Bones", obj_bones_limbo);
				bone.direction = 90 - (image_xscale * random_range(30, 60));
				bone.speed = random_range(3, 10);
				// one of each bone
				bone.image_index = i;
				if(i == 5){
					if(other.image_xscale == +1)
						bone.image_angle = 130;
					else
						bone.image_angle = 180;
				}
			}
			#region Saving our score
			// Create save.ini
			ini_open("save.ini");
			// write to save.ini
			ini_write_real("Scores", "Kills", other.kills);
			// read highscore, default value is 0
			var highscore = ini_read_real("Scores", "Highscore", 0);
			// only save our highest score of kills
			if(other.kills > highscore) ini_write_real("Scores", "Highscore", other.kills);
			ini_close();
			#endregion
		}
		#endregion
		// Effects for every hit the player takes: from boss, knight and crow
		switch(hitter){
			#region Hit by Boss
			case (obj_boss_limbo):
				// Play hit audio
				audio_play_sound(snd_medium_hit, 80, false);
			break;
			#endregion
			#region Hit by Knight
			case (obj_knight):
				// Play hit audio
				audio_play_sound(snd_hit, 80, false);
				//scr_add_screenshake(player_SS_intensity, player_SS_duration);
				//scr_game_freeze(player_gameFreeze);
				scr_hit_flash(player_hitFlash, obj_knight);
			break;
			#endregion
			#region Hit by Crow
			case (obj_crow):
				// Play hit audio
				audio_play_sound(snd_hit, 80, false);
				//scr_add_screenshake(player_SS_intensity, player_SS_duration);
				//scr_game_freeze(player_gameFreeze);
				scr_hit_flash(player_hitFlash, obj_crow);
			break;
			#endregion
		}
	break;
	#endregion
	#region Knight
	case (obj_knight):
		// So we don't hit a dead knight
		if(other.state == "death") break;
		// Effects
		//if(first_strike) 
		//else if(second_strike)
		//else if(third_strike) 
		scr_hit_effect(knight_hitEffect);
		//scr_game_freeze(knight_gameFreeze);
		scr_hit_flash(knight_hitFlash, obj_knight);
			
		// Flash Enemy health for 2 seconds
		other.alarm[0] = 120; // 2 seconds = 2 * 60 (frames)
	break;
	#endregion
	#region Boss
	case (obj_boss_limbo):
		// So we don't hit a dead knight
		if(other.state == "death") break;
		// Effects
		//if(first_strike) 
		//else if(second_strike)
		//else if(third_strike) 
		//scr_hit_effect(knight_hitEffect);
		scr_game_freeze(knight_gameFreeze);
		scr_hit_flash(knight_hitFlash, obj_boss_limbo);
			
		// Flash Enemy health for 2 seconds
		other.alarm[0] = 120; // 2 seconds = 2 * 60 (frames)
	break;
	#endregion
	#region Crow
	case (obj_crow):
		// Effects
		//if(first_strike)  
		//if(second_strike)
		//if(third_strike)
		scr_hit_effect(crow_hitEffect);
		scr_hit_flash(crow_hitFlash, obj_crow);
			
		// Flash Enemy health for 2 seconds
		// The crow has very low health. don't expect it's health to show
		// It can't even last 2 seconds.
		other.alarm[0] = 120; // 2 seconds = 2 * 60 (frames)
			
		// When Crow is dead: bones splatter effect
		if(other.hp <= 0){
			other.state = "death";
		}
	break;
	#endregion
}

// Add that target to the hit objects checklist
ds_list_add(hit_objects, other);

// if lifeform is dying, never return it to knockback state. 
// We also can't make contact with it, nor will it lose any health
if(other.state != "death") {
	if(other.object_index != obj_boss_limbo)
		other.state = "knockback";
	other.knockback_speed = knockback * image_xscale;
	other.image_xscale = -image_xscale;
	// Hit connected: decrease HP
	other.hp -= damage;
}