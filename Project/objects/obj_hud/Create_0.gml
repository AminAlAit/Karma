var view_id		= view_camera[0];
var view_width  = camera_get_view_width(view_id);
var view_height = camera_get_view_height(view_id);

display_set_gui_size(view_width, view_height);

if(!instance_exists(obj_player_limbo)) exit;
draw_hp = obj_player_limbo.hp;
draw_max_hp = obj_player_limbo.max_hp;
draw_set_font(font_gui_limbo);