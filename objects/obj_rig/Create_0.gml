// Inherit the parent event
event_inherited();  // 继承父对象属性
plant_id = "rig"; 
// 设置对象类型和精灵
event_user(0)

if shape == 1 {sprite_index = spr_rig_1;}
else if shape ==2 {sprite_index = spr_rig_2;}
else if shape ==3 {sprite_index = spr_rig_3;}
else {sprite_index = spr_rig;}

// ========== 特定属性默认值 ==========

attack_anim = 12;
idle_anim = 10
flash_speed = 5
plant_type = "normal"
is_slowdown = false
base_atk = atk

