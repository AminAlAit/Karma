if (!instance_exists(obj_player_limbo)) exit;

var dir = point_direction(x, y, obj_player_limbo.x, obj_player_limbo.y);
var acceleration = 0.25;
motion_add(dir, acceleration);

var max_speed = 6;
if(speed > max_speed){
	speed = max_speed;
}	