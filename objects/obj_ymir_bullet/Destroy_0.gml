var _x = x;
var _y = y;

if (variable_instance_exists(id, "hitted_enemy") && instance_exists(hitted_enemy)) {
    _x = hitted_enemy.x;
    _y = hitted_enemy.y;
}

var _range = 200;
var splash_ratio = 0.45;
if (shape >= 1) {
    splash_ratio = 0.5;
}

with (obj_enemy_parent) {
    
    // 1. 距离判定
    if (hp > 0 && point_distance(x, y, _x, _y) < _range) {
        
        // 2. 行数判定 (只波及本行以及上下两行)
        if (grid_row <= other.row + 1 && grid_row >= other.row - 1) {
            
            // 3. 排除判定 (不要对已经被直击的倒霉蛋造成二次伤害)
            var is_direct_hit = false;
            if (variable_instance_exists(other, "hitted_enemy")) {
                if (id == other.hitted_enemy) is_direct_hit = true;
            }
            
            if (!is_direct_hit && can_hit(other.target_type, target_type)) {
                
                damage_amount = other.damage * splash_ratio;
                
                if (variable_instance_exists(other, "damage_type")) {
                    damage_type = other.damage_type;
                }
                
                event_user(0); 
            }
        }
    }
}