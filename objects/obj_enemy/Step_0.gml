/// @description Insert description here
// You can write your code in this editor
var _player_set = instance_find(player_set,0)
if(place_meeting(x,y,player_set)){
	
	_player_set.visible = false; //碰到该物体后让玩家消失
	audio_play_sound(snd_death,0,false)
}
