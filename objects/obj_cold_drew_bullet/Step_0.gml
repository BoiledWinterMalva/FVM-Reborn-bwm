if global.is_paused {
    image_speed = 0;
    exit;
} else {
    image_speed = 1;
}
if (!hit_done && image_index == hit_frame) {
    if (instance_exists(target_id)) {
        target_id.hp -= damage;
    }
    hit_done = true;
}

if image_index >= 8 {instance_destroy();}