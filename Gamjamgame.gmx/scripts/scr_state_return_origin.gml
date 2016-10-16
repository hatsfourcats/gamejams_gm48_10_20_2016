




distance_to_origin = point_distance(x,y,origin_x,origin_y);

show_debug_message(string("OriginX: "+string(origin_x)+"Originy: "+string(origin_y)));
show_debug_message("Distance to origin is: " + string(distance_to_origin));
show_debug_message("Min origin dist is" + string(min_origin_distance));
show_debug_message("Max origin dist is" + string(max_origin_distance));
show_debug_message("state is" + string(current_state));



// this paralyze enemy. 
/*riginX: 224Originy: 544
Distance to origin is: 189.31
Min origin dist is128
Max origin dist is256
state is3 */
if distance_to_origin < min_origin_distance

    { 
    show_debug_message("Setting state to idle " );
    current_state = states.idle; 
    
    }

if (distance_to_origin > min_origin_distance) 

{

// this needs to read x,y distances 
var x_distance = x - origin_x;
var y_distance = y - origin_y;


if (abs(x_distance) <= move_speed) { hsp += random_range(-move_speed,move_speed); show_debug_message("HSP is: " +string(hsp)) } 
else if(abs(x_distance) >= move_speed) { hsp += sign(x_distance) * move_speed; show_debug_message("HSP is: " +string(hsp));} 

if (abs(y_distance) <= move_speed) { vsp += random_range(-move_speed,move_speed); show_debug_message("VSP is: " +string(vsp));} 
else if(abs(y_distance) >= move_speed) { vsp += sign(y_distance) * move_speed; show_debug_message("VSP is: " +string(vsp)); } 
//show_debug_message("shouldn't see this");

//hsp -= (sign(x- origin_x)) * move_speed;
//vsp -= (sign(y- origin_y))* move_speed;

}



