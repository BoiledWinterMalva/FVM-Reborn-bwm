event_inherited();  // 继承父对象属性
plant_id = "cold_drew"; 
// 设置对象类型和精灵
event_user(0)
sprite_index = spr_cold_drew_machine;
if shape == 1{
	sprite_index = spr_cold_drew_machine_1;
}
else if shape == 2{
	sprite_index = spr_cold_drew_machine_2;
}
// ========== 特定属性默认值 ==========

attack_anim = 12;
idle_anim = 12
flash_speed = 5
plant_type = "normal"
is_slowdown = false
target_type = "throw"

target = noone
max_targets = 4