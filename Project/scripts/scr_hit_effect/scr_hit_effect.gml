///@arg intensity

var intensity = argument0;

repeat (intensity) instance_create_layer(other.x, other.y - 12, "Particles", obj_hit_effect);

third_strike = false;