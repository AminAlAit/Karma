switch(state){
	#region Chase State
	case "chase":
		if(!instance_exists(obj_player_limbo)) break;
		
		// if player is nearby and isn't rolling and crow hasn't been attacked
		if(place_meeting(x, y, obj_player_limbo) && obj_player_limbo.state != "roll" && attacked = false){
			scr_create_hitbox(x, y, id, sprite_index, knockback, 1, damage, image_xscale);
			attacked = true;
		}
		if(attacked) vspeed = -1;
	break;
	#endregion
	#region Knockback State
	case "knockback":
		// It never reaches this state. 
		// I wrote it and left it empty just for precaution.
	break;
	#endregion
	#region Death & Feather Particles
	case "death":
		var rand_x = random_range(-4, 4);
		var rand_y = random_range(-4, 4);
		height_fromGround = 16;
		repeat(random_range(4,8))
			instance_create_layer(x + rand_x, y + rand_y - height_fromGround, "Particles", obj_feather);
		instance_destroy();
	break;
	#endregion
}