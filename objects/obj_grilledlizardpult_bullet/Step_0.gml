if global.is_paused{
	exit
}
x += move_speed
y -= cvspeed
cvspeed -= cgravity
image_angle -= 5
if x > 2200 or y > 1200 or x < -200 or y < -200{
	instance_destroy()
}
//if target_enemy != noone && (!instance_exists(target_enemy) or target_enemy.hp <= 0){
//    // 目标敌人在飞行过程中死亡，检查是否落地
//    if y >= thrower_y {
//        // 击中地面，造成溅射伤害
//        instance_create_depth(x,y,depth,obj_grilledlizardpult_bullet_effect)
//        instance_destroy()
//    }
//}

if y >= thrower_y - 10 {
    // 击中地面，造成溅射伤害
    var inst = instance_create_depth(x,y,depth,obj_grilledlizardpult_bullet_effect)
	inst.image_angle -= 75
    instance_destroy()
}