if ds_list_find_index(brazier_list,other.id) == -1 && burnt == 0 && row == other.grid_row{
	burnt += 1
	damage = round(damage * other.atk)
	ds_list_add(brazier_list,other.id)
	audio_play_sound(snd_bullet_burnt,0,0)
	if other.shape==2{
		fire_god_effct = 1;
	}else if (other.shape ==3){
		fire_god_effct = 2;
	}
	image_xscale = 1.8
	image_yscale = 1.8
	
}