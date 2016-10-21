///Collision_Check(object_to_check)
object_to_check = argument[0];
object_parent = object_get_name(object_get_parent(object_index));



//show_debug_message("Default collision code called for object " + object_get_name(object_index));
if (place_meeting(x-hsp,y,object_to_check))
   {

   while (!place_meeting(x-sign(hsp),y,object_to_check)) 
       {
        x -= sign(hsp); 
       }
       if (object_parent == "obj_Projectile") { hsp = hsp * -1; show_debug_message("vert bounce hsp now" + string(hsp)); } else { hsp =0; }
   }
   
   


//Vert collision

if (place_meeting(x,y-vsp,object_to_check))
   {

   while (!place_meeting(x,y-sign(vsp),object_to_check)){ y-=sign(vsp); }
   if (object_parent == "obj_Projectile")
   { 
   vsp = vsp * -1; 
   
   show_debug_message("vert bounce hsp now" + string(hsp));
   }
   
     else { vsp =0; }
   }
   
   


