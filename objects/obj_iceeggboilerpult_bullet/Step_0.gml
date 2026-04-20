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

if y >= thrower_y - 30{
    // 击中地面，造成溅射伤害
    instance_create_depth(x,y,depth,obj_iceeggboilerpult_bullet_effect)
    instance_destroy()
}