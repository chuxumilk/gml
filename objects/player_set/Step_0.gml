//初始运动逻辑
var key_jump = keyboard_check_pressed(vk_shift);
var key_jump_hold = keyboard_check(vk_shift);
var key_spawn = keyboard_check(ord("R"))
var key_shoot = keyboard_check_pressed(ord("Z"))
hsp = (keyboard_check(vk_right) - keyboard_check(vk_left)) * walk_speed;

//水平运动
if (place_meeting(x+hsp,y,obj_block)){

	while(!place_meeting(x+sign(hsp),y,obj_block)){ //如果前方没有障碍物的话
		x += sign(hsp); //感觉前面有障碍就开始逼近，真的接触到的时候就hsp为0停止运动
						//不按的话，那么sign(hsp)为0，那么就不会进入判定
	}
	hsp = 0;
}
else{
	x += hsp;
}
//重力模拟
vsp += grav;

//垂直运动
if(place_meeting(x,y+vsp,obj_block)){
	
	while(!place_meeting(x,y+sign(vsp),obj_block)){	
		y += sign(vsp)
	}
	vsp = 0;	
}	
else{
	y +=vsp;
}

//跳跃

on_ground = place_meeting(x,y+1,obj_block)
if(on_ground){ jump_times = 2;}
if(on_ground && key_jump){
	
	
	audio_play_sound(snd_jump, 0, false);
	vsp =jump_first;
	jump_times--;
}
else if(key_jump && jump_times>=1){
	
	audio_play_sound(snd_djump, 0, false);
	vsp =jump_second;
	jump_times--;
}
//终止跳跃
if (vsp < 0 && !key_jump_hold){
	vsp *=0.45;
}

// 角色动画
if(hsp< 0){
	sprite_index = player_run;
	image_xscale = -1;
}
else if(hsp > 0){
	sprite_index = player_run;
	image_xscale = 1;
	
}
else if(hsp = 0){
	sprite_index = player_stay;
}

//重生
if(!visible){
	instance_create_depth(800,608,-100,obj_dead)                                                                                                                                                                                                                                                                                                                                                                                                    
	x = 0; //给人随便干到一个地方
	y = 0;
	hsp = 0;
	vsp = 0;
	if(key_spawn){
		//直接重置房间就可以啦
		if(global.save_room != noone && global.save_room!=room){
			room_goto(global.save_room)
		}
		else{
			room_restart();
		}
		
		
		/*visible = true;
		//x = spawn_x; 
		//y = spawn_y;
		instance_destroy(obj_dead)*/
	
	}
}

//射击相关

if(shoot_can !=20){   //射击冷却
	shoot_can +=1
}

if(key_shoot && shoot_can == 20){
	
	var bullet;
	shoot_can = 0;
	if(image_xscale == 1){
		bullet = instance_create_depth(x+20, y+6,-100, player_shoot);
		audio_play_sound(snd_shoot,0,false);
		bullet.dir=0;
	}
	else if(image_xscale == -1){
		bullet = instance_create_depth(x-20, y+6,-100, player_shoot);
		audio_play_sound(snd_shoot,0,false);
		bullet.dir=180;
	}
}