///scr_Projectile_collision()

if place_meeting(x,y,obj_Solid) {
speed = 0;
direction = direction + random_range(40,50);
speed = default_speed;
	if instance_number(obj_laser) < global.projectile_max {

	laser = instance_create(x,y,obj_laser);
	laser.target_x = random(room_width);
	laser.target_y = random(room_height);
		

	}

}

