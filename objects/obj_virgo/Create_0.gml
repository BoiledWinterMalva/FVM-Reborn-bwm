event_inherited();

plant_id = "virgo"; 
current_level = 1
obj_type = object_index;

event_user(0)

// ========== 特定属性默认值 ==========

inner_inst = instance_create_depth(x,y-35,depth+2,obj_virgo_inner)
inner_inst.parent_plant = id
sprite_list = [spr_virgo_outer, spr_virgo_outer_1]

if shape == 1{
	sprite_list = [spr_virgo_1_outer, spr_virgo_1_outer_1]
	inner_inst.sprite_index = spr_virgo_1_inner
}
if shape == 2{
	sprite_list = [spr_virgo_2_outer, spr_virgo_2_outer_1]
	inner_inst.sprite_index = spr_virgo_2_inner
}

sprite_index = sprite_list[0]

attack_anim = 0
idle_anim = 5
flash_speed = 10
plant_type = "shield_outer"
is_slowdown = false

bleed_damage = 0
current_hp = hp
