if global.is_paused{
	exit
}

//if state == CARD_STATE.IDLE{
//	flash_speed = 5
//}
//else if state == CARD_STATE.ATTACK{
//	flash_speed = 4
//}

event_inherited(); 

if is_frozen{
	exit
}

var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

var sleep_anim = 19
if shape >= 1 sleep_anim = 11

if state == CARD_STATE.SLEEP{
	sleep_timer++
	image_index = floor(sleep_timer/current_flash_speed) mod sleep_anim
	return;
}

if state == CARD_STATE.AWAKE{
	wake_timer++
	image_index = floor(wake_timer/current_flash_speed) mod 6 + sleep_anim
	if wake_timer >= 5*current_flash_speed{
		sprite_index = spr_rotating_coffee_pot;
		if shape >= 1{
			sprite_index = spr_rotating_coffee_pot_1
		}
		image_index = 0
		sleep_timer = 0
		wake_timer = 0
		timer = 0
		state = CARD_STATE.IDLE
	}
	return;
}

//冷却计时器，没冷却完啥都不要干
if cooldown > 0{
	cooldown --;
	return;
}

if !attacking {
	//检测自身右方是否有敌人
	var grid_offest = 1
	if shape == 2{
		grid_offest = 2
	}

	with (obj_enemy_parent) {
			if (can_target_on(other.target_type,target_type) 
			&& grid_row <= other.grid_row + grid_offest
			&& grid_row >= other.grid_row - grid_offest
			&& grid_col <= other.grid_col + grid_offest
			&& grid_col >= other.grid_col - grid_offest
			&& hp > 0 ) {
		        other.attacking = true
		    }
		
	}
}

if attacking {
	state = CARD_STATE.ATTACK;
	attack_timer ++
	if attack_timer == attack_anim * flash_speed -30 {
		event_user(1);// 发射子弹
	}
	if attack_timer == attack_anim * flash_speed -60 {
		audio_play_sound(snd_coffee_pot_attack,0,0)
	}
	if attack_timer >= attack_anim * flash_speed || attack_timer >= cycle{
		attacking = false;
		cooldown = cycle - attack_timer;
		attack_timer = 0;
		state = CARD_STATE.IDLE;
	}
}


