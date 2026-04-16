if global.is_paused{
	image_speed = 0
	exit
}	
image_speed = 0.5
var t = global.moon_god_target;
var target_valid = (t != noone && instance_exists(t) && t.hp > 0);

if (target_valid) {
    var t_x = t.x;
    var t_y = t.y - 75;
        
    var dir = point_direction(x, y, t_x, t_y);
    vx = lengthdir_x(move_speed, dir);
    vy = lengthdir_y(move_speed, dir);
    fly_dir = dir;
        
} else {
    if (!variable_instance_exists(id, "fly_dir")) {
        fly_dir = point_direction(xstart, ystart, x, y);
    }
    vx = lengthdir_x(move_speed, fly_dir);
    vy = lengthdir_y(move_speed, fly_dir);
}
x += vx;
y += vy;

if (x > 2200 || y > 1200 || x < -200 || y < -200) {
    instance_destroy();
}