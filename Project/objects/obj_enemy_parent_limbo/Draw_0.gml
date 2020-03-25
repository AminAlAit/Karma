// Drawing hitflash
if(alarm[1] > 0){
	gpu_set_fog(true, c_white, 0, 0);
	draw_self();
	gpu_set_fog(false, c_white, 0, 0);
}
else draw_self();

// exit if enemy is dead: don't execute any of the code below
if(state == "death") exit;

// Drawing healthbar
if(alarm[0] > 0){
	var height = sprite_height;
	var x1 = x - 12;
	var y1 = y - height;
	var x2 = x - 12 + ((hp/max_hp) * 24);
	var y2 = y - (height - 2);
	draw_rectangle_color(x1, y1, x2, y2, c_white, c_white, c_white, c_white, false);
	draw_sprite(spr_enemy_healthbar, 0, x1, y1);
}