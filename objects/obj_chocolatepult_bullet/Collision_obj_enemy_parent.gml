if other.hp > 0 
and row == other.grid_row 
and can_hit(target_type,other.target_type){
	
	with(other){
		audio_play_sound(hit_sound,0,0)
		damage_amount = other.damage
		damage_type = other.damage_type
		event_user(0)
	
	}
	instance_destroy()
	if sprite_index == spr_chocolatepult_bullet_large{
		if shape >= 1{
			if other.stun_timer <240{
				other.stun_timer = 240
			}
		}
		else{
			if other.stun_timer <420{
				other.stun_timer = 420
			}
		}
		other.stun_sprite = spr_mouse_stick
	}
	var inst = instance_create_depth(x,y,depth,obj_coffeecup_bullet_effect)
	inst.sprite_index = spr_chocolatepult_bullet_effect
	inst.image_xscale = 1.2
	inst.image_yscale = 1.2
}
	
