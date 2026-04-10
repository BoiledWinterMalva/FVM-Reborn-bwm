if global.is_paused {
    image_speed = 0;
    exit;
}
// 延迟处理
if (delay > 0) {
    delay--;
	image_alpha = 0;
    image_speed = 0; // 暂停动画
	if (instance_exists(target_id)) {
	    x = target_id.x;
	    y = target_id.y - 20; // 偏移保持原先效果
	}
    exit; // 等待生效
} else {
	image_alpha = 1;
    image_speed = 1; // 延迟结束，开始动画
	if !snd {audio_play_sound(snd_cold_brew_machine,0,0);snd = true}
}
if (!hit_done && image_index == hit_frame) {
	var _x = x
	var _y = y
    if (instance_exists(target_id)) {
	    target_id.hp -= damage;
		_x = target_id.x;
		_y = target_id.y;

	    // 溅射：当 bullet_shape >= 1 时，对主目标周围 3x3 格（排/列相邻）造成 20% 伤害（不作用于主目标）
	    if (shape_bullet >= 1) {
			var _range = 200;
	        var splash_ratio = 0.2;
	        with (obj_enemy_parent) {
	            if (hp > 0
	                && id != other.target_id
	                && grid_row <= other.row + 1
	                && grid_row >= other.row - 1
	                && point_distance(x, y, _x, _y) < _range)
	            {
	                damage_amount = other.damage * splash_ratio;
	                damage_type = other.damage_type;
	                event_user(0);
	            }
	        }
	    }
	}
    hit_done = true;
}

if image_index >= 8 {instance_destroy();}