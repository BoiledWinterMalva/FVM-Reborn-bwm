if global.is_paused{
	exit
}

event_inherited(); 

// 构建一次增伤数据（范围、倍率）
if !buff_cells_refreshed {
	refresh_buff_cells();
	global.buff_dirty = true;
	buff_cells_refreshed = true
}

var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

if (global.is_paused || is_frozen) exit;
event_inherited();

if (id == instance_find(obj_aurora, 0)) {


    with (obj_card_parent) {
        var is_whitelisted = false;
        
        for (var i = 0; i < array_length(other.atk_whitelist); i++) {
            if (plant_id == other.atk_whitelist[i]) {
                is_whitelisted = true; 
                break;
            }
        }

        if (is_whitelisted) {
              if (!variable_instance_exists(id, "original_atk") || original_atk == -1) {
                  original_atk = atk;
              }
            
            // 每一帧清空身上的光环标签
            has_same_row_amp = false;
            adj_amp_count = 0;
        }
    }

    // =========================================================
    // 阶段 2：遍历全场增幅器，给对应植物盖章贴标签
    // =========================================================
    with (obj_aurora) {
        var my_row = grid_row;
        var my_shape = shape;

        with (obj_card_parent) {
            if (variable_instance_exists(id, "original_atk")) {
                
                // 判定 1：同行的增幅（只要有增幅器在同行，就打上标记，不累加）
                if (grid_row == my_row) {
                    has_same_row_amp = true;
                }

                // 判定 2：上下行的增幅（只有形态 3 才提供）
                if (my_shape == 3) {
                    if (grid_row == my_row - 1 || grid_row == my_row + 1) {
                        adj_amp_count += 1; // 记录身边有几个高阶增幅器
                    }
                }
            }
        }
    }

    // =========================================================
    // 阶段 3：结算最终倍率，发放实际攻击力
    // =========================================================
    with (obj_card_parent) {
        if (variable_instance_exists(id, "original_atk")) {
            
            var total_multiplier = 1.0; // 基础伤害 100%

            // 1. 结算同行增幅 (不可叠加，有就有 +20%)
            if (has_same_row_amp) {
                total_multiplier += other.same_row_buff_value;
            }

            adj_amp_count = min(adj_amp_count, 2);
            
            // 加上相邻行的增幅倍率
            total_multiplier += (adj_amp_count * other.adj_row_buff_value);

            // 4. 将计算好的终极倍率，乘上它的原始攻击力！
            atk = original_atk * total_multiplier;
        }
    }
}

