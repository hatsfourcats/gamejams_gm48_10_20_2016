#define scr_state_attack
laser_cutoff = 32;

if (enemy_target == "none") 
    {
    state = states.idle;    
    }
    
if (enemy_target != "none" && instance_exists(enemy_target)) {    

    

    dir = point_direction(x,y,enemy_target.x,enemy_target.y);
    
    direction = dir;
   //test 
        if (shot_cooldown < 1) { 

// all this should be somewhere else i think. state should just tell it to fire, fire should be defined somewhere else
            //colliding_with_solid = collision_line(x,y,enemy_target.x,enemy_target.y,obj_Solid,true,true);       
            shot_cooldown = default_shot_cooldown;   
            

                     laser = instance_create(x+lengthdir_x(32,direction) ,y+lengthdir_y(32,direction),obj_laser);
                     
                     laser.target_x = enemy_target.x;                         
                     laser.target_y = enemy_target.y;
                     laser.origin_x = x+lengthdir_x(32,direction);
                     laser.origin_y = y+lengthdir_y(32,direction);
//                 show_debug_message("solid X: " + string(colliding_with_solid.x));
  //                show_debug_message( "solid Y:" + string(colliding_with_solid.y));

                  show_debug_message("laser X: " + string(laser.target_x ));
                  show_debug_message( "laser Y:" + string(laser.target_y ));
            //lengthdir_x(16,(direction *-1));
                
               /* 
                show_debug_message("X: " + string(x));
                  show_debug_message("y: " + string(y));               
                  show_debug_message("collX: " + string(colliding_with_solid.x ));
                  show_debug_message("cikkY: " + string(colliding_with_solid.y )); 
                  show_debug_message("laserX: " + string(laser.target_x));
                  show_debug_message("layserY: " + string(laser.target_y ));   */
                }
            
                
                
 
       else {
        
          shot_cooldown -= shot_cooldown_decay;
           } 
}    



#define script4
