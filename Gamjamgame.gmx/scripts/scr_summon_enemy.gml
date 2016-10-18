chance = random(100);


if (instance_number(obj_Enemy) < 10) 

{ 
random_x = random(room_width-28);
random_y = random(room_height-28);

if (!collision_rectangle(x-28,y-28,x+28,y+28,all,false,false)){
show_debug_message("crating enemy at" + string(random_x));
instance_create(random_x,random_y,obj_enemy_sigil);


}

}

