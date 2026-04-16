with (obj_enemy_parent) {
    
    if (grid_col >= other.grid_col - 2
    && grid_col <= other.grid_col + 2
    && grid_row >= other.grid_row - 2
    && grid_row <= other.grid_row + 2 
    && can_hit(other.target_type, target_type)) {
		if array_get_index(other.can_mouse_list,mouse_id) != -1 && !can_dropped{
			into_act()
	 	}
		if (immune_to_ash && hp>other.atk) {
			hp -= 1600;
			event_user(0)
		} else {
			if special_ash{
				var inst = instance_create_depth(x,y-20,depth,obj_mouse_ash_death)
				inst.special_ash = true
				inst.sprite_index = sprite_index
				inst.image_index = image_index
			}
			else{
				instance_create_depth(x,y-20,depth,obj_mouse_ash_death)
			}
			instance_destroy();
		}
    }
}
audio_play_sound(snd_coke_bomb_explode, 0, false);