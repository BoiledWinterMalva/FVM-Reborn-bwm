if !instance_exists(obj_battle){
	instance_destroy()
}

//增益系统更新触发器
if (global.buff_dirty) {
	reset_aurora_grid();
    rebuild_buff_grid();
	global.buff_apply_id++
    global.buff_dirty = false;
	show_debug_message("buff地图更新")
}

if !shield_replaced {
	if global.save_data.equipped_items.secondary_weapon.id == "master_shield" {
		if instance_exists(obj_player_shield){
			var target_item = obj_player_shield;
			var new_shield = instance_create_depth(target_item.x, target_item.y, target_item.depth, obj_master_shield);
			new_shield.parent_player = target_item.parent_player;
			new_shield.grid_row = target_item.grid_row;
			new_shield.grid_col = target_item.grid_col;
			instance_destroy(obj_player_shield);
			shield_replaced = true;
		}
	} else {
		shield_replaced = true;
	}
}

if buff_timer > 0 {
	buff_timer--;
} else {
	with(obj_card_parent){
		if self.plant_id != "player" {
			
			var just_initialized = false;
			// 懒初始化 base_atk
	        if (!variable_instance_exists(self.id, "base_atk")) {
	            var upgrade_data = get_plant_data_with_skill(self.plant_id, self.shape, self.current_level, self.skill);
			    self.base_atk = (upgrade_data != undefined) ? upgrade_data[? "atk"] : self.atk;
			    just_initialized = true;
	        }
			
			// 懒初始化 base_cycle
	        if (!variable_instance_exists(self.id, "base_cycle")) {
	            var upgrade_data = get_plant_data_with_skill(self.plant_id, self.shape, self.current_level, self.skill);
			    self.base_cycle = (upgrade_data != undefined) ? upgrade_data[? "cycle"] : self.cycle;
			    just_initialized = true;
	        }
			
			// 懒初始化 buff_type
	        if (!variable_instance_exists(self.id, "buff_type")) {
	            self.buff_type = mod_get_buff_type(self.plant_id);
				just_initialized = true;
	        }
			
			// 懒初始化 buff_applied_id
	        if (!variable_instance_exists(self.id, "buff_applied_id")) {
	            self.buff_applied_id = -1;
				just_initialized = true;
	        }
			
			// 懒初始化 shield_buffed
			if !variable_instance_exists(self.id, "buffer_type") {
	        if !variable_instance_exists(self.id, "shield_buffed") {
	            var shield_buff = global.shield_grid[self.grid_col][self.grid_row] + 1;
				self.base_atk = self.base_atk * shield_buff;
				self.shield_buffed = true;
				just_initialized = true;
	        } else if !self.shield_buffed {
				var shield_buff = global.shield_grid[self.grid_col][self.grid_row] + 1;
				self.base_atk = self.base_atk * shield_buff;
				self.shield_buffed = true;
				just_initialized = true;
			}}
			
			if just_initialized || self.buff_applied_id != global.buff_apply_id {
				if (!is_undefined(self.buff_type)) {

		            switch (self.buff_type) {

		                case "thrower":
		                    var grid_thrower = global.buff_grid[? "thrower"];
		                    var buff_au = get_aurora_buff(self.grid_col, self.grid_row);
		                    self.atk = self.base_atk * max(grid_thrower[self.grid_col][self.grid_row], buff_au);
		                    break;

		                case "tracker":
		                    var grid_tracker = global.buff_grid[? "tracker"];
		                    self.atk = self.base_atk * grid_tracker[self.grid_col][self.grid_row];
		                    break;

		                case "sprayer":
		                    var grid_sprayer = global.buff_grid[? "sprayer"];
		                    self.atk = self.base_atk * grid_sprayer[self.grid_col][self.grid_row];
		                    break;
						default :
							self.atk = self.base_atk;
							break;
		            }
		        }
				self.buff_applied_id = global.buff_apply_id;
			}
		}
	}
	buff_timer = 5
}

if record_timer > 0 {
	record_timer--;
} else {
	with(obj_card_parent){
		if plant_id != "player" {
			if (!variable_instance_exists(id, "transform_recorded")) {
					mod_on_card_placed(self.plant_id, self.shape)
		            self.transform_recorded = true;
			}
		}
	}
	record_timer = 5;
}