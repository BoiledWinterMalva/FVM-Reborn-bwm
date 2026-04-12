if target_type == "normal" && row == other.row{
	if burnt == 0{
		var inst = instance_create_depth(x+25,y,depth,obj_coffeecup_bullet_effect)
		inst.sprite_index = spr_love_god_bullet_0s
	}
	else{
		var inst = instance_create_depth(x+25,y,depth,obj_fire_bullet_effect)
		inst.sprite_index = spr_love_god_bullet_3s
	}
	instance_destroy()
}