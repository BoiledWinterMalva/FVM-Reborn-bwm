/// @function update_berry_dessert_buff()
/// @desc 3x3范围内白名单卡片获得攻击提升（不叠加，只取一个来源）
function update_berry_dessert_buff() {

    var found = false;
    var new_factor = 1;

    with (obj_berry_dessert) {

        // 白名单判断（作用到 other）
        if array_get_index(atk_whitelist, other.plant_id) != -1 {

            var col_delta = abs(other.grid_col - grid_col);
            var row_delta = abs(other.grid_row - grid_row);
			
			var range = (shape >= 1) ? 2 : 1;

            // 3x3范围
            if (col_delta <= range && row_delta <= range) {

                new_factor = atk / 100;
                found = true;

                // 找到一个就够了，直接退出
                break;
            }
        }
    }

    /// ===== 应用buff =====
    if (found) {

        if (!berry_buff_active) {
            atk *= new_factor;
            berry_buff_active = true;
            berry_buff_factor = new_factor;
        }
        else if (new_factor != berry_buff_factor) {
            atk = atk / berry_buff_factor * new_factor;
            berry_buff_factor = new_factor;
        }

    } else if (berry_buff_active) {

        atk = atk / berry_buff_factor;
        berry_buff_active = false;
        berry_buff_factor = 1;
    }
}