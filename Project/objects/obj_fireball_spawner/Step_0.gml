/// @description Insert description here
// You can write your code in this editor

if (timer % 10 == 0) {
	xx = irandom_range(left, right);
	with(instance_create_layer(xx, up, "Fireball", obj_fireball)) {
		//speed = 10;	
		direction = point_direction(other.xx, other.up, irandom_range(other.left, other.right), 350);
		image_angle = direction;
	}
}

timer++;