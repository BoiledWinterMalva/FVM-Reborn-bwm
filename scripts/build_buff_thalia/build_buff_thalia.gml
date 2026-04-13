function build_buff_thalia() {

    global.thalia_grid = array_create(global.grid_cols);
    global.thalia_count = array_create(global.grid_cols); 

    for (var c = 0; c < global.grid_cols; c++) {
        global.thalia_grid[c] = array_create(global.grid_rows, 1);
        global.thalia_count[c] = array_create(global.grid_rows, 0); 
    }
}

function reset_thalia_grid() {

    for (var c = 0; c < global.grid_cols; c++) {
        for (var r = 0; r < global.grid_rows; r++) {
            
            global.thalia_grid[c][r] = 1;
            global.thalia_count[c][r] = 0;
        }
    }
}

function apply_thalia(_inst) {

    if (_inst.plant_id != "thalia") exit;
    if (_inst.shape < 3) exit;
    var center_c = _inst.grid_col;
    var center_r = _inst.grid_row;
    var bonus = _inst.buff_value - 1; 
    for (var dx = -2; dx <= 2; dx++) {
        for (var dy = -3; dy <= 3; dy++) {
            
            var c = center_c + dx;
            var r = center_r + dy;
            if (c >= 0 && c < global.grid_cols && r >= 0 && r < global.grid_rows) {
                if (global.thalia_count[c][r] < 2) {
                    
                    global.thalia_grid[c][r] += bonus;
                    global.thalia_count[c][r] += 1; 
                    
                }
            }
        }
    }
}

    function get_thalia_buff(_col, _row) {
    return global.thalia_grid[_col][_row];
}