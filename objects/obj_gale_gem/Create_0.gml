image_xscale = 1.8
image_yscale = 1.8
image_speed = 0

on_click = false
gem_id = "gale_gem"
gem_info = get_gem_info(gem_id)
gem_level = get_gem_level(gem_id)

if(gem_level > gem_info.max_level) gem_level = gem_info.max_level

cooldown = 0
cooldown_timer = 0

var weapon_id = global.save_data.equipped_items.super_weapon.id;

if (weapon_id != "") {

    var obj = asset_get_index("obj_" + string(weapon_id));

    weapon_inst = noone;

    if (obj != -1) {
	    weapon_inst = instance_find(obj, 0);
	}
}