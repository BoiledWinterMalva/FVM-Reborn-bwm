//function update_aurora_buff() {
//    var aura_exists = false;
//    var aura_factor = 1;

//    with (obj_aurora) {
//        if !aura_exists && grid_row == other.grid_row && array_get_index(atk_whitelist, other.plant_id) != -1 {
//            aura_exists = true;
//            aura_factor = atk / 100;
//        }
//    }

//    if aura_exists {
//        if !aurora_buff_active {
//            atk *= aura_factor;
//            aurora_buff_active = true;
//            aurora_buff_factor = aura_factor;
//        } else if aura_factor != aurora_buff_factor {
//            atk = atk / aurora_buff_factor * aura_factor;
//            aurora_buff_factor = aura_factor;
//        }
//    } else if aurora_buff_active {
//        atk = atk / aurora_buff_factor;
//        aurora_buff_active = false;
//        aurora_buff_factor = 1;
//    }
//}

function update_aurora_buff() {
    var total_factor = 0;
    var same_row_applied = false;
    var upper_row_applied = false;
    var lower_row_applied = false;

    with (obj_aurora) {
        if array_get_index(atk_whitelist, other.plant_id) != -1 {
            var row_delta = other.grid_row - grid_row;

            if row_delta == 0 && !same_row_applied {
                total_factor += atk / 100;
                same_row_applied = true;
            }
            else if (shape == 3 && abs(row_delta) == 1) {
                if row_delta == -1 && !upper_row_applied {
                    total_factor += atk / 100 * 0.2;
                    upper_row_applied = true;
                } else if row_delta == 1 && !lower_row_applied {
                    total_factor += atk / 100 * 0.2;
                    lower_row_applied = true;
                }
            }
        }
    }

    if total_factor > 0 {
        if !aurora_buff_active {
            atk *= total_factor;
            aurora_buff_active = true;
            aurora_buff_factor = total_factor;
        } else if total_factor != aurora_buff_factor {
            atk = atk / aurora_buff_factor * total_factor;
            aurora_buff_factor = total_factor;
        }
    } else if aurora_buff_active {
        atk = atk / aurora_buff_factor;
        aurora_buff_active = false;
        aurora_buff_factor = 1;
    }
}