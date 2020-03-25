///@arg frame

var frame		= argument0;

var frame_range = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);

// Returns true when animation reaches the specified sprite/frame
return image_index >= frame && image_index < frame + frame_range;