var layer_id	  = layer_get_id("Background_1");
var background_id = layer_background_get_id(layer_id);
layer_background_blend(background_id, close_gray);

layer_id	  = layer_get_id("Background_2");
background_id = layer_background_get_id(layer_id);
layer_background_blend(background_id, far_gray);

global.view_w = camera_get_view_width(view_camera[0]);

// ---------------------------------------------------------- //

// set speeds
