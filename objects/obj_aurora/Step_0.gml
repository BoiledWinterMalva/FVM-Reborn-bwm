if global.is_paused{
	exit
}
event_inherited(); 
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

//with (obj_card_parent) {
//    // 只作用于自己这一排，排除自身，并且只对白名单单位生效
//    if (grid_row == other.grid_row && id != other.id && array_get_index(other.atk_whitelist, plant_id) != -1) {

//        // 防止重复增伤
//        if (array_get_index(other.atk_modified_card_list, id) == -1) {
//            atk = atk * (other.atk / 100); // 增伤倍率，例如 atk = 130 表示 130%
//            array_push(other.atk_modified_card_list, id);
//        }
//    }
//}


