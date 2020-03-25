///@arg duration
///@arg target

var duration = argument0;
var target	 = argument1.object_index;

switch(target){
	#region Player
	case (obj_player_limbo):
		alarm[0] = duration;
	break;
	#endregion
	#region Enemy & Crow
	case (obj_crow):
	case (obj_knight):
	case (obj_boss_limbo):
		alarm[1] = duration;
	break;
	#endregion
}