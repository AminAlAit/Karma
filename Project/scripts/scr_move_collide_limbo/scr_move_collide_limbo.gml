///@arg xSpeed
///@arg ySpeed
var _xspeed = argument0;
var _yspeed = argument1;


if (!place_meeting(x + _xspeed, y, obj_wall_limbo)){
	x += argument0;
}
if (!place_meeting(x, y + _yspeed, obj_wall_limbo)){
	y += argument1;
}
	