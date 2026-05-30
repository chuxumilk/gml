/// @description Insert description here
// You can write your code in this editor


//动画播放速度10帧
sprite_set_speed(sprite_index, 10, spritespeed_framespersecond);

//运动属性

walk_speed = 7.0;
vsp = 0; //竖直
hsp = 0; //水平
jump_first = -17;
jump_second = -14.0;
jump_times = 2; //跳跃次数
grav = 0.8;


//角色属性
enabled = true;        // 是否启用（控制是否执行 Step 逻辑）
visible = true; 

//子弹
shoot_can = 20;




