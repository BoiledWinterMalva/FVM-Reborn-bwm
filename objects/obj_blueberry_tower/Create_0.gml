event_inherited();  // 继承父对象属性
plant_id = "blueberry_tower"; 
event_user(0)
sprite_index = spr_blueberry_tower;

// ========== 特定属性默认值 ==========

attack_anim = 0;
idle_anim = 14
flash_speed = 5
plant_type = "normal"
is_slowdown = false

// ========== 初始化增伤数据 ==========
atk_whitelist = ["egg_boiler_pult", "chocolate_pult", "ice_egg_boiler_pult", "salad_pult", "stinky_tofu_pult", "gaia","grilled_lizard_pult","zhurong"];// 暂时无用

buff_type = "thrower"
buff_value = atk/100
buff_shape = "row";
buff_cells = build_buff_cells(grid_col, grid_row, buff_shape, buff_value);
buff_cells_refreshed = false;
