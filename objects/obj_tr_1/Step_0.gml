/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,player_set)){

	obj_attack_up_move1.triggered1 = true;
	second_fuck = true;
}

if(place_meeting(x,y,player_set) && second_fuck == true){

	shit_1+=20;
	if(shit_1 >=150){
		obj_attack_up_move1.triggered2 = true;
		third_fuck = true;
		
	}
}
if(place_meeting(x,y,player_set) && third_fuck == true){

	shit_2 +=20;
	if(shit_2 >=350){
		
		audio_play_sound(snd_spike_trap,0,false)
		instance_create_depth(x,y,-1,obj_zhuhaoyang2)
		instance_destroy(obj_tr_1)
	}
}


