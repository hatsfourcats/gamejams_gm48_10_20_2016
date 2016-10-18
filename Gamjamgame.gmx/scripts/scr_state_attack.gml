#define scr_state_attack
laser_cutoff = 32;

if (enemy_target == "none") 
    {
    state = states.idle;    
    }
    
if (enemy_target != "none" && instance_exists(enemy_target)) {    

    

    dir = point_direction(x,y,enemy_target.x,enemy_target.y);
    direction = round(dir);
    
        if (shot_cooldown < 1) { 
//        point_distance

         
          
            laser = instance_create(x+lengthdir_x(32,direction) ,y+lengthdir_y(32,direction),obj_laser);
            colliding_with_solid = collision_line(x,y,enemy_target.x,enemy_target.y,obj_Solid,false,true);
            shot_cooldown = default_shot_cooldown;   
            
   //         distance_to_point
   
            if (colliding_with_solid) { 
            show_debug_message( string(distance_to_point(colliding_with_solid.x)));
            // minus or plus 10 
            //lengthdir_x(16,(direction *-1));
                laser.target_x = colliding_with_solid.x - laser_cutoff;
                laser.target_y = colliding_with_solid.y - laser_cutoff;
                
               /* 
                show_debug_message("X: " + string(x));
                  show_debug_message("y: " + string(y));               
                  show_debug_message("collX: " + string(colliding_with_solid.x ));
                  show_debug_message("cikkY: " + string(colliding_with_solid.y )); 
                  show_debug_message("laserX: " + string(laser.target_x));
                  show_debug_message("layserY: " + string(laser.target_y ));   */
                }
            
            else {
            
            // include accuracy here which goes up with player speed.
            
                laser.target_x = obj_player.x;
                laser.target_y = obj_player.y;
                hit = instance_create(enemy_target.x, enemy_target.y,obj_hit);
                
                
                }
}                
 
       else {
        
          shot_cooldown -= shot_cooldown_decay;
           } 
}    



#define script4
