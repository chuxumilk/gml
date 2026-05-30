/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y,player_set)){

	obj_attack_up_move1.triggered1 = true;
	second_fuck = true;
}

if(place_meeting(x,y,player_set) && second_fuck == true){

	shit +=20;
	if(shit >=150){
		obj_attack_up_move1.triggered2 = true;
		instance_destroy(obj_tr_1)
	}
}

