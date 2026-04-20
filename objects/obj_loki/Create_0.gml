event_inherited();

plant_id = "loki"; 

event_user(0)

sprite_index = spr_loki;
if shape == 1{
	sprite_index = spr_loki_1
}
else if shape == 2{
	sprite_index = spr_loki_2
}
else if shape == 3{
	sprite_index = spr_loki_3
}

// ========== 特定属性默认值 ==========

attack_anim = 0;
idle_anim = 10
flash_speed = 5
plant_type = "normal"
is_slowdown = false

// ========== 初始化增伤数据 ==========

buffer_type = "shooter"