function build_buff_cells(_col, _row, _shape, _value) {

    var cells = [];

    switch (_shape) {

        case "3x3":
            add_square(cells, _col, _row, 1, _value);
        break;

        case "5x5":
            add_square(cells, _col, _row, 2, _value);
        break;

        case "row":
            add_row(cells, _row, _value);
        break;
		
    }

    return cells;
}

function add_square(_cells, _col, _row, _radius, _value) {

    for (var dx = -_radius; dx <= _radius; dx++) {
        for (var dy = -_radius; dy <= _radius; dy++) {

            var c = _col + dx;
            var r = _row + dy;

            if (c >= 0 && c < global.grid_cols && r >= 0 && r < global.grid_rows) {
                array_push(_cells, [c, r, _value]);
            }
        }
    }
}

function add_row(_cells, _row, _value) {

    for (var c = 0; c < global.grid_cols; c++) {
        array_push(_cells, [c, _row, _value]);
    }
}

function refresh_buff_cells() {
    buff_cells = build_buff_cells(grid_col, grid_row, buff_shape, buff_value);
}