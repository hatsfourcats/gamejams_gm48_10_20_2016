show_debug_message(string("OriginX: "+string(origin_x)+"Originy: "+string(origin_y)));


distance_to_origin = point_distance(x,y,origin_x,origin_y)
if distance_to_origin < min_origin_distance{ current_state = states.idle; }

if (distance_to_origin > min_origin_distance) 

{

show_debug_message("Point distance is: " + string(distance_to_origin));
hsp -= (sign(origin_x - x)) * move_speed;
vsp -= (sign(origin_y -y))* move_speed;

}



