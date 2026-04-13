// 1. 主控函数：负责解析 "mXn" 字符串并调用矩形生成器
function build_buff_cells(_col, _row, _shape, _value) {
    var cells = [];
    
    var shape_str = string_lower(_shape); 

    if (shape_str == "row") {
        add_rectangle(cells, _col, _row, global.grid_cols * 2, 1, _value);
        return cells;
    }
    var x_pos = string_pos("x", shape_str); 
    
    if (x_pos > 0) {
        var m_rows = real(string_copy(shape_str, 1, x_pos - 1));
        var n_cols = real(string_delete(shape_str, 1, x_pos));
        add_rectangle(cells, _col, _row, n_cols, m_rows, _value);
    }

    return cells;
}

// 2. 通用矩形生成函数：无论什么长宽比，一个函数搞定
function add_rectangle(_cells, _col, _row, _cols_width, _rows_height, _value) {
    
    // 计算以自身为中心的向外延伸半径
    // 例如：宽度为 3，floor(3/2) = 1。即向左1格，自己1格，向右1格。
    var radius_c = floor(_cols_width / 2);
    var radius_r = floor(_rows_height / 2);

    for (var dx = -radius_c; dx <= radius_c; dx++) {
        for (var dy = -radius_r; dy <= radius_r; dy++) {

            var c = _col + dx;
            var r = _row + dy;

            // 越界保护：只把在棋盘内的格子加进数组
            if (c >= 0 && c < global.grid_cols && r >= 0 && r < global.grid_rows) {
                array_push(_cells, [c, r, _value]);
            }
        }
    }
}

// 3. 刷新函数保持不变
function refresh_buff_cells() {
    buff_cells = build_buff_cells(grid_col, grid_row, buff_shape, buff_value);
}