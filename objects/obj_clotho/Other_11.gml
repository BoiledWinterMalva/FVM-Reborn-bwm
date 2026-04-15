var level_offset = clotho_get_random_level(shape)

var col_offset = (shape >= 2)?2:1
var row_offset = 1
if shape == 2 row_offset = 2;
else if shape == 3 row_offset = 3;

var max_level_offset = 0
if shape == 2 max_level_offset = 1;
else if shape == 3 max_level_offset = 2;

with(obj_card_parent){
	if (plant_id != "clotho" && plant_id != "player"
	&& grid_col <= other.grid_col + col_offset
	&& grid_col >= other.grid_col - col_offset
	&& grid_row <= other.grid_row + row_offset
	&& grid_row >= other.grid_row - row_offset){
		
		var new_level = clamp(current_level + level_offset, 0, 16 + max_level_offset)
		if new_level >= 17 && array_contains(other.gold_cards, plant_id){
			if plant_id == "gaia" {
				atk = (new_level == 18)? 2535:1950;
				base_atk = (new_level == 18)? 2535:1950;
				base_cycle = (new_level == 18)? 5*60:7*60;
			} else if plant_id == "aurora" {
				atk = (new_level == 18)? 962:897;
				base_atk = (new_level == 18)? 962:897;
				buff_value = (new_level == 18)? 9.62:8.97;
				global.buff_dirty = true;
			} else if plant_id == "zhurong" {
				atk = (new_level == 18)? 335:239;
				base_atk = (new_level == 18)? 335:239;
			} else if plant_id == "rig" {
				atk = (new_level == 18)? 3333:2225;
				base_atk = (new_level == 18)? 3333:2225;
			}
			if instance_exists(banding_star_obj){
				banding_star_obj.sprite_index = (new_level == 18)? spr_star_18 : spr_star_17;
			}
		} else {
			current_level = min(new_level, 16)
		
			var upgrade_data = get_plant_data_with_skill(plant_id, shape, current_level, skill);
			if (upgrade_data != undefined) {
			    hp = upgrade_data[? "hp"];
				max_hp = hp
			    cost = upgrade_data[? "cost"];
				atk = upgrade_data[? "atk"];
			    base_atk = upgrade_data[? "atk"];
			    range = upgrade_data[? "range"];
			    cooldown = upgrade_data[? "cooldown"];
			    base_cycle = upgrade_data[? "cycle"];
        
			    // 获取自定义属性（如果存在）
			    if (ds_map_exists(upgrade_data, "flame_produce")) {
			        flame_produce = upgrade_data[? "flame_produce"];
			    }
				if (ds_map_exists(upgrade_data, "first_produce_delay")) {
			        first_produce_delay = upgrade_data[? "first_produce_delay"];
			    }
			
				if instance_exists(banding_star_obj){
					var star_spr = -1;
					switch current_level{
						case 4:star_spr = spr_star_4;break;
						case 5:star_spr = spr_star_5;break;
						case 6:star_spr = spr_star_6;break;
						case 7:star_spr = spr_star_7;break;
						case 8:star_spr = spr_star_8;break;
						case 9:star_spr = spr_star_9;break;
						case 10:star_spr = spr_star_10;break;
						case 11:star_spr = spr_star_11;break;
						case 12:star_spr = spr_star_12;break;
						case 13:star_spr = spr_star_13;break;
						case 14:star_spr = spr_star_14;break;
						case 15:star_spr = spr_star_15;break;
						case 16:star_spr = spr_star_16;break;
					}
			
					banding_star_obj.sprite_index = star_spr;
				}
			}
		}
		var inst = instance_create_depth(x,y,depth-1,obj_clotho_star_effect)
		if level_offset < 0 {
			inst.sprite_index = spr_clotho_star_drop;
		} else if other.shape == 3{
			inst.sprite_index = spr_clotho_star_up_1;
		} else {
			inst.sprite_index = spr_clotho_star_up;
		}
		switch abs(level_offset){
			case 1: inst.state = 0;break;
			case 2: inst.state = 1;break;
			case 3: inst.state = 2;break;
			case 4: inst.state = 3;break;
			case 5: inst.state = 4;break;
		}
	}
}