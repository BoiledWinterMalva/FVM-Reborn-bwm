if ds_list_find_index(other.brazier_list, self.id) == -1 
&& other.burnt == 0
&& other.row == self.grid_row
&& other.timer >= 4 * 3 
&& !other.disabled {
	other.damage = other.damage * (self.atk/100);
	other.burnt += 1;
	ds_list_add(other.brazier_list, self.id)
	audio_play_sound(snd_bullet_burnt,0,0)
	sprite_index = spr_fire_tarsprayer_bullet
}