function find_priority_air_enemy() {
    var air_enemy = noone;
    with (obj_enemy_parent) {
        if (hp > 0 && can_hit(other.target_type,target_type) && target_type == "air") {
            if (air_enemy == noone || x < air_enemy.x) {
                air_enemy = id;
            }
        }
    }
    return air_enemy;
}

var target = find_priority_air_enemy();
if (target != noone){
    var inst = instance_create_depth(x,y-105,depth-500, obj_power_god_bullet);
	if (shape == 3) {
        inst.sprite_index = spr_power_god_bullet_3_1;
    } 
    inst.damage = atk;
    inst.move_speed = 15;
    inst.target_enemy = target;
    inst.banding_card_obj = id;
    inst.row = grid_row;
	inst.bullet_shape = shape;
}