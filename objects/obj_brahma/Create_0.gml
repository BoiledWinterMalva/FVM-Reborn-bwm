// obj_small_furnace 的 Create 事件
//plant_id = "small_fire";  // 唯一标识符
event_inherited();  // 继承父对象属性
plant_id = "brahma"; 
// 设置对象类型和精灵
obj_type = object_index;
current_level = 1
event_user(0)
sprite_index = spr_brahma;
if shape == 1 {sprite_index = spr_brahma_1;}
else if shape == 2 {sprite_index = spr_brahma_2;}
else if shape == 3 {sprite_index = spr_brahma_2;}

// ========== 特定属性默认值 ==========

attack_anim = 0;
attack_timer = 0
idle_anim = 32
flash_speed = 5
plant_type = "coffee"
is_slowdown = false
current_hp = hp

can_mouse_list = ["can_mouse"]
exploded = false
henshin = false

target_card_id = global.last_placed_card_id;
target_shape = global.last_placed_card_shape;

var total_frames = sprite_get_number(sprite_index);
transform_timer = total_frames * flash_speed
