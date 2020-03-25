// Used at the knight's knockback state
randomize();

// Runs the Create event for the parent
event_inherited();

hp = 10;
max_hp = hp;

experience = 5;

state	    = "chase";
chase_range = 42;
x_chase_speed = 1;
y_chase_speed = 0;