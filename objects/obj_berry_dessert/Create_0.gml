event_inherited();  // 继承父对象属性
plant_id = "berry_dessert"; 

event_user(0)
sprite_index = spr_berry_dessert;
if shape == 1{
	sprite_index = spr_berry_dessert_1
}
else if shape == 2{
	sprite_index = spr_berry_dessert_2
}

// ========== 特定属性默认值 ==========

attack_anim = 0;
idle_anim = 12
flash_speed = 5
plant_type = "normal"
is_slowdown = false
atk_modified_card_list = [];
atk_whitelist = ["takoyaki", "cold_drew"];

