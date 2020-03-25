/// Approach(a, b, amount)
// Moves "a" towards "b" by "amount" and returns the result
// Nice bcause it will not overshoot "b", and works in both directions
// Examples:
//      speed = Approach(speed, max_speed, acceleration);
//      hp = Approach(hp, 0, damage_amount);
//      hp = Approach(hp, max_hp, heal_amount);
//      x = Approach(x, target_x, move_speed);
//      y = Approach(y, target_y, move_speed);

///@arg current_value
///@arg target_value
///@arg change_amount
var current_value = argument0;
var target_value  = argument1;
var change_amount = argument2;

if(current_value < target_value){
	current_value += change_amount;
	current_value  = min(current_value, target_value);
}
else {
	current_value -= change_amount;
	current_value  = max(current_value, target_value);
}

return current_value;