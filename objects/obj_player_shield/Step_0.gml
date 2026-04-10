// obj_plant_parent 的 Step 事件
if global.is_paused{
	exit
}

grid_row = parent_player.grid_row
grid_col = parent_player.grid_col
depth = parent_player.depth-1

timer++

if parent_player.state == CARD_STATE.IDLE{
	anim_timer++
	// 每6帧才更新一次运动
	if (anim_timer >= 6) {
		anim_timer = 0

	    t += t_speed * t_dir;

	    // 到终点反向
	    if (t >= 1) {
	        t = 1;
	        t_dir = -1;
	    }

	    // 回到起点再反向
	    if (t <= -1) {
	        t = -1;
	        t_dir = 1;
	    }
	
		var x_param = t;
		var y_param = 0.5 * t * t - 1;

		x = origin_x + x_param;
		y = origin_y + y_param;
	}
}else if parent_player.state == CARD_STATE.ATTACK {
	anim_timer = 0
	x = origin_x;
	y = origin_y;
	t = 0;
	t_dir = 1;
}

if produce_gem{
	if not first_produce{
		if timer mod first_produce_delay == 0{
			var f_inst = instance_create_depth(x,y-50,-1300,obj_flame)
			f_inst.value = flame_produce
			first_produce = true
		}
	}
	else{
		if timer mod cycle == 0{
			var f_inst = instance_create_depth(x,y-50,-1300,obj_flame)
			f_inst.value = flame_produce
		}
	}
}
if slow_down_gem{
	if timer mod slow_down_cycle == 0{
		var start_pos_x = x + 10 - global.grid_cell_size_x
		var start_pos_y = y - 35 - global.grid_cell_size_y
		for(var i = 0; i < 3;i++){
			for(var j= 0 ; j < 3;j++){
				var grid_pos = get_grid_position_from_world(start_pos_x + j * global.grid_cell_size_x,start_pos_y + i * global.grid_cell_size_y)
				if grid_pos.row >= 0 && grid_pos.row < global.grid_rows && grid_pos.col >= 0 && grid_pos.col < global.grid_cols{
					var inst = instance_create_depth(start_pos_x + j * global.grid_cell_size_x,start_pos_y + i * global.grid_cell_size_y,depth,obj_slowdown_gem_effect)
					inst.row = grid_row -1+i
				}
			}
		}
	}
}
if bleed_gem{
	if timer mod 60 == 0{
			var _x = x;
			var _y = y;
			var _range = 250
		with (obj_enemy_parent) {
		
			if (hp > 0 && point_distance(x, y, _x, _y) < _range && grid_row >= other.grid_row-1&&grid_row <= other.grid_row+1) {
			    hp -= other.bleed_damage
				event_user(0)
		}
		
	}
	}
}
if guard_gem || strength_gem{
	with (obj_card_parent){
		if(grid_row >= other.grid_row-1&&grid_row <= other.grid_row+1&&grid_col >= other.grid_col-1&&grid_col<=other.grid_col+1&&array_get_index(other.blacklist, plant_id) == -1){
			if other.guard_gem{
				if (array_get_index(other.hp_modified_card_list,id)==-1){
					max_hp += other.max_hp_increase
					array_push(other.hp_modified_card_list,id)
				}
				if other.timer mod 60 == 0{
					if hp < max_hp - 10{
						hp += 10
						instance_create_depth(x,y+30,depth-4,obj_card_heal_effect)
					}
					else if hp < max_hp{
						hp = max_hp
						instance_create_depth(x,y+30,depth-4,obj_card_heal_effect)
					}
				}
			}
			if other.strength_gem && (array_get_index(other.atk_modified_card_list,id)==-1){
				atk = atk*(other.atk_ratio+1)
				array_push(other.atk_modified_card_list,id)
			}
		}
	}
}
if divine_blessing_gem{
	if not first_produce{
		if timer mod first_produce_delay == 0{
			var f_inst = instance_create_depth(x,y-50,-1300,obj_flame)
			f_inst.value = flame_produce
			first_produce = true
		}
	}
	else{
		if timer mod cycle == 0{
			var f_inst = instance_create_depth(x,y-50,-1300,obj_flame)
			f_inst.value = flame_produce
		}
	}
}
if (divine_protect_gem) { 
    with (obj_card_parent) {
        // 排除自己和黑名单
        if (array_get_index(other.blacklist, plant_id) == -1) {

            // 计算与自身的行列差
            var row_diff = grid_row - other.grid_row;
            var col_diff = grid_col - other.grid_col;

            // 内圈 3x3
            if (row_diff >= -1 && row_diff <= 1 && col_diff >= -1 && col_diff <= 1) {
                if (array_get_index(other.atk_modified_card_list, id) == -1) {
                    atk = atk * (other.atk_ratio + 1); // 内圈全额倍率
                    array_push(other.atk_modified_card_list, id);
                }
            }
            // 外圈 5x5（去掉内圈）
            else if (row_diff >= -2 && row_diff <= 2 && col_diff >= -2 && col_diff <= 2) {
                if (array_get_index(other.atk_modified_card_list, id) == -1) {
                    atk = atk * (1 + other.atk_ratio / 2); // 外圈一半倍率
                    array_push(other.atk_modified_card_list, id);
                }
            }
        }
    }
}

