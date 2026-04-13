if global.is_paused{
	exit
}
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

event_inherited(); 

// 增伤读取
if buff_timer > 0 buff_timer--;// 计时器由父类create定义
else{
	var type = "tracker";
	var buff = global.buff_grid[? type][grid_col][grid_row];
	var buff_th = get_thalia_buff(grid_col, grid_row);
	atk = base_atk *max(buff, buff_th);// 原始攻击力继承由父类step完成
	buff_timer = 5;
}

var has_enemy = false
if instance_exists(obj_enemy_parent){
	with obj_enemy_parent{
			has_enemy = true
		}
	}
if (has_enemy) {
	if (attack_timer <= cycle - attack_anim * current_flash_speed) {
    attack_timer++;
    }else if (attack_timer == cycle - 55) {
    event_user(1); // 发射子弹
	attack_timer++;
	}else if(attack_timer == cycle - 50){
	event_user(1); 
	attack_timer++;	
	}else if(attack_timer == cycle - 45&&shape>=2){
	event_user(1); 
	attack_timer++;
	}else if(attack_timer == cycle - 40&&shape==3){
	event_user(1); 
	attack_timer++;
	}else if(attack_timer == cycle - 35&&shape==3){
	event_user(1); 
	attack_timer++;
    }else if (attack_timer <= cycle) {
    attack_timer++;
    state = CARD_STATE.ATTACK;
    }else {
    attack_timer = 0;
    state = CARD_STATE.IDLE;
    }
}