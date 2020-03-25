event_inherited();

state = "chase";

hp = 1;
max_hp = hp;

image_speed = 0.5;
hspeed = random_range(2, 3);

if(instance_exists(obj_player_limbo)) hspeed *= sign(obj_player_limbo.x - x);		
image_xscale = sign(hspeed);

knockback  = 4;
damage	   = 5;
attacked   = false;
experience = 2;