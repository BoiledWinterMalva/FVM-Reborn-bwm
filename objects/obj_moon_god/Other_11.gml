var inst = instance_create_depth(x,y-55,depth-500,obj_moon_god_bullet)
if shape = 1{
	inst.sprite_index = spr_moon_god_bullet_1
}
if shape = 2{
	inst.sprite_index = spr_moon_god_bullet_2
}
if shape = 3{
	inst.sprite_index = spr_moon_god_bullet_3
}
inst.damage = final_atk
inst.move_speed = 10
audio_play_sound(snd_throw,0,0)
