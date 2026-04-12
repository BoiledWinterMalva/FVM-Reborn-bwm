

	if other.hp > 0 and row == other.grid_row and can_hit(target_type,other.target_type){
		with(other){
			if other.burnt == 1{
				audio_play_sound(snd_fire_hit,0,0)
			}
			else{
				audio_play_sound(hit_sound,0,0)
			}
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
		if burnt == 0{
			instance_create_depth(x,y,depth,obj_xiaolongbao_bullet_effect)
		}
		else{
			var inst = instance_create_depth(x+25,y,depth,obj_fire_bullet_effect)
			inst.sprite_index = spr_fire_bullet_effect
		}
		instance_destroy()
	}
