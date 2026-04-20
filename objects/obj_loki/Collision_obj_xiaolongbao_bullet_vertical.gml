if ds_list_find_index(other.brazier_list, self.id) == -1 
&& other.burnt == 0 
&& other.col == self.grid_col {
	other.damage = other.damage * (self.atk/100);
	other.burnt += 1;
	ds_list_add(other.brazier_list, self.id)
	audio_play_sound(snd_bullet_burnt,0,0)
}