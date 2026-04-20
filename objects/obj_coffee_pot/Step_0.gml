if global.is_paused{
	exit
}

event_inherited(); 

if is_frozen{
	exit
}

var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

if state == CARD_STATE.SLEEP{
	anim_timer++
	image_index = floor(anim_timer/current_flash_speed) mod 10
	return;
}

if state == CARD_STATE.AWAKE{
	wake_timer++
	image_index = floor(wake_timer/current_flash_speed) mod 5 + 10
	if wake_timer >= 5*current_flash_speed{
		sprite_index = spr_coffee_pot;
		image_index = 0
		timer = 0
		state = CARD_STATE.IDLE
	}
	return;
}

//冷却计时器，没冷却完啥都不要干
if cooldown_timer > 0{
	cooldown_timer --;
	return;
}

//检测自身右方是否有敌人
if !attacking {
	if shape < 2{	
		with(obj_enemy_parent){
			if (hp > 0
			&& grid_row == other.grid_row 
			&& grid_col >= other.grid_col 
			&& grid_col <= (other.grid_col + 4) 
			&& can_target_on(other.target_type,target_type)){
				other.attacking = true;
				break;
			}
		}
	}
	else{
		with(obj_enemy_parent){
			if (hp > 0
			&& grid_row == other.grid_row 
			&& grid_col >= other.grid_col 
			&& grid_col <= (global.grid_cols + 1) 
			&& can_target_on(other.target_type,target_type)){
				other.attacking = true;
				break;
			}
		}
	}
}

//攻击逻辑
if attacking {
	state = CARD_STATE.ATTACK;
	attack_timer ++
	if attack_timer == (attack_anim - 9) * current_flash_speed {
		event_user(1);// 发射子弹
	}
	if attack_timer >= attack_anim * current_flash_speed || attack_timer >= cycle{
		attacking = false;
		cooldown_timer = cycle - attack_timer;
		attack_timer = 0;
		state = CARD_STATE.IDLE;
	}
}


