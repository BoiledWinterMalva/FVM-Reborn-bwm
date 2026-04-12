if ds_list_find_index(hitted_enemy,other.id) == -1{

	if other.hp > 0 and row == other.grid_row and can_hit(target_type,other.target_type){
		with(other){
			
				audio_play_sound(hit_sound,0,0)
        if (other.fire_god_effct = 1) {
        var splash_damage = 0.5*other.damage ; 
        var splash_range = 120;         
        var _bx = x; 
        var _by = y; 
        var hit_target_id = id; 
        with (obj_enemy_parent) {
            if (hp > 0 && id != hit_target_id) {
                if (abs(_bx-x) <= splash_range&&grid_row - other.grid_row) {
                    hp -= splash_damage
                    event_user(0);
                }
            }
        }
	}
        if (other.fire_god_effct = 2) {
        var splash_damage = 0.8*other.damage ; 
        var splash_range = 120;         
        var _bx = x; 
        var _by = y; 
        with (obj_enemy_parent) {
            if (hp > 0) {
                if (abs(_bx-x) <= splash_range&&abs(grid_row - other.grid_row) <= 1) {
                    hp -= splash_damage
                    event_user(0);
                }
            }
        }
	}
			damage_amount = other.damage
			damage_type = other.damage_type
			event_user(0)
			
		}
		ds_list_add(hitted_enemy,other.id)
	}
}