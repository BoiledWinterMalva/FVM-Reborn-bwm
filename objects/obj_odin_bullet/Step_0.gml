
if global.is_paused{
	image_speed = 0
	exit
	
}
image_speed = 1
x += move_speed
if burnt == 1{
        switch (shape) {
            case 0: sprite_index = spr_odin_bullet_0f; break
            case 1: sprite_index = spr_odin_bullet_1f; break;
            case 2: sprite_index = spr_odin_bullet_2f; break;
            case 3: sprite_index = spr_odin_bullet_3f; break;
        }
}

if x > 2200 or y > 1200 or x < 0 or y < 0{
	instance_destroy()
}