if global.is_paused{
	exit
}

if instance_exists(parent_bullet){
	x = parent_bullet.x;
	y = parent_bullet.y;
	row = parent_bullet.row;
} else {
	instance_destroy()
}

if x > 2200 or y > 1200 or x < 0 or y < 0{
	instance_destroy()
}



