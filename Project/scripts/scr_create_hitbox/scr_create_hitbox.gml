///@arg x
///@arg y
///@arg creator
///@arg sprite
///@arg knockback
///@arg lifespan
///@arg damage
///@arg xscale

var _x		  = argument0;
var _y		  = argument1;
var creator   = argument2;
var _sprite   = argument3;
var knockback = argument4;
var lifespan  = argument5;
var damage	  = argument6;
var xscale	  = argument7;

var hitbox			= instance_create_layer(_x, _y, "Instances", obj_hitbox_limbo);
hitbox.sprite_index = _sprite;
hitbox.creator		= creator;
hitbox.knockback	= knockback;
hitbox.alarm[0]		= lifespan;
hitbox.damage		= damage;
hitbox.image_xscale = xscale;