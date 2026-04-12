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

// 增伤读取
if buff_timer > 0 buff_timer--;// 计时器由父类create定义
else{
	var type = "tracker";
	var buff = global.buff_grid[? type][grid_col][grid_row];
	atk = base_atk *buff;// 原始攻击力继承由父类step完成
	buff_timer = 5;
}

//检测屏幕上是否有敌人
var has_enemy = false
if instance_exists(obj_enemy_parent){
	with obj_enemy_parent{
		if can_target_on(other.target_type,target_type){
			has_enemy = true
		}
	}
}
//攻击逻辑
if (has_enemy) {
    if (attack_timer <= cycle - attack_anim * current_flash_speed) {
        attack_timer++;
    } else if (attack_timer <= cycle) {
        attack_timer++;
        state = CARD_STATE.ATTACK;
    } else {
        event_user(1); // 发射子弹
        attack_timer = 0;
        state = CARD_STATE.IDLE;
    }
	if (attack_timer == cycle - 6*flash_speed){
		event_user(1);
	}
} else {
    // 没有符合条件的敌人，重置状态
    attack_timer = 0;
    state = CARD_STATE.IDLE;
}


