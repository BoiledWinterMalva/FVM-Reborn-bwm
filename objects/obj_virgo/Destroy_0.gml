// Inherit the parent event
instance_destroy(inner_inst)
if shape >= 1{
	var _x = x;
	var _y = y;
	var _range = 250
	var row_offset = 1
	
	if shape == 2 {
		_range = 350
		row_offset = 2
	}
	
	bleed_damage = hp
	if bleed_damage > 0{
		with (obj_enemy_parent) {
		
			if (hp > 0 
			&& point_distance(x, y, _x, _y) < _range 
			&& grid_row >= other.grid_row - row_offset
			&& grid_row <= other.grid_row + row_offset) {
				hp -= other.bleed_damage
				event_user(0)
			}
		}
	}
}

event_inherited();

