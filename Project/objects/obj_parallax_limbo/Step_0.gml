if(!instance_exists(obj_player_limbo)) exit;

var cam_x = camera_get_view_x(view_camera[0]);
var player_pos = cam_x + 180;


layer_x("Background_1", player_pos / 3.2); // close
layer_x("Background_2",	player_pos / 2.5); // far
layer_x("Background_3",	player_pos / 1.1); // very far