///scr_Projectile_collision()

if place_meeting(x,y,obj_Solid) {
show_debug_message("meet, direction is " + string(direction));
direction *=-1;

}
