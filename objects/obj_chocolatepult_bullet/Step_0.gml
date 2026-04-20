if global.is_paused{
	exit
}

x += move_speed
y -= cvspeed
cvspeed -= cgravity
image_angle -= 2

if x > 2200 or y > 1200 or x < -200 or y < -200{
	instance_destroy()
}

if y >= thrower_y - 30 {
	var inst = instance_create_depth(x,y,depth,obj_coffeecup_bullet_effect)
	inst.sprite_index = spr_chocolatepult_bullet_effect
	inst.image_xscale = 1.2
	inst.image_yscale = 1.2
    instance_destroy()
}
