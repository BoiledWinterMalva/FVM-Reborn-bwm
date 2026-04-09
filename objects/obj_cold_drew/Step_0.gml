//if global.is_paused{
//	exit
//}
//event_inherited(); 
//if is_frozen || state == CARD_STATE.SLEEP{
//	exit
//}
//var current_flash_speed = flash_speed
//if is_slowdown{
//	current_flash_speed *= 2
//}

//target_list = [];

////检测自身右方是否有敌人
//var enemy_list = ds_list_create();
//var has_enemy = false;

//with (obj_enemy_parent) {
//    if (can_target_on(other.target_type, target_type)) {
		
//        var data = [x, id]; // ✅ 用数组

//        ds_list_add(enemy_list, data);
//        has_enemy = true;
//    }
//}

//repeat (max_targets) {

//    var best_index = -1;
//    var best_x = 999999;

//    for (var i = 0; i < ds_list_size(enemy_list); i++) {
//        var e = enemy_list[| i];

//        if (e[0] < best_x) {
//            best_x = e[0];
//            best_index = i;
//        }
//    }

//    if (best_index != -1) {
//        var best = enemy_list[| best_index];
//        array_push(target_list, best[1]);

//        ds_list_delete(enemy_list, best_index); // 防止重复选
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
//        event_user(1); // 发射子弹
//        attack_timer = 0;
//        state = CARD_STATE.IDLE;
//    }
//} else {
//    // 没有符合条件的敌人，重置状态
//    attack_timer = 0;
//    state = CARD_STATE.IDLE;
//}

//ds_list_destroy(enemy_list);

if global.is_paused {
    exit;
}

event_inherited(); 

if is_frozen || state == CARD_STATE.SLEEP {
    exit;
}

var current_flash_speed = flash_speed;
if is_slowdown {
    current_flash_speed *= 2;
}

// 目标选择（无ds_list版本）

target_list = [];

var max_t = max_targets;

// 存“最优目标”
 var best = array_create(max_t, noone);
 var best_x = array_create(max_t, 999999);

// 是否有敌人
var has_enemy = false;

with (obj_enemy_parent) {

    // 只攻击右侧 + 可攻击类型
    if (can_target_on(other.target_type, target_type)) {

        has_enemy = true;

        var ex = x;

        // 插入排序（只维护前 max_targets 个）
        for (var i = 0; i < max_t; i++) { // 使用 max_t，不要 other.max_targets
            if (ex < best_x[i]) {

                for (var j = max_t - 1; j > i; j--) {
                    best_x[j] = best_x[j - 1];
                    best[j] = best[j - 1];
                }

                best_x[i] = ex;
                best[i] = id;
                break;
            }
        }
    }
}

// 转成 target_list
for (var i = 0; i < max_t; i++) {
    if (best[i] != noone) {
        array_push(target_list, best[i]);
    }
}

// 攻击逻辑（保持不变）

if (has_enemy) {

    if (attack_timer <= cycle - attack_anim * current_flash_speed) {
        attack_timer++;
    } 
    else if (attack_timer <= cycle) {
        attack_timer++;
        state = CARD_STATE.ATTACK;
    } 
    else {
        event_user(1); // 发射子弹
        attack_timer = 0;
        state = CARD_STATE.IDLE;
    }

} else {
    attack_timer = 0;
    state = CARD_STATE.IDLE;
}


