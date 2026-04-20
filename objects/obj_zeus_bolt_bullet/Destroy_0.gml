var _x = x

if instance_exists(target_enemy){
	_x = target_enemy.x;
}

var _range = 165;

with (obj_enemy_parent) {
	if (hp > 0 
		&& abs(x - _x) < _range
		&& grid_row <= other.target_enemy.grid_row + 1 
		&& grid_row >= other.target_enemy.grid_row - 1 
		&& id != other.target_enemy 
		&& can_hit(other.target_type,target_type)){
	        
	    // 对敌人造成溅射伤害
	    damage_amount = other.damage * other.splash_ratio
		damage_type = other.damage_type
		event_user(0)
	        
	}
}