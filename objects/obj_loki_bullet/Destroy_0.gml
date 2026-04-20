if self.shape >= 2 {
	var _x = x

	if instance_exists(hitted_enemy){
		_x = hitted_enemy.x;
	}

	var _range1 = 55;
	var _range2 = 165;
	var splash_ratio = 0.3

	with (obj_enemy_parent) {
		if (hp > 0 && id != other.hitted_enemy && can_hit(other.target_type, target_type)) {
			if (abs(x - _x) < _range1
			&& grid_row == other.row) {
			    // 单格100%溅射
			    damage_amount = other.damage
				damage_type = other.damage_type
				event_user(0)
			} else if (other.shape >= 3
			&& abs(x - _x) < _range2
			&& abs(grid_row - other.row) <= 1) {
				// 3x3 30%溅射
			    damage_amount = other.damage * splash_ratio
				damage_type = other.damage_type
				event_user(0)
			}
		}
	}
}