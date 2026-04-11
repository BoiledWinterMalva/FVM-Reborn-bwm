if global.is_paused{
	exit
}
if (!instance_exists(parent_body)) {
    instance_destroy();
    exit;
}
x = parent_body.x
y = parent_body.y
depth = parent_body.depth-1
image_index = parent_body.image_index