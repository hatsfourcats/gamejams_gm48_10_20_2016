
if (point_distance(x,y,origin_x,origin_y) > max_origin_distance) { current_state = states.return_origin;}

else {
sign_vsp = sign(vsp);
reverse_direction = sign_vsp *-1;
sign_hsp = sign(hsp);
reverse_direction = sign_hsp *-1;

vsp = choose(sign_vsp,sign_vsp,reverse_direction,0) *move_speed;
hsp = choose(sign_hsp,sign_hsp,reverse_direction,0) *move_speed;
show_debug_message("VSP: " + string(vsp));
show_debug_message("HSP: " + string(hsp));
}
