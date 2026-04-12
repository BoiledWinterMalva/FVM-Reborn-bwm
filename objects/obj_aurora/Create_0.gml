event_inherited();  // 继承父对象属性
plant_id = "aurora"; 

event_user(0)
sprite_index = spr_aurora;
if shape == 1{
	sprite_index = spr_aurora_1
}
else if shape == 2{
	sprite_index = spr_aurora_2
}
else if shape == 3{
	sprite_index = spr_aurora_3
}

// ========== 特定属性默认值 ==========

attack_anim = 0;
idle_anim = 12
flash_speed = 10
plant_type = "normal"
is_slowdown = false
atk_modified_card_list = [];
atk_whitelist = ["egg_boiler_pult", "chocolate_pult", "ice_egg_boiler_pult", "salad_pult", "stinky_tofu_pult", "gaia","grilled_lizard_pult","zhurong","thor"];
same_row_buff_value = atk/100
adj_row_buff_value = 0.2*same_row_buff_value

