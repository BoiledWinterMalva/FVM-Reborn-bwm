if global.is_paused{
	exit
}
event_inherited(); 
if is_frozen || state == CARD_STATE.SLEEP{
	exit
}
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

////检测自身右方是否有敌人
//var has_enemy = false;
//with (obj_enemy_parent) {
//    if (can_target_on(other.target_type, target_type)) {
//        has_enemy = true;
//        break;
//    }
//}

////攻击逻辑
//if (has_enemy) {
//    if (attack_timer <= cycle - attack_anim * current_flash_speed) {
//        attack_timer++;
//    } else if (attack_timer <= cycle) {
//        attack_timer++;
//        state = CARD_STATE.ATTACK;
//    } else {
//        attack_timer = 0;
//        state = CARD_STATE.IDLE;
//    }
//	if (attack_timer == cycle - 3*flash_speed){
//		event_user(1)
//	}
//	if (attack_timer == cycle - 2*flash_speed && shape == 2){
//		event_user(1)
//	}
//} else {
//    // 没有符合条件的敌人，重置状态
//    attack_timer = 0;
//    state = CARD_STATE.IDLE;
//}

//冷却计时器，没冷却完啥都不要干
if cooldown > 0{
	cooldown --;
	return;
}

if !attacking {
	// 检测自身右方是否有敌人，并获取最近的敌人
	with (obj_enemy_parent) {
	    if (can_target_on(other.target_type, target_type) && hp > 0 ) {
	        other.attacking = true;
	        break;
	    } 
	}
}

if attacking {
	state = CARD_STATE.ATTACK;
	attack_timer ++
	if attack_timer == attack_anim * flash_speed -15 {
		event_user(1);// 发射子弹
	}
	if attack_timer == attack_anim * flash_speed -10 && shape == 2 {
		event_user(1);// 发射子弹
	}
	if attack_timer >= attack_anim * flash_speed {
		attacking = false;
		cooldown = cycle - attack_timer;
		attack_timer = 0;
		state = CARD_STATE.IDLE;
	}
}


