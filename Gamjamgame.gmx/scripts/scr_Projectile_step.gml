hsp = -move_speed * sign(target_x - x);
vsp = -move_speed  * sign(target_y - y);

scr_collision_check(obj_Solid);
x -=hsp;
y -=vsp;
