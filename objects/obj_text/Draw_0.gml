/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var _player_set = instance_find(player_set,0);
draw_text(x,y,"speed:  " + string(_player_set.hsp));
draw_text(x,y+20, "vsp_speed:  " + string(_player_set.vsp));
draw_text(x,y+40, "jump_times:  " + string(_player_set.jump_times));
draw_text(x,y+60, "shoot:  " + string(_player_set.shoot_can));
draw_text(x,y-20, "save_x:  " + string(global.save_x) +"save_y:  " + string(global.save_y) + "save_room:  " + string(global.save_room));



