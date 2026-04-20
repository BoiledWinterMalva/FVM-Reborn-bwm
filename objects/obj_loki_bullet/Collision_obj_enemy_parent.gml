if !hit_enemy{
	if other.hp > 0 
	and other.grid_row == self.row  
	and can_hit(self.target_type, other.target_type){
		self.hit_enemy = true
		self.hitted_enemy = other.id
		instance_destroy()
	}
}