if ds_list_find_index(other.brazier_list, self.id) == -1 
&& other.burnt == 0 
&& other.row == self.grid_row {
	other.damage = other.damage * (self.atk/100);
	other.burnt += 1;
	ds_list_add(other.brazier_list, self.id)
	audio_play_sound(snd_bullet_burnt,0,0)
	var inst = instance_create_depth(other.x, other.y, other.depth, obj_loki_bullet)
	inst.damage = other.damage;
	inst.parent_bullet = other.id
	inst.shape = self.shape;
}