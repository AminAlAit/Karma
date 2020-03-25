// Counting all enemies
var enemy_count = instance_number(obj_enemy_parent_limbo);

// number of enemy spawns is tied to the player's kills. 
// Its one measure to stop overpopulating the room with enemies
if(instance_exists(obj_player_limbo) && enemy_count < obj_player_limbo.kills/4){
	
	// this forms random waves of enemies
	if(enemy_count >= irandom_range(5, 10)) exit;
	
	// higher probability for crows to be picked
	var enemy = choose(obj_knight, obj_crow, obj_crow);
	
	// bosses don't appear until you have more than 20 kills
	// and a boss obj does not exist
	if(obj_player_limbo.kills > 20 && !instance_exists(obj_boss_limbo)){
		enemy = choose(obj_crow, obj_crow, obj_crow, obj_knight, obj_knight, obj_boss_limbo);
	}
	
	// random X location for new spawns
	var new_x = random_range(220, room_width - 220);
	
	// only choose spawns 200 pixels further than the player
	while(point_distance(new_x, 0, obj_player_limbo.x, 0) < 200){
		var new_x = random_range(220, room_width - 220);
	}
	instance_create_layer(new_x, obj_player_limbo.y, "LifeForms", enemy);
}