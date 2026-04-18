image_xscale = 1.8
image_yscale = 1.8



is_submenu_opened = false

current_page = 1
current_max_page = 10

shop_button_select = 1

gods_goods_list = ds_list_create()

instance_create_depth(x+799,y-480,depth-1,obj_gods_store_closer)

var btn1 = instance_create_depth(x-743,y-363,depth-1,obj_gods_store_select_btn)
btn1.button_index = 1
btn1.sprite_index = spr_gods_store_select_btn_1
var btn2 = instance_create_depth(x-560,y-363,depth-1,obj_gods_store_select_btn)
btn2.button_index = 2
btn2.sprite_index = spr_gods_store_select_btn_2

var prev_btn = instance_create_depth(856, 912, depth-1, obj_gods_store_page_btn)
prev_btn.btn_type = "prev"
var next_btn = instance_create_depth(1056, 912, depth-1, obj_gods_store_page_btn)
next_btn.btn_type = "next"

gods_shop_list_recharge()

function gods_shop_list_recharge(){
	ds_list_clear(gods_goods_list)
	
	var map_array = []

	ds_map_keys_to_array(global.gods_goods_map,map_array)

	var goods_array_size = array_length(map_array)

	for(var i = 0; i < goods_array_size;i++){
		//获取卡片类型商品
		if shop_button_select == 1{
			if global.gods_goods_map[? map_array[i]].type == "card"{
				//将商品id添加到商品列表中
				ds_list_add(gods_goods_list,map_array[i])
			}
		//获取转职类型商品
		} else if shop_button_select == 2{
			if global.gods_goods_map[? map_array[i]].type == "shape"{
				//将商品id添加到商品列表中
				ds_list_add(gods_goods_list,map_array[i])
			}
		}
	}
	//按类型创建购买按钮
	instance_destroy(obj_gods_store_buy_btn)
	for(var i = 0 ; i< 4; i++){
		for(var j = 0; j < 4; j++){
			//绘制卡片类型商品
			if shop_button_select == 1{
				if ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16) != undefined{
					// 检查卡片是否已解锁
		            var is_unlocked = false;
		            for(var k = 0; k < array_length(global.save_data.unlocked_cards); k++) {
		                if (global.save_data.unlocked_cards[k].id == global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].unlock_item_id) {
		                    is_unlocked = true;
		                    break;
		                }
		            }
					//根据商品id获取卡片信息
					var inst = instance_create_depth(x-615+411*j+77, y-251+165*i+60,depth-1,obj_gods_store_buy_btn)
					inst.target_item = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].unlock_item_id
					inst.cost = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].cost
					inst.goods_name = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].display_name
					inst.tooltip_text = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].description
					inst.btn_type = "card"
					if is_unlocked{
						inst.is_disabled = true
					}
				}
			//绘制转职类型商品
			} else if shop_button_select == 2{
				if ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16) != undefined{
					var target_card_id = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].unlock_item_id
					// 检查卡片是否已解锁
		            var card_unlocked = false;
					var shape_unlocked = false;
		            for(var k = 0; k < array_length(global.save_data.unlocked_cards); k++) {
		                if (global.save_data.unlocked_cards[k].id == target_card_id) {
		                    card_unlocked = true;
							if get_card_info_simple(target_card_id).max_shape >= global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].target_shape {
								shape_unlocked = true;
							} 
		                    break;
		                }
		            }
					//根据商品id获取卡片信息
					var inst = instance_create_depth(x-615+411*j+77, y-251+165*i+60,depth-1,obj_gods_store_buy_btn)
					inst.target_item = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].unlock_item_id
					inst.target_shape = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].target_shape
					inst.cost = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].cost
					inst.goods_name = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].display_name
					inst.tooltip_text = global.gods_goods_map[? ds_list_find_value(gods_goods_list,i*4+j+(current_page-1)*16)].description
					inst.btn_type = "shape"
					if shape_unlocked{
						inst.is_disabled = true
					} else if !card_unlocked {
						inst.target_card_unlocked = false
					}
				}
			}
		}
	}
}