var grid_offest = 1
if shape == 2{
	grid_offest = 2
}

var _x = x
var _y = y + 40
var _range = (shape == 2)? 320:220;

with (obj_enemy_parent) {
	if (hp > 0 
	&& grid_row <= other.grid_row + grid_offest
	&& grid_row >= other.grid_row - grid_offest
	&& point_distance(x, y, _x, _y) < _range 
	&& can_hit(other.target_type,target_type)){
		hp -= other.atk;
		event_user(0)
		audio_play_sound(snd_hit1,0,0)
	}
		
}