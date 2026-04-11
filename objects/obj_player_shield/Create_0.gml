image_xscale = 1.6
image_yscale = 1.6
image_speed = 0
parent_player = noone
atk = 0
cycle = 0
grid_col = 0
grid_row = 0
flash_speed = 6
attack_anim = 6
timer = 0
state = CARD_STATE.IDLE;
attack_timer = 0
weapon_id = "shield"
produce_gem = false
slow_down_gem = false
bleed_gem = false
guard_gem = false
strength_gem = false
divine_blessing_gem = false
divine_protect_gem = false
divine_holy_gem = false

hp_modified_card_list = []
atk_modified_card_list = []

blacklist = ["aurora","player","cherry_pudding","brazier","berry_dessert"];

origin_x = x;
origin_y = y;

player_x = 0;
player_y = 0;

t = 0;        // 函数中的 x
t_speed = 0.5; // 控制运动速度
t_dir = 1;

anim_timer = 0


if get_gem_index("produce_gem")!= -1{
	var gem_info = get_gem_info("produce_gem")
	var gem_level =  get_gem_level("produce_gem")
	cycle = gem_info.cycle[gem_level] * 60
	flame_produce = gem_info.flame_value[gem_level]
	first_produce_delay = gem_info.first_produce_delay * 60
	first_produce = false
	produce_gem = true
}

if get_gem_index("slow_down_gem")!= -1{
	slow_down_gem = true
	var gem_info = get_gem_info("slow_down_gem")
	var gem_level =  get_gem_level("slow_down_gem")
	if gem_level > 10 gem_level = 10
	slow_down_cycle = gem_info.cooldown[gem_level]*60
}

if get_gem_index("bleed_gem")!= -1{
	bleed_gem = true
	var gem_info = get_gem_info("bleed_gem")
	var gem_level =  get_gem_level("bleed_gem")
	if gem_level > 10 gem_level = 10
	bleed_damage = gem_info.atk[gem_level]
}

if get_gem_index("guard_gem")!= -1{
	guard_gem = true
	var gem_info = get_gem_info("guard_gem")
	var gem_level =  get_gem_level("guard_gem")
	if gem_level > 10 gem_level = 10
	max_hp_increase = gem_info.max_hp_increase[gem_level]
}

if get_gem_index("strength_gem")!= -1{
	strength_gem = true
	var gem_info = get_gem_info("strength_gem")
	var gem_level =  get_gem_level("strength_gem")
	if gem_level > 10 gem_level = 10
	atk_ratio = gem_info.atk_ratio[gem_level]
}

if get_gem_index("divine_blessing_gem")!= -1{
	var gem_info = get_gem_info("divine_blessing_gem")
	var gem_level =  get_gem_level("divine_blessing_gem")
	cycle = gem_info.cycle[gem_level] * 60
	flame_produce = gem_info.flame_value[gem_level]
	first_produce_delay = gem_info.first_produce_delay * 60
	first_produce = false
	divine_blessing_gem = true
}

if get_gem_index("divine_protect_gem")!= -1{
	divine_protect_gem = true
	var gem_info = get_gem_info("divine_protect_gem")
	var gem_level =  get_gem_level("divine_protect_gem")
	if gem_level > 15 gem_level = 15
	atk_ratio = gem_info.atk_ratio[gem_level]
}

if get_gem_index("divine_holy_gem")!= -1{
	divine_holy_gem = true
	var gem_info = get_gem_info("divine_holy_gem")
	var gem_level =  get_gem_level("divine_holy_gem")
	if gem_level > 15 gem_level = 15
	reflect_damage = gem_info.atk[gem_level]
	ice_timer = gem_info.ice_timer[gem_level]
}