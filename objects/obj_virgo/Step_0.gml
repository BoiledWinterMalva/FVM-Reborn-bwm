if global.is_paused{
	exit
}

if hp <= 0.5*max_hp{
	sprite_index = sprite_list[1]
}
else{
	sprite_index = sprite_list[0]
}

event_inherited();

if current_hp > hp && shape >= 1{
	bleed_damage = (current_hp - hp) * 1.3
	event_user(1)
} else if current_hp > hp {
	bleed_damage = current_hp - hp
	event_user(1)
}
current_hp = hp
