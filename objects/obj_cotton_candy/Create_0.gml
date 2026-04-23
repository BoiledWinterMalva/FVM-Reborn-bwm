event_inherited();

plant_id = "cotton_candy"; 
obj_type = object_index;

event_user(0)

// ========== 特定属性默认值 ==========

attack_anim = 0;
flash_speed = 8
idle_anim = 8
//plant_type = "coffee"
plant_type = "cotton"

on_lava = false
lava_timer = 0
bind_lava = noone;
invincible = true
spr_list = []
hole_count = 1
if shape == 0{
	sprite_index = spr_cotton_candy_0_0
	spr_list = [spr_cotton_candy_0_0,spr_cotton_candy_0_1,spr_cotton_candy_0_2]
}
else if shape == 1{
	sprite_index = spr_cotton_candy_1_0
	spr_list = [spr_cotton_candy_1_0,spr_cotton_candy_1_1,spr_cotton_candy_1_2]
}
else if shape == 2{
	sprite_index = spr_cotton_candy_2_0
	spr_list = [spr_cotton_candy_2_0,spr_cotton_candy_2_1,spr_cotton_candy_2_2]
	hole_count = 3
}
remove_timer = 0

