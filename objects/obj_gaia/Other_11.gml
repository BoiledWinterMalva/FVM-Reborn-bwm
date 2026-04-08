var inst = instance_create_depth(x, y-360, depth-1, obj_gaia_bullet)

inst.target_x = enemy_x_locked
inst.target_y = y
inst.damage = atk
inst.row = grid_row
inst.shape_bullet = shape

if (shape == 0) {
    inst.sprite_index = spr_gaia_bullet;  // 假设有对应的精灵，根据 shape 设置
} else if (shape == 1) {
    inst.sprite_index = spr_gaia_bullet_1;
} else if (shape == 2) {
    inst.sprite_index = spr_gaia_bullet_2;
} else {
    inst.sprite_index = spr_gaia_bullet_3;
}