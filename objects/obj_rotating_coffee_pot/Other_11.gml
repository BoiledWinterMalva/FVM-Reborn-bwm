var grid_offest = 1
if shape == 2{
	grid_offest = 2
}

with (obj_enemy_parent) {
	if (hp > 0 
	&& grid_row <= other.grid_row + grid_offest
	&& grid_row >= other.grid_row - grid_offest
	&& grid_col <= other.grid_col + grid_offest
	&& grid_col >= other.grid_col - grid_offest
	&& can_hit(other.target_type,target_type)){
		hp -= other.atk;
		event_user(0)
		audio_play_sound(snd_hit1,0,0)
	}
		
}