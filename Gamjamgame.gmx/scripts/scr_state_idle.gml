
if (point_distance(x,y,origin_x,origin_y) > max_origin_distance) { current_state = states.return_origin;}

else {
move_speed = 2;
vsp = choose(-1,0,1) *move_speed;
hsp = choose(-1,0,1) *move_speed;
show_debug_message(current_state);
}
