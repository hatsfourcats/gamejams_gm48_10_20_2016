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


            colliding_with_solid = collision_line(enemy_target.x,enemy_target.y,x,y,obj_Solid,false,true);       
            shot_cooldown = default_shot_cooldown;   
            

   
            if (colliding_with_solid) { 

                     laser = instance_create(x+lengthdir_x(32,direction) ,y+lengthdir_y(32,direction),obj_laser);
                     
                     laser.target_x = colliding_with_solid.x - (laser_cutoff * sign(colliding_with_solid.x - x));                         ;
                     laser.target_y = colliding_with_solid.y - (laser_cutoff * sign(colliding_with_solid.y - y));
                
                 show_debug_message("solid X: " + string(colliding_with_solid.x));
                  show_debug_message( "solid Y:" + string(colliding_with_solid.y));

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
            
            // include accuracy here which goes up with player speed.
                laser = instance_create(x+lengthdir_x(32,direction) ,y+lengthdir_y(32,direction),obj_laser);
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
