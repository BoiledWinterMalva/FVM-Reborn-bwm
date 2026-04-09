
//if (target != noone && instance_exists(target)) {
//    var inst = instance_create_depth(x, y-360, depth-1, obj_cold_drew_bullet);
    
//    inst.target_x = target.x;
//    inst.target_y = target.y;
//    inst.damage = atk;
//    inst.row = target.grid_row;
//    inst.shape_bullet = shape;
//}

for (var i = 0; i < array_length(target_list); i++) {
    var t = target_list[i];

    if (t != noone && instance_exists(t)) {
        var inst = instance_create_depth(t.x, t.y-20, depth-1, obj_cold_drew_bullet);
        
        inst.target_id = t.id;
        inst.damage = atk;
        inst.row = t.grid_row;
        inst.shape_bullet = shape;
    }
}