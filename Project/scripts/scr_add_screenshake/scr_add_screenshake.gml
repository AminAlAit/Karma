///@arg intensity
///@arg duration

var intensity = argument0;
var duration   = argument1;

if(!instance_exists(obj_cam)) exit;
with(obj_cam){
	screenshake = intensity;
	alarm[0]	= duration;
}