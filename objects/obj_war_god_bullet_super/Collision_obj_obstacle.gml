if target_type == "normal" && row == other.row{
	if burnt == 0{
		var inst = instance_create_depth(x,y,depth,obj_war_god_bullet_effect)
		inst.sprite_index = spr_war_god_bullet_effect
	}
	else if burnt == 1{
		var inst = instance_create_depth(x+25,y,depth,obj_fire_bullet_effect)
		inst.sprite_index = spr_fire_bullet_effect
	}
	instance_destroy()
}