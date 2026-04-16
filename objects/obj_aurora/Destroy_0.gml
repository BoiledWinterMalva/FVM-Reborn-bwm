// 从网格数据中移除
if hp < max_hp && !invincible{
	obj_task_manager.card_loss ++
}
card_destroyed(id);

// 注销增伤源
var idx = ds_list_find_index(global.buff_sources, id);
if (idx != -1) {
    ds_list_delete(global.buff_sources, idx);
}
global.buff_dirty = true; // 驱动增伤系统更新

// 创建死亡特效
var effect_inst = instance_create_depth(x, y, depth, obj_aurora_dead_explode);
if (shape == 0) {
    effect_inst.sprite_index = spr_aurora_dead;  // 假设有对应的精灵，根据 shape 设置
} else if (shape == 1) {
    effect_inst.sprite_index = spr_aurora_dead_1;
} else if (shape == 2) {
    effect_inst.sprite_index = spr_aurora_dead_2;
} else {
    effect_inst.sprite_index = spr_aurora_dead_3;
}
effect_inst.grid_row = grid_row;
effect_inst.grid_col = grid_col;
effect_inst.shape = shape;
effect_inst.atk = 1600;
event_inherited();

if (instance_number(obj_aurora) <= 1) {
    with (obj_card_parent) {
        if (variable_instance_exists(id, "original_atk") && original_atk != -1) {
            atk = original_atk;
            original_atk = -1; 
        }
    }
}