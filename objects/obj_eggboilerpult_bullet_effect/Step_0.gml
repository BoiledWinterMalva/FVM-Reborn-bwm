if global.is_paused{
	exit
}
timer ++
image_index = floor(timer/5)
if timer >= 28{
	instance_destroy()
}