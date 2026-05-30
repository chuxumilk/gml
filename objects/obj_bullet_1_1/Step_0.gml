/// @description Insert description here
// You can write your code in this editor
event_inherited()

x += lengthdir_x(spd, dir);
y += lengthdir_y(spd, dir);

life_timer--;
if (life_timer <= 0) {
    instance_destroy();
    exit;
}

// 碰到墙壁消失
if (place_meeting(x, y, obj_block)) {
    instance_destroy();
    exit;
}