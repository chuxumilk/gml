/// @description Insert description here
// You can write your code in this editor
event_inherited()

y -=hsp

if(y <=220){
	hsp = 0;
	shoot_timer--;
	if (shoot_timer <= 0) {
		
		shoot_timer = shoot_interval;
    
		var bullet = instance_create_depth(x+60, y+30, -1, obj_bullet_1_1);
		bullet.dir = current_angle;
		bullet.spd = 5;
    
		current_angle += angle_increment;
		if (current_angle >= 360) {
			current_angle -= 360;
		}

	}
}
