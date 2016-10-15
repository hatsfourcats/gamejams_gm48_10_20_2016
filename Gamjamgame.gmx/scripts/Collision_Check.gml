///Collision_Check(object_to_check)
object_to_check = argument[0];
object_parent = object_get_name(object_get_parent(object_index));
//Horiz collision


if (place_meeting(x-hsp,y,object_to_check))
   {
   while (!place_meeting(x-sign(hsp),y,object_to_check)) 
       
       { x -= sign(hsp);  }
       
  
    if (object_parent == "obj_Enemy") { hsp = hsp *-1; } 
    else {hsp =0;}  
   }
   
   


//Vert collision

if (place_meeting(x,y-vsp,object_to_check))
   {
   while (!place_meeting(x,y-sign(vsp),object_to_check)){ y-=sign(vsp); }
   if(object_parent == "obj_Enemy") {   vsp = vsp *-1; }
   else { vsp = 0;}

   }
