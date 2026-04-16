if can_destroy{
		instance_destroy()
}
if global.is_paused{
	image_speed = 0
}
else{
	image_speed = 1
}
timer++


if ((shape == 2&&timer==10)||(shape==3&&timer==40)) {
    with (obj_enemy_parent) {
        if (abs(grid_row - other.grid_row )<= 2&&abs(grid_col - other.grid_col)<=2) {
		        if (immune_to_ash && hp>other.atk) {
		            hp -= other.atk;
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
	}