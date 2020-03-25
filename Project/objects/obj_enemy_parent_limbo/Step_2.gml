if (hp < 0 && state != "death"){
	state = "death";
	
	// All enemies release experience
	repeat(experience){
		instance_create_layer(x + random_range(-4, 4), y + random_range(-4, 4), "Particles", obj_experience);
	}
}