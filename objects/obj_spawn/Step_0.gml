/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,player_shoot)){
	
	image_index = 1;
	image_time = 10;
	
	//设置全局重生点
	global.save_x = x;
	global.save_y = y;
	global.save_room = room;
}

if(image_time == 0){
	
		image_index = 0;
	}
	else{
		image_time--;
	}
