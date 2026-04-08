if global.is_paused{
	exit
}
if (instance_exists(weapon_inst)) {
    cooldown_timer = weapon_inst.cycle - weapon_inst.attack_timer;
} else {
    cooldown_timer = 0;
}