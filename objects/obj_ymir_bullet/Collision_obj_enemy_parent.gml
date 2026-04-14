
if (!hit_enemy) {      
        if (other.hp > 0 && row == other.grid_row && can_hit(target_type, other.target_type)) {
            
            with (other&& can_target_on(other.target_type,target_type)) {
                audio_play_sound(snd_egg_bullet, 0, 0);
                damage_amount = other.damage;                
                damage_type = other.damage_type;
                event_user(0); 
            }
            
            var inst = instance_create_depth(x, y, depth, obj_iceeggboilerpult_bullet_effect);
	        if shape == 3{
	           inst.sprite_index = spr_ymir_bullet_effect
	        }
	        if shape == 2{
	           inst.sprite_index = spr_ymir_bullet_effect_1
	        }
	        if shape == 1{
	           inst.sprite_index = spr_ymir_bullet_effect_2
        	}
	        if shape == 0{
	           inst.sprite_index = spr_ymir_bullet_effect_3
         	}			            
            instance_destroy();
            
            hit_enemy = true;
            hitted_enemy = other.id;
            
            instance_destroy(); 
        }
}