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

//索敌
var has_enemy = false
var target_enemy = noone
var min_distance = 10000
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

//获取目标
if (has_enemy && !is_attacking)
{
    if (attack_timer >= cycle - attack_anim * current_flash_speed)
    {
		target_instance = target_enemy;
		if (target_instance != noone && instance_exists(target_instance)) {
			enemy_x_locked = target_instance.x;
			is_attacking = true;
		}
    }
}

//计时
attack_timer++;

if (attack_timer > cycle)
{
    attack_timer = 0;
    is_attacking = false;
	target_instance = noone;
}

// 攻击锁定（防止三连发中断）
if (is_attacking)
{
    // 一旦进入攻击区间，必须打完
    if (attack_timer < cycle - attack_anim * current_flash_speed)
    {
        is_attacking = false;
        target_instance = noone;
    }
}

//状态控制
if (is_attacking)
{
    state = CARD_STATE.ATTACK;
}
else
{
    state = CARD_STATE.IDLE;
}

//攻击
if (is_attacking)
{
    if (attack_timer == cycle - 10*flash_speed)
    {
        event_user(1);
    }
    if (attack_timer == cycle - 8*flash_speed)
    {
        event_user(1);
    }
    if (attack_timer == cycle - 6*flash_speed && shape >= 2)
    {
        event_user(1);
    }
}
