function mod_buff_init(){
	global.plant_buff_map = ds_map_create();

	global.plant_buff_map[? "takoyaki"] = "tracker";
	global.plant_buff_map[? "cold_drew"] = "tracker";
	
	global.plant_buff_map[? "grilled_lizard_pult"]    = "thrower";
	global.plant_buff_map[? "spoon_rabbit"]    = "thrower";
	global.plant_buff_map[? "zhurong"]    = "thrower";
	global.plant_buff_map[? "gaia"]    = "thrower";
	global.plant_buff_map[? "chocolate_pult"]    = "thrower";
	global.plant_buff_map[? "egg_boiler_pult"]    = "thrower";
	global.plant_buff_map[? "ice_egg_boiler_pult"]    = "thrower";
	global.plant_buff_map[? "salad_pult"]    = "thrower";
	global.plant_buff_map[? "stinky_tofu_pult"]    = "thrower";
	
	global.plant_buff_map[? "rotating_coffee_pot"]    = "sprayer";
	global.plant_buff_map[? "coffee_pot"]    = "sprayer";
	global.plant_buff_map[? "oden_pot"]    = "sprayer";
}