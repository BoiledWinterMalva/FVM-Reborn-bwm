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

if target_enemy != noone && (!instance_exists(target_enemy) or target_enemy.hp <= 0){
    if y >= thrower_y {
        instance_create_depth(x,y,depth,obj_iceeggboilerpult_bullet_effect)
        instance_destroy()
    }
}