function find_valid_position(_col, _row, _card_data) {
    
    // 记录目前找到的最优解
    var best_col = -1;
    var best_row = -1;
    var min_dist = 999999; // 初始设为一个极大的距离

    // 遍历全屏幕的每一个网格
    for (var c = 0; c < global.grid_cols; c++) {
        for (var r = 0; r < global.grid_rows; r++) {
            
            // 1. 计算曼哈顿距离 (|列差| + |行差|)
            var dist = abs(c - _col) + abs(r - _row);
            
            // 2. 赋予正上方和正下方极高优先级 (距离 -0.5)
            if (c == _col && (r == _row - 1 || r == _row + 1)) {
                dist -= 0.5;
            }
            
            // 3. 只有当这个格子的距离分数比我们目前记录的最好分数还要小，才去进行复杂的放置判定
            // 这样写能极大地节省性能，因为不需要对每个格子都去调用 can_place_at_position
            if (dist < min_dist) {
                
                // 将行列转换回世界像素坐标
                var world = get_world_position_from_grid(c, r);
                
                // 检查该格子是否可以种植
                if (can_place_at_position(
                    world.x,
                    world.y,
                    _card_data[? "plant_type"],
                    _card_data[? "feature_type"],
                    _card_data[? "target_card"]
                )) {
                    // 如果可以种植，更新目前找到的最好成绩！
                    min_dist = dist;
                    best_col = c;
                    best_row = r;
                    
                    // 如果找到了距离为 0 的格子（也就是原位 _col, _row 可以直接种）
                    // 那么不可能有比这更好的解了，直接提前结束循环！
                    if (min_dist == 0) {
                        return { col: best_col, row: best_row };
                    }
                }
            }
            
        }
    }

    // 循环结束后，看看有没有找到哪怕一个可以种的格子
    if (best_col != -1) {
        return { col: best_col, row: best_row };
    }

    return undefined;
}

function transform_into_target() {
	show_debug_message("TRANSFORM TRIGGERED");
    // 没有可复制目标，直接消失（防bug）
    if (target_card_id == "") {
        instance_destroy();
        exit;
    }

    // 记录当前位置
    var _x = x;
    var _y = y;
    var _row = grid_row;
    var _col = grid_col;

	var card_data = deck_get_card_data(target_card_id, target_shape);
	var obj_type = card_data[? "obj"];
	var pos = find_valid_position(_col, _row, card_data);

	if (is_undefined(pos)) {
	    instance_destroy();
	    exit;
	}
	var world = get_world_position_from_grid(pos.col, pos.row);

    // === 创建真正的卡 ===

	var new_plant = instance_create_depth(world.x, world.y, 0, obj_type);

    // 关键：用目标卡初始化
    new_plant.card_id = target_card_id;
    new_plant.card_shape = target_shape;

	card_created(new_plant, pos.col, pos.row);

    // 深度修正
    new_plant.depth = calculate_plant_depth(pos.col, pos.row, new_plant.plant_type);
}