if !instance_exists(other) exit;

// Play swipe audio
audio_play_sound(snd_expr, 10, false);
		
with (other){
	experience += 1;
	if(experience >= max_experience){
		level += 1;
		experience = experience - max_experience;
		max_experience += max_experience;
		max_hp += 5;
		hp = max_hp;
		strength += 5;
	}
}
instance_destroy();