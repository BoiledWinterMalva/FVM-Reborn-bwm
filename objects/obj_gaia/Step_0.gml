if global.is_paused{
	exit
}
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

event_inherited(); 
if is_frozen || state == CARD_STATE.SLEEP{
	exit
}

// 增伤读取
if buff_timer > 0 buff_timer--;// 计时器由父类create定义
else{
	var type = "thrower";
	var buff = global.buff_grid[? type][grid_col][grid_row];
	var buff_au = get_aurora_buff(grid_col, grid_row);
	atk = base_atk *max(buff, buff_au);// 原始攻击力继承由父类step完成
	buff_timer = 5;
}

//冷却计时器，没冷却完啥都不要干
if cooldown > 0{
	cooldown --;
	state = CARD_STATE.IDLE;
	exit;
}

var has_enemy = false
var target_enemy = noone

if !attacking {
	// 检测自身右方是否有敌人，并获取最近的敌人
	var min_distance = 10000 // 设置一个足够大的初始值
	var row_offset = (shape == 3) ? 2 : 1

	with(obj_enemy_parent){
		if (
        grid_row >= other.grid_row - row_offset 
        && grid_row <= other.grid_row + row_offset
        && grid_col <= (global.grid_cols + 1) 
        && can_target_on(other.target_type, target_type)
		){
		    var distance = grid_col - other.grid_col
		    if (distance < min_distance) {
		        min_distance = distance
		        target_enemy = id
		        has_enemy = true
		    }
		}
	}
}

// 存储目标敌人信息
if (has_enemy) {
    target_x = target_enemy.x;
	attacking = true;
}

if attacking {
	state = CARD_STATE.ATTACK;
	attack_timer ++
	if attack_timer == attack_anim * flash_speed -50 {
		event_user(1);// 发射子弹
	}
	if attack_timer == attack_anim * flash_speed -40 {
		event_user(1);// 发射子弹
	}
	if attack_timer == attack_anim * flash_speed -30 {
		event_user(1);// 发射子弹
	}
	if attack_timer >= attack_anim * flash_speed {
		attacking = false;
		cooldown = cycle - attack_timer;
		attack_timer = 0;
		target_x = noone;
	}
}
