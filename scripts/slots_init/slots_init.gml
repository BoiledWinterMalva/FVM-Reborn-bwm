function slots_init(){
	register_card("xiao_long_bao", obj_xiao_long_bao, [
	    {"shape":0, "sprite":spr_xiao_long_bao, "cost":100, "cooldown":7*60, "description":"小笼包：发射包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	
	register_card("small_fire", obj_small_fire, [
	    {"shape":0, "sprite":spr_small_fire, "cost":50, "cooldown":7*60, "description":"小火炉：生产火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_small_fire_1, "cost":25, "cooldown":7*60, "description":"日光炉：生产火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_small_fire_2, "cost":25, "cooldown":7*60, "description":"太阳能高效炉：一次生产两朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	
	register_card("toast_bread",obj_toast_bread,[
		{"shape":0,"sprite":spr_toast_bread,"cost":50,"cooldown":30*60,"description":"土司面包：阻挡敌人前进","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	
	register_card("flour_sack",obj_flour_sack,[
	    {"shape":0, "sprite":spr_flour_sack, "cost":50, "cooldown":30*60, "description":"面粉袋：压死老鼠","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_flour_sack_1, "cost":75, "cooldown":30*60, "description":"影分身袋：压死老鼠","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_flour_sack_2, "cost":100, "cooldown":30*60, "description":"乾坤分身袋：压死老鼠","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	
	register_card("double_long_bao",obj_double_long_bao,[
	    {"shape":0, "sprite":spr_double_long_bao, "cost":200, "cooldown":7*60, "description":"双层小笼包：发射两发包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	
	register_card("mouse_clip",obj_mouse_clip,[
	    {"shape":0, "sprite":spr_mouse_clip, "cost":25, "cooldown":30*60, "description":"老鼠夹子：准备完成后，接触地面敌人爆炸","plant_type":"normal","feature_type":"dwarf","target_card":"none"},
	    {"shape":1, "sprite":spr_mouse_clip_1, "cost":25, "cooldown":30*60, "description":"多用老鼠夹子：准备完成后，接触敌人爆炸","plant_type":"normal","feature_type":"dwarf","target_card":"none"},
		{"shape":2, "sprite":spr_mouse_clip_2, "cost":25, "cooldown":30*60, "description":"黑猫鼠夹：准备完成后，接触敌人产生3*4爆炸","plant_type":"normal","feature_type":"dwarf","target_card":"none"}
	])
	register_card("coke_bomb",obj_coke_bomb,[
	    {"shape":0, "sprite":spr_coke_bomb, "cost":150, "cooldown":50*60, "description":"可乐炸弹：3*4范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_coke_bomb_1, "cost":175, "cooldown":50*60, "description":"云爆可乐弹：3*4范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_coke_bomb_2, "cost":225, "cooldown":50*60, "description":"燃烧可乐弹：3*4范围爆炸，留下一片火焰","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("wooden_plate",obj_wooden_plate,[
	    {"shape":0, "sprite":spr_wooden_plate, "cost":25, "cooldown":7*60, "description":"木盘子：在水上承载卡片","plant_type":"lilypad","feature_type":"water","target_card":"none"},
	    {"shape":1, "sprite":spr_wooden_plate_1, "cost":0, "cooldown":7*60, "description":"友情木盘子：在水上承载卡片","plant_type":"lilypad","feature_type":"water","target_card":"none"},
		{"shape":2, "sprite":spr_wooden_plate_2, "cost":0, "cooldown":7*60, "description":"坚韧木盘子：一次放置三个，在水上承载卡片","plant_type":"lilypad","feature_type":"water","target_card":"none"}
	])
	register_card("ice_long_bao", obj_ice_long_bao, [
	    {"shape":0, "sprite":spr_ice_long_bao, "cost":175, "cooldown":7*60, "description":"冰冻小笼包：发射减速冰包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("goblet_lamp", obj_goblet_lamp, [
	    {"shape":0, "sprite":spr_goblet_lamp, "cost":25, "cooldown":7*60, "description":"酒杯灯：先生产少量火苗，一段时间后正常","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_goblet_lamp_1, "cost":15, "cooldown":7*60, "description":"节能灯：先生产少量火苗，一段时间后正常","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_goblet_lamp_2, "cost":15, "cooldown":7*60, "description":"高效节能灯：先生产少量火苗，一段时间后正常","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("coffee_cup", obj_coffee_cup, [
	    {"shape":0, "sprite":spr_coffee_cup, "cost":0, "cooldown":7*60, "description":"咖啡杯：攻击三格内敌人，白天睡觉","plant_type":"normal","feature_type":"low","target_card":"none"},
	    {"shape":1, "sprite":spr_coffee_cup_1, "cost":0, "cooldown":7*60, "description":"花纹咖啡杯：攻击三格内敌人","plant_type":"normal","feature_type":"low","target_card":"none"},
		{"shape":2, "sprite":spr_coffee_cup_2, "cost":0, "cooldown":7*60, "description":"骨瓷咖啡杯：攻击一行敌人","plant_type":"normal","feature_type":"low","target_card":"none"}
	]);
	register_card("salad_pult", obj_salad_pult, [
	    {"shape":0, "sprite":spr_salad_pult, "cost":100, "cooldown":7*60, "description":"色拉投手：投掷可弹射的番茄","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_salad_pult_1, "cost":100, "cooldown":7*60, "description":"果蔬色拉投手：投掷可弹射的番茄","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_salad_pult_2, "cost":100, "cooldown":7*60, "description":"凯撒色拉投手：投掷两颗可弹射的番茄","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("coffee_pot", obj_coffee_pot, [
	    {"shape":0, "sprite":spr_coffee_pot, "cost":75, "cooldown":7*60, "description":"咖啡喷壶：穿透攻击四格内敌人，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_coffee_pot_1, "cost":75, "cooldown":7*60, "description":"香醇咖啡喷壶：穿透攻击四格内敌人","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_coffee_pot_icon_2, "cost":75, "cooldown":7*60, "description":"红温咖啡喷壶：穿透攻击一行敌人","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_coffee_pot_2}
	]);
	register_card("chocolate_bread",obj_chocolate_bread,[
		{"shape":0,"sprite":spr_chocolate_bread,"cost":125,"cooldown":30*60,"description":"巧克力面包：阻挡敌人翻越","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":1,"sprite":spr_chocolate_bread_icon_1,"cost":125,"cooldown":30*60,"description":"德芙面包：阻挡敌人翻越","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_chocolate_bread_1}
	])
	register_card("water_tea_cup",obj_water_tea_cup,[
		{"shape":0,"sprite":spr_water_tea_cup,"cost":0,"cooldown":7*60,"description":"水上茶杯：在水上攻击三格内敌人，白天睡觉","plant_type":"normal","feature_type":"water","target_card":"none"}
	])
	register_card("ice_bucket_bomb",obj_ice_bucket_bomb,[
	    {"shape":0, "sprite":spr_ice_bucket_bomb, "cost":75, "cooldown":50*60, "description":"冰桶炸弹：冰冻并伤害全屏敌人，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_ice_bucket_bomb_1, "cost":75, "cooldown":50*60, "description":"酸橙冰桶炸弹：冰冻并伤害全屏敌人，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_ice_bucket_bomb_2, "cost":75, "cooldown":50*60, "description":"杂果冰桶炸弹：冰冻并伤害全屏敌人，3*4范围冰爆，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("stinky_tofu_pult", obj_stinky_tofu_pult, [
	    {"shape":0, "sprite":spr_stinky_tofu_pult, "cost":175, "cooldown":7*60, "description":"臭豆腐投手：投掷能产生毒雾的豆腐","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_stinky_tofu_pult_1, "cost":175, "cooldown":7*60, "description":"什锦臭豆腐投手：投掷能产生毒雾的豆腐","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_stinky_tofu_pult_2, "cost":175, "cooldown":7*60, "description":"铁板臭豆腐投手：投掷两块能产生毒雾的豆腐","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("cat_box",obj_cat_box,[
	    {"shape":0, "sprite":spr_cat_box_1, "cost":100, "cooldown":7*60, "description":"猫猫盒：将老鼠惊吓至相邻行","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("kettle_bomb",obj_kettle_bomb,[
	    {"shape":0, "sprite":spr_kettle_bomb, "cost":275, "cooldown":50*60, "description":"开水壶炸弹：5*5范围爆炸，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_kettle_bomb_1, "cost":300, "cooldown":50*60, "description":"汽油壶炸弹：5*5范围爆炸，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_kettle_bomb_2, "cost":350, "cooldown":50*60, "description":"汽油干冰弹：5*5范围爆炸和减速","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("triple_wine_rack",obj_triple_wine_rack,[
	    {"shape":0, "sprite":spr_triple_wine_rack, "cost":325, "cooldown":7*60, "description":"三线酒架：向前方三行发射3发葡萄酒弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_triple_wine_rack_1, "cost":325, "cooldown":7*60, "description":"强力三线酒架：向前方三行发射4发葡萄酒弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_triple_wine_rack_2, "cost":325, "cooldown":7*60, "description":"终结者酒架：向前方三行发射6发葡萄酒弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("brazier",obj_brazier,[
	    {"shape":0, "sprite":spr_brazier, "cost":175, "cooldown":7*60, "description":"火盆：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_brazier_1, "cost":175, "cooldown":7*60, "description":"电子烤盘：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_brazier_2, "cost":175, "cooldown":7*60, "description":"岩烧烤盘：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("large_fire",obj_large_fire,[
	    {"shape":0, "sprite":spr_large_fire, "cost":150, "cooldown":50*60, "description":"大火炉：一次生产两朵火苗","plant_type":"normal","feature_type":"upgrade","target_card":"small_fire"},
	    {"shape":1, "sprite":spr_large_fire_1, "cost":150, "cooldown":50*60, "description":"高能火炉：一次生产三朵火苗","plant_type":"normal","feature_type":"upgrade","target_card":"small_fire"},
		{"shape":2, "sprite":spr_large_fire_2, "cost":150, "cooldown":50*60, "description":"超能燃气炉：一次生产三朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("iron_fishbone",obj_iron_fishbone,[
	    {"shape":0, "sprite":spr_iron_fishbone, "cost":125, "cooldown":50*60, "description":"钢鱼刺：攻击踩上它的老鼠，卡坏四次车辆","plant_type":"normal","feature_type":"upgrade","target_card":"fishbone"},
	    {"shape":1, "sprite":spr_iron_fishbone_1, "cost":125, "cooldown":50*60, "description":"无座钢鱼刺：攻击踩上它的老鼠，卡坏四次车辆","plant_type":"normal","feature_type":"dwarf","target_card":"none"},
		{"shape":2, "sprite":spr_iron_fishbone_2, "cost":125, "cooldown":50*60, "description":"海贼王鱼刺：攻击并减速踩上它的老鼠，卡坏四次车辆","plant_type":"normal","feature_type":"dwarf","target_card":"none"}
	])
	register_card("gatlin_long_bao",obj_gatlin_long_bao,[
	    {"shape":0, "sprite":spr_gatlin_long_bao, "cost":250, "cooldown":50*60, "description":"机枪小笼包：发射四发包子","plant_type":"normal","feature_type":"upgrade","target_card":"double_long_bao"},
	    {"shape":1, "sprite":spr_gatlin_long_bao_1, "cost":250, "cooldown":50*60, "description":"竹筒机枪小笼包：发射四发包子","plant_type":"normal","feature_type":"upgrade","target_card":"double_long_bao"},
		{"shape":2, "sprite":spr_gatlin_long_bao_2, "cost":250, "cooldown":50*60, "description":"格林机枪笼包：发射六发包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("rotating_coffee_pot", obj_rotating_coffee_pot, [
	    {"shape":0, "sprite":spr_rotating_coffee_pot, "cost":150, "cooldown":50*60, "description":"旋转咖啡喷壶：3*3范围穿透攻击，白天睡觉","plant_type":"normal","feature_type":"upgrade","target_card":"coffee_pot"},
	    {"shape":1, "sprite":spr_rotating_coffee_pot_1, "cost":150, "cooldown":50*60, "description":"节能旋转咖啡壶：3*3范围穿透攻击，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_rotating_coffee_pot_2, "cost":150, "cooldown":50*60, "description":"原子咖啡壶：5*5范围穿透攻击","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("takoyaki", obj_takoyaki, [
	    {"shape":0, "sprite":spr_takoyaki, "cost":225, "cooldown":50*60, "description":"章鱼烧：甩出两发追踪飞镖","plant_type":"normal","feature_type":"normal","target_card":"wooden_plate"},
	    {"shape":1, "sprite":spr_takoyaki_icon_1, "cost":225, "cooldown":50*60, "description":"两栖章鱼烧：甩出两发追踪飞镖","plant_type":"normal","feature_type":"amphi","target_card":"none","place_preview":spr_takoyaki_1},
		{"shape":2, "sprite":spr_takoyaki_2, "cost":225, "cooldown":50*60, "description":"火影章鱼烧：甩出四发追踪飞镖","plant_type":"normal","feature_type":"amphi","target_card":"none"}
	]);
	register_card("wooden_cork",obj_wooden_cork,[
		{"shape":0,"sprite":spr_wooden_cork,"cost":75,"cooldown":7*60,"description":"木塞子：堵住老鼠洞","plant_type":"coffee","feature_type":"normal","target_card":"none"}
	])
	register_card("coffee_grounds",obj_coffee_grounds,[
	    {"shape":0, "sprite":spr_coffee_grounds_icon, "cost":75, "cooldown":7*60, "description":"咖啡粉：唤醒卡片","plant_type":"coffee","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_coffee_grounds_icon_1, "cost":25, "cooldown":7*60, "description":"名贵咖啡粉：唤醒3*3范围卡片","plant_type":"coffee","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_coffee_grounds_icon_2, "cost":25, "cooldown":7*60, "description":"皇族咖啡粉：唤醒全屏卡片","plant_type":"coffee","feature_type":"normal","target_card":"none"}
	])
	register_card("wine_bottle_bomb",obj_wine_bottle_bomb,[
	    {"shape":0, "sprite":spr_wine_bottle_bomb, "cost":125, "cooldown":50*60, "description":"酒瓶炸弹：一行范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_wine_bottle_bomb_1, "cost":150, "cooldown":50*60, "description":"高爆酒瓶弹：一行范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_wine_bottle_bomb_2, "cost":200, "cooldown":50*60, "description":"子母酒瓶弹：一行和一列范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("double_water_pipe",obj_double_water_pipe,[
	    {"shape":0, "sprite":spr_double_water_pipe, "cost":125, "cooldown":7*60, "description":"双向水管：向前后两个方向发射水弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_double_water_pipe_1, "cost":125, "cooldown":7*60, "description":"控温双向水管：向前后两个方向发射水弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_double_water_pipe_2, "cost":125, "cooldown":7*60, "description":"合金水管：向前后两个方向发射水弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("melon_shield",obj_melon_shield,[
	    {"shape":0, "sprite":spr_melon_shield_icon, "cost":125, "cooldown":30*60, "description":"瓜皮护罩：保护被罩住的卡片","plant_type":"shield_outer","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_melon_shield_icon_1, "cost":125, "cooldown":30*60, "description":"尖刺瓜皮护罩：保护被罩住的卡片并反伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_melon_shield_icon_2, "cost":125, "cooldown":30*60, "description":"锋芒瓜皮护罩：保护被罩住的卡片并反伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none"}
	])
	register_card("steel_wool",obj_steel_wool,[
		{"shape":0,"sprite":spr_steel_wool,"cost":25,"cooldown":30*60,"description":"钢丝球：将老鼠拖入水中","plant_type":"normal","feature_type":"water","target_card":"none"}
	])
	register_card("sausage", obj_sausage, [
	    {"shape":0, "sprite":spr_sausage_land, "cost":125, "cooldown":7*60, "description":"香肠：发射香肠攻击空中和地面敌人","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("fishbone",obj_fishbone,[
	    {"shape":0, "sprite":spr_fishbone, "cost":100, "cooldown":7*60, "description":"鱼刺：攻击踩上它的老鼠，卡坏车辆","plant_type":"normal","feature_type":"dwarf","target_card":"none"}
	])
	register_card("hamburger",obj_hamburger,[
	    {"shape":0, "sprite":spr_hamburger, "cost":150, "cooldown":7*60, "description":"汉堡包：吃掉老鼠","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_hamburger_1, "cost":150, "cooldown":7*60, "description":"天椒双层堡：吃掉前方三格老鼠","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_hamburger_2, "cost":150, "cooldown":7*60, "description":"牛肉双黑汉堡：吃掉前方三格老鼠并留下毒雾","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("oil_lamp",obj_oil_lamp,[
		{"shape":0,"sprite":spr_oil_lamp_icon,"cost":25,"cooldown":30*60,"description":"油灯：照亮迷雾和隐形老鼠","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":1,"sprite":spr_oil_lamp_icon_1,"cost":25,"cooldown":30*60,"description":"高亮油灯：照亮全屏迷雾和隐形老鼠","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_oil_lamp_1}
	])
	register_card("ventilation_fan", obj_ventilation_fan, [
	    {"shape":0, "sprite":spr_ventilation_fan, "cost":100, "cooldown":7*60, "description":"换气扇：吹走迷雾和空军","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_ventilation_fan_1, "cost":99, "cooldown":7*60, "description":"超能草扇：吹走迷雾和空军，击退敌人","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_ventilation_fan_2, "cost":99, "cooldown":7*60, "description":"SSR草扇：吹走迷雾和空军，击退敌人","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("egg_boiler_pult", obj_egg_boiler_pult, [
	    {"shape":0, "sprite":spr_egg_boiler_pult_icon, "cost":250, "cooldown":7*60, "description":"煮蛋器投手：投掷溅射鸡蛋","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_egg_boiler_pult},
	    {"shape":1, "sprite":spr_egg_boiler_pult_icon_1, "cost":250, "cooldown":7*60, "description":"威力煮蛋器：投掷溅射鸡蛋","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_egg_boiler_pult_1},
		{"shape":2, "sprite":spr_egg_boiler_pult_icon_2, "cost":250, "cooldown":7*60, "description":"强袭煮蛋器：投掷两个溅射鸡蛋","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_egg_boiler_pult_2}
	]);
	register_card("ice_egg_boiler_pult", obj_ice_egg_boiler_pult, [
	    {"shape":0, "sprite":spr_ice_egg_boiler_pult_icon, "cost":200, "cooldown":50*60, "description":"冰煮蛋器：投掷减速冰鸡蛋","plant_type":"normal","feature_type":"upgrade","target_card":"egg_boiler_pult","place_preview":spr_ice_egg_boiler_pult},
	    {"shape":1, "sprite":spr_ice_egg_boiler_pult_icon_1, "cost":200, "cooldown":50*60, "description":"节能冰煮蛋器：投掷减速冰鸡蛋","plant_type":"normal","feature_type":"upgrade","target_card":"egg_boiler_pult","place_preview":spr_ice_egg_boiler_pult_1},
		{"shape":2, "sprite":spr_ice_egg_boiler_pult_icon_2, "cost":200, "cooldown":50*60, "description":"冰河煮蛋器：投掷减速冰鸡蛋","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_ice_egg_boiler_pult_2}
	]);
	register_card("chocolate_pult", obj_chocolate_pult, [
	    {"shape":0, "sprite":spr_chocolate_pult_icon, "cost":125, "cooldown":7*60, "description":"巧克力投手：投掷能定住敌人的巧克力","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_chocolate_pult},
	    {"shape":1, "sprite":spr_chocolate_pult_icon_1, "cost":125, "cooldown":7*60, "description":"浓情巧克力投手：投掷能定住敌人的巧克力","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_chocolate_pult_1},
		{"shape":2, "sprite":spr_chocolate_pult_2, "cost":125, "cooldown":7*60, "description":"脆心巧克力投手：投掷两块能定住敌人的巧克力","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("chocolate_cannon", obj_chocolate_cannon, [
	    {"shape":0, "sprite":spr_chocolate_cannon, "cost":300, "cooldown":50*60, "description":"巧克力大炮：发射3*3范围爆炸的巧克力球","plant_type":"normal","feature_type":"upgrade","target_card":"chocolate_pult"},
	    {"shape":1, "sprite":spr_chocolate_cannon_1, "cost":300, "cooldown":50*60, "description":"节能巧克力大炮：发射3*3范围爆炸的巧克力球","plant_type":"normal","feature_type":"upgrade","target_card":"chocolate_pult"},
		{"shape":2, "sprite":spr_chocolate_cannon_2, "cost":300, "cooldown":50*60, "description":"死神大炮：发射两个3*3范围爆炸的巧克力球","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("firework_dragon", obj_firework_dragon, [
	    {"shape":0, "sprite":spr_firework_dragon, "cost":50, "cooldown":75*60, "description":"花火龙：立即生产6朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_firework_dragon_1, "cost":0, "cooldown":75*60, "description":"灼灼花火龙：立即生产6朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_firework_dragon_icon_2, "cost":0, "cooldown":75*60, "description":"炽焰花火龙：立即生产12朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_firework_dragon_2}
	]);
	register_card("double_ice_long_bao",obj_double_ice_long_bao,[
	    {"shape":0, "sprite":spr_double_ice_long_bao, "cost":225, "cooldown":7*60, "description":"双层冰冻小笼包：发射两发冰包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("cat_chest",obj_cat_chest,[
	    {"shape":0, "sprite":spr_cat_chest_1, "cost":200, "cooldown":30*60, "description":"猫猫箱：将老鼠惊吓至相邻行并使其丢弃防具","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("cherry_pudding",obj_cherry_pudding,[
	    {"shape":0, "sprite":spr_cherry_pudding, "cost":100, "cooldown":7*60, "description":"樱桃反弹布丁：反弹子弹并附加伤害","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_cherry_pudding_1, "cost":75, "cooldown":7*60, "description":"节能反弹布丁：反弹子弹并附加伤害","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_cherry_pudding_2, "cost":75, "cooldown":7*60, "description":"热量反弹布丁：反弹子弹并附加伤害","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("skewer_bomb",obj_skewer_bomb,[
	    {"shape":0, "sprite":spr_skewer_bomb_icon, "cost":50, "cooldown":30*60, "description":"麻辣串炸弹：炸死单格范围空军","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_skewer_bomb}
	])
	register_card("gatlin_ice_long_bao",obj_gatlin_ice_long_bao,[
	    {"shape":0, "sprite":spr_gatlin_ice_long_bao, "cost":300, "cooldown":50*60, "description":"机枪冰冻小笼包：发射四发冰包子","plant_type":"normal","feature_type":"upgrade","target_card":"double_ice_long_bao"}
	])
	register_card("aquarius_elve",obj_aquarius_elve,[
	    {"shape":0, "sprite":spr_aquarius_elve, "cost":150, "cooldown":30*60, "description":"水瓶座精灵：本行5格和本列5格范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_aquarius_elve_1, "cost":200, "cooldown":30*60, "description":"水瓶座战将：本行5格和本列5格范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_aquarius_elve_2, "cost":250, "cooldown":30*60, "description":"水瓶座星宿：一列和本行5格范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("tar_sprayer", obj_tar_sprayer, [
	    {"shape":0, "sprite":spr_tar_sprayer, "cost":150, "cooldown":7*60, "description":"焦油喷壶：穿透攻击四格内敌人","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_tar_sprayer_1, "cost":150, "cooldown":7*60, "description":"强力焦油喷壶：穿透攻击六格内敌人","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_tar_sprayer_2, "cost":150, "cooldown":7*60, "description":"祝融喷壶：穿透攻击六格内敌人","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("triple_long_bao", obj_triple_long_bao, [
	    {"shape":0, "sprite":spr_triple_long_bao, "cost":125, "cooldown":7*60, "description":"三向小笼包：向三个方向发射包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("triple_ice_long_bao", obj_triple_ice_long_bao, [
	    {"shape":0, "sprite":spr_triple_ice_long_bao, "cost":225, "cooldown":7*60, "description":"三向冰冻小笼包：向三个方向发射冰包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("hotdog_cannon", obj_hotdog_cannon, [
	    {"shape":0, "sprite":spr_hotdog_cannon, "cost":225, "cooldown":7*60, "description":"热狗大炮：发射冰弹攻击空中和地面敌人","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":1, "sprite":spr_hotdog_cannon_1, "cost":225, "cooldown":7*60, "description":"热狗高射炮：发射冰弹攻击空中和地面敌人","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_hotdog_cannon_2, "cost":225, "cooldown":7*60, "description":"热狗榴弹炮：发射冰弹攻击空中和地面敌人","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("oden_pot", obj_oden_pot, [
	    {"shape":0, "sprite":spr_oden_pot, "cost":150, "cooldown":7*60, "description":"关东煮喷锅：穿透攻击前方和上下各四格敌人，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_oden_pot_1, "cost":150, "cooldown":7*60, "description":"福袋关东煮喷锅：穿透攻击前方和上下各四格敌人","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_oden_pot_2, "cost":150, "cooldown":7*60, "description":"海鲜关东煮喷锅：穿透攻击一行和一列敌人","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("whisky_bomb",obj_whisky_bomb,[
	    {"shape":0, "sprite":spr_whisky_bomb, "cost":150, "cooldown":50*60, "description":"威士忌炸弹：一列范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_whisky_bomb_1, "cost":175, "cooldown":50*60, "description":"水晶威士忌炸弹：一列范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_whisky_bomb_2, "cost":225, "cooldown":50*60, "description":"钻石威士忌炸弹：三列范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("cotton_candy",obj_cotton_candy,[
	    {"shape":0, "sprite":spr_cotton_candy_0_0, "cost":25, "cooldown":10*60, "description":"棉花糖：在空中和岩浆上承载卡片","plant_type":"coffee","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_cotton_candy_1_0, "cost":0, "cooldown":10*60, "description":"草莓棉花糖：在空中和岩浆上承载卡片","plant_type":"coffee","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_cotton_candy_2_0, "cost":0, "cooldown":10*60, "description":"彩虹棉花糖：在空中和岩浆上承载卡片","plant_type":"coffee","feature_type":"normal","target_card":"none"}
	])
	register_card("firework_dragon_real", obj_firework_dragon_real, [
	    {"shape":0, "sprite":spr_firework_dragon, "cost":150, "cooldown":7*60, "description":"花火龙：释放产生大量火苗的烟花","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_firework_dragon_1, "cost":150, "cooldown":7*60, "description":"灼灼花火龙：释放产生大量火苗的烟花","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_firework_dragon_icon_2, "cost":150, "cooldown":7*60, "description":"炽焰花火龙：释放产生大量火苗的烟花","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_firework_dragon_2}
	]);
	register_card("warm_birds", obj_warm_birds, [
	    {"shape":0, "sprite":spr_warm_birds, "cost":125, "cooldown":50*60, "description":"暖暖鸡：一次生产3朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_warm_birds_1, "cost":125, "cooldown":50*60, "description":"焰羽暖暖鸡：一次生产4朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_warm_birds_2, "cost":125, "cooldown":25*60, "description":"日耀暖暖鸡：一次生产5朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("sea_star", obj_sea_star, [
	    {"shape":0, "sprite":spr_sea_star, "cost":350, "cooldown":420, "description":"炭烧海星：向五个方向发射炭烧海星子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":1, "sprite":spr_sea_star_1, "cost":175, "cooldown":420, "description":"芝士焗海星：向五个方向发射炭烧海星子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_sea_star_2, "cost":175, "cooldown":420, "description":"芥末海星刺身：向五个方向发射两枚炭烧海星子弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("tanghulu", obj_tanghulu, [
	    {"shape":0, "sprite":spr_tanghulu, "cost":175, "cooldown":7*60, "description":"糖葫芦炮弹：对空中敌人发射追踪炮弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_tanghulu_1, "cost":200, "cooldown":7*60, "description":"水果糖葫芦炮弹：对空中敌人发射追踪炮弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_tanghulu_2, "cost":250, "cooldown":7*60, "description":"七彩糖葫芦炮弹：对空中敌人发射追踪炮弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("cold_drew", obj_cold_drew, [
	    {"shape":0, "sprite":spr_cold_drew_machine, "cost":295, "cooldown":15*60, "description":"冰块冷萃机：对全屏敌人发射至多4颗追踪冰块","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_cold_drew_machine_1, "cost":295, "cooldown":15*60, "description":"低温冷萃机：对全屏敌人发射至多5颗追踪冰块","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_cold_drew_machine_2, "cost":295, "cooldown":15*60, "description":"迅捷冷萃机：对全屏敌人发射6颗追踪冰块，可集火","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("berry_dessert", obj_berry_dessert, [
	    {"shape":0, "sprite":spr_berry_dessert, "cost":260, "cooldown":40*60, "description":"莓果点心：为3x3范围内追踪类卡片提供增伤","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_berry_dessert_1, "cost":260, "cooldown":40*60, "description":"薄荷莓果点心：为5x5范围内追踪类卡片提供增伤","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_berry_dessert_2, "cost":260, "cooldown":40*60, "description":"流心莓果点心：为5x5范围内追踪类卡片提供增伤","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("grilled_lizard_pult", obj_grilled_lizard_pult, [
	    {"shape":0, "sprite":spr_grilled_lizard_pult, "cost":275, "cooldown":7*60, "description":"烤蜥蜴投手：向前投掷配料爆弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_grilled_lizard_pult_1, "cost":275, "cooldown":7*60, "description":"坚果蜥蜴投手：向前投掷配料爆弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_grilled_lizard_pult_2, "cost":275, "cooldown":7*60, "description":"花椒蜥蜴投手：向前投掷2发配料爆弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("corn_shooter",obj_corn_shooter,[
	    {"shape":0, "sprite":spr_corn_shooter, "cost":250, "cooldown":50*60, "description":"玉蜀黍：发射三颗玉米","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_corn_shooter_1, "cost":250, "cooldown":50*60, "description":"奶油玉米机枪：发射六颗玉米","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_corn_shooter_2, "cost":250, "cooldown":50*60, "description":"加农玉米机枪：发射六颗玉米","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
    register_card("sun_god",obj_sun_god,[
	    {"shape":0, "sprite":spr_sun_god, "cost":200, "cooldown":30*60, "description":"阿波罗神使：一次生产六朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_sun_god_1, "cost":150, "cooldown":25*60, "description":"阿波罗圣神：一次生产八朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":2, "sprite":spr_sun_god_2, "cost":100, "cooldown":20*60, "description":"太阳神·阿波罗：一次生产十朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
        {"shape":3, "sprite":spr_sun_god_3, "cost":25, "cooldown":10*60, "description":"至尊太阳神：一次生产十二朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
	])
    register_card("war_god",obj_war_god,[
	    {"shape":0, "sprite":spr_war_god, "cost":150, "cooldown":7*60, "description":"阿瑞斯神使：向前后两个方向发射子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_war_god_1, "cost":150, "cooldown":7*60, "description":"阿瑞斯圣神：向前后两个方向发射子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":2, "sprite":spr_war_god_2, "cost":150, "cooldown":7*60, "description":"战神·阿瑞斯：向前后两个方向发射子弹，","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":3, "sprite":spr_war_god_3, "cost":150, "cooldown":7*60, "description":"至尊战神：向前后两个方向发射子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
	])
    register_card("love_god",obj_love_god,[
	    {"shape":0, "sprite":spr_love_god, "cost":300, "cooldown":7*60, "description":"丘比特神使：向前方三行射出6发强力子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_love_god_1, "cost":300, "cooldown":7*60, "description":"丘比特圣神：向前方三行射出6发强力子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":2, "sprite":spr_love_god_2, "cost":300, "cooldown":7*60, "description":"爱神·丘比特：向前方三行射出9发强力子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
        {"shape":3, "sprite":spr_love_god_3, "cost":300, "cooldown":7*60, "description":"至尊爱神：向前方三行射出9发强力子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
   ])
	register_card("thor", obj_thor, [
	    {"shape":0, "sprite":spr_thor_icon, "cost":200, "cooldown":7*60, "description":"索尔神使：连续发出2发冰锤","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_thor,"is_gold":1},
	    {"shape":1, "sprite":spr_thor_icon_1, "cost":200, "cooldown":7*60, "description":"索尔圣神：连续发出3发冰锤","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_thor_1,"is_gold":1},
	    {"shape":2, "sprite":spr_thor_icon_2, "cost":200, "cooldown":7*60, "description":"雷神·索尔：连续发出3发冰锤，其中1发为超级冰锤","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_thor_2,"is_gold":1},
	    {"shape":3, "sprite":spr_thor_icon_3, "cost":200, "cooldown":7*60, "description":"至尊雷神：连续发出3发冰锤，其中1发为超级冰锤","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_thor_3,"is_gold":1}
	])
    register_card("moon_god", obj_moon_god, [
	    {"shape":0, "sprite":spr_moon_god, "cost":225, "cooldown":50*60, "description":"狄安娜神使：甩出六发追踪子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_moon_god_1, "cost":225, "cooldown":50*60, "description":"狄安娜圣神：甩出六发追踪子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
   	    {"shape":2, "sprite":spr_moon_god_2, "cost":225, "cooldown":50*60, "description":"月神·狄安娜：甩出六发追踪子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":3, "sprite":spr_moon_god_3, "cost":225, "cooldown":50*60, "description":"至尊月神：甩出六发追踪子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
	]);
    register_card("fire_god",obj_fire_god,[
	    {"shape":0, "sprite":spr_fire_god, "cost":225, "cooldown":7*60, "description":"洛基神使：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_fire_god_1, "cost":225, "cooldown":7*60, "description":"洛基圣神：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":2, "sprite":spr_fire_god_2, "cost":225, "cooldown":7*60, "description":"火神·洛基：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
        {"shape":3, "sprite":spr_fire_god_3, "cost":225, "cooldown":7*60, "description":"至尊火神：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
   ])
    register_card("poseidon", obj_poseidon, [
	    {"shape":0, "sprite":spr_poseidon, "cost":275, "cooldown":30*60, "description":"波塞冬神使：5*5范围穿透攻击","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_poseidon_1, "cost":275, "cooldown":30*60, "description":"波塞冬圣神：5*5范围穿透攻击","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":2, "sprite":spr_poseidon_2, "cost":275, "cooldown":20*60, "description":"海神·波塞冬：5*5范围穿透攻击","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":3, "sprite":spr_poseidon_3, "cost":275, "cooldown":20*60, "description":"至尊海神：7*5范围穿透攻击","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
	]);
    register_card("odin", obj_odin, [
	    {"shape":0, "sprite":spr_odin, "cost":230, "cooldown":7*60, "description":"奥丁神使：发射冈格尼尔穿透攻击敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_odin_1, "cost":230, "cooldown":7*60, "description":"奥丁圣神：发射冈格尼尔穿透攻击敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
        {"shape":2, "sprite":spr_odin_2, "cost":230, "cooldown":7*60, "description":"主神·奥丁：发射冈格尼尔穿透攻击敌人，发射两发","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
  	    {"shape":3, "sprite":spr_odin_3, "cost":230, "cooldown":7*60, "description":"至尊主神：发射冈格尼尔穿透攻击敌人，发射三发","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	]);
	register_card("brahma", obj_brahma, [
	    {"shape":0, "sprite":spr_brahma_icon, "cost":325, "cooldown":55*60, "description":"梵天神使：变身出多个上一次种下的卡片","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_brahma},
		{"shape":1, "sprite":spr_brahma_icon_1, "cost":325, "cooldown":55*60, "description":"梵天圣神：变身出多个上一次种下的卡片","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_brahma_1},
		{"shape":2, "sprite":spr_brahma_icon_2, "cost":325, "cooldown":55*60, "description":"创造神·梵天：变身出多个上一次种下的卡片","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_brahma_2},
		{"shape":3, "sprite":spr_brahma_icon_2, "cost":325, "cooldown":55*60, "description":"至尊创造神：变身出多个上一次种下的卡片","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_brahma_2}
	]);
    register_card("zeus",obj_zeus,[
	    {"shape":0, "sprite":spr_zeus, "cost":375, "cooldown":20*60, "description":"宙斯神使：全屏轰击，造成3×3范围伤害","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_zeus_1, "cost":375, "cooldown":20*60, "description":"宙斯圣神：全屏轰击，造成3×3范围伤害","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":2, "sprite":spr_zeus_2, "cost":375, "cooldown":20*60, "description":"天神·宙斯：全屏轰击，造成3×3范围伤害","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":3, "sprite":spr_zeus_3, "cost":375, "cooldown":20*60, "description":"至尊天神：全屏轰击，造成3×3范围伤害","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
	])
    register_card("ice_god",obj_ice_god,[
	    {"shape":0, "sprite":spr_ice_god, "cost":325, "cooldown":15*60, "description":"典伊神使：召唤8颗冰晶轰击敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_ice_god_1, "cost":225, "cooldown":15*60, "description":"典伊圣神：召唤8颗冰晶轰击敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":2, "sprite":spr_ice_god_2, "cost":225, "cooldown":15*60, "description":"冰神·典伊：召唤10颗冰晶轰击敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":3, "sprite":spr_ice_god_3, "cost":225, "cooldown":15*60, "description":"至尊冰神：召唤12颗冰晶轰击敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
	])
	 register_card("ghost_god", obj_ghost_god, [
	    {"shape":0, "sprite":spr_ghost_god, "cost":225, "cooldown":50*60, "description":"哈迪斯神使：发射五向子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_ghost_god_1, "cost":225, "cooldown":50*60, "description":"哈迪斯圣神：发射五向子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
   	    {"shape":2, "sprite":spr_ghost_god_2, "cost":225, "cooldown":50*60, "description":"冥神·哈迪斯：发射五向子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":3, "sprite":spr_ghost_god_3, "cost":225, "cooldown":50*60, "description":"至尊冥神：发射五向子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
	]);
    register_card("hera",obj_hera,[
	    {"shape":0, "sprite":spr_hera_icon_1, "cost":125, "cooldown":30*60, "description":"赫拉神使：保护被罩住的卡片","plant_type":"shield_outer","feature_type":"normal","target_card":"none","place_preview":spr_hera_outer_1,"is_gold":1},
	    {"shape":1, "sprite":spr_hera_icon_2, "cost":125, "cooldown":30*60, "description":"赫拉圣神：保护被罩住的卡片并反伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none","place_preview":spr_hera_1_outer_1,"is_gold":1},
		{"shape":2, "sprite":spr_hera_icon_3, "cost":125, "cooldown":30*60, "description":"天后·赫拉：保护被罩住的卡片并反伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none","place_preview":spr_hera_2_outer_1,"is_gold":1},
        {"shape":3, "sprite":spr_hera_icon_4, "cost":125, "cooldown":30*60, "description":"至尊天后：保护被罩住的卡片并反伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none","place_preview":spr_hera_3_outer_1,"is_gold":1}
	])
	register_card("gaia", obj_gaia, [
	    {"shape":0, "sprite":spr_gaia, "cost":350, "cooldown":35*60, "description":"盖亚神使：双连发射3*3范围爆炸的毁灭巨石","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":1, "sprite":spr_gaia_1, "cost":350, "cooldown":35*60, "description":"盖亚圣神：双连发射3*3范围爆炸的毁灭巨石","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":2, "sprite":spr_gaia_2, "cost":350, "cooldown":35*60, "description":"大地女神·盖亚：三连发射3*3范围爆炸的毁灭巨石","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":3, "sprite":spr_gaia_3, "cost":350, "cooldown":35*60, "description":"至尊大地女神：三连发射5*5范围爆炸的毁灭巨石","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
	]);
	register_card("aurora", obj_aurora, [
	    {"shape":0, "sprite":spr_aurora_icon, "cost":190, "cooldown":1800, "description":"欧若拉神使：为本行投掷类卡片增伤","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_aurora},
		{"shape":1, "sprite":spr_aurora_icon_1, "cost":190, "cooldown":1800, "description":"欧若拉圣神：为本行投掷类卡片增伤，死亡后爆炸","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_aurora_1},
		{"shape":2, "sprite":spr_aurora_icon_2, "cost":190, "cooldown":1800, "description":"曙光女神·欧若拉：为本行投掷类卡片增伤，死亡后爆炸","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_aurora_2},
		{"shape":3, "sprite":spr_aurora_icon_3, "cost":190, "cooldown":1800, "description":"至尊曙光女神：为本行及相邻行投掷类卡片增伤，死亡后爆炸","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_aurora_3}
	]);
	register_card("zhurong", obj_zhurong, [
	    {"shape":0, "sprite":spr_zhurong, "cost":245, "cooldown":7*60, "description":"祝融神使：点燃前方3x3区域，持续灼烧敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_zhurong_1, "cost":245, "cooldown":7*60, "description":"祝融圣神：点燃前方3x3区域，持续灼烧敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":2, "sprite":spr_zhurong_2, "cost":245, "cooldown":7*60, "description":"赤帝·祝融：点燃前方5x5区域，持续灼烧敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":3, "sprite":spr_zhurong_3, "cost":245, "cooldown":7*60, "description":"至尊赤帝：点燃前方7x5区域，持续灼烧敌人","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1}
	]);
	 register_card("athena",obj_athena,[
	    {"shape":0, "sprite":spr_athena, "cost":375, "cooldown":20*60, "description":"雅典娜守护：全屏轰击，造成3×3范围伤害","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_athena_1, "cost":375, "cooldown":20*60, "description":"雅典娜圣衣：全屏轰击，造成3×3范围伤害","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_athena_2, "cost":375, "cooldown":20*60, "description":"雅典娜光辉：全屏轰击，造成3×3范围伤害","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("shuangzi",obj_shuangzi,[
	    {"shape":0, "sprite":spr_shuangzi, "cost":200, "cooldown":50*60, "description":"双子座精灵：一次性产出4朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_shuangzi_1, "cost":200, "cooldown":30*60, "description":"双子座战将：一次性产出4朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_shuangzi_2, "cost":200, "cooldown":20*60, "description":"双子座星宿：一次性产出6朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("sheshou",obj_sheshou,[
	    {"shape":0, "sprite":spr_sheshou, "cost":300, "cooldown":7*60, "description":"射手座精灵：向前方三行射出4发强力子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_sheshou_1, "cost":300, "cooldown":7*60, "description":"射手座战将：向前方三行射出4发强力子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_sheshou_2, "cost":300, "cooldown":7*60, "description":"射手座星宿：向前方三行射出6发强力子弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("tiancheng",obj_tiancheng,[
	    {"shape":0, "sprite":spr_tiancheng, "cost":150, "cooldown":7*60, "description":"天秤座精灵：向前后各射出3发比较强力的子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_tiancheng_1, "cost":150, "cooldown":7*60, "description":"天秤座战将：向前后各射出3发比较强力的子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_tiancheng_2, "cost":150, "cooldown":7*60, "description":"天秤座星宿：向前后各射出4发比较强力的子弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("shuangyu",obj_shuangyu,[
	    {"shape":0, "sprite":spr_shuangyu, "cost":200, "cooldown":7*60, "description":"双鱼座精灵：投掷两颗带有减速的冰鱼","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_shuangyu_1, "cost":200, "cooldown":7*60, "description":"双鱼座战将：投掷两颗带有减速的冰鱼","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_shuangyu_2, "cost":200, "cooldown":7*60, "description":"双鱼座星宿：投掷两颗带有减速的强力冰鱼","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("juxie",obj_juxie,[
	    {"shape":0, "sprite":spr_juxie, "cost":225, "cooldown":30*60, "description":"巨蟹座精灵：发射4发强力钳子，全屏跟踪","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_juxie_1, "cost":225, "cooldown":20*60, "description":"巨蟹座战将：发射4发强力钳子，全屏跟踪","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_juxie_2, "cost":225, "cooldown":15*60, "description":"巨蟹座星宿：发射6发强力钳子，全屏跟踪","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("shizi",obj_shizi,[
	    {"shape":0, "sprite":spr_shizi, "cost":275, "cooldown":30*60, "description":"狮子座精灵：5×5范围穿透打击","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_shizi_1, "cost":275, "cooldown":20*60, "description":"狮子座战将：5×5范围穿透打击","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_shizi_2, "cost":275, "cooldown":15*60, "description":"狮子座星宿：5×5范围两次穿透打击","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("jinniu",obj_jinniu,[
	    {"shape":0, "sprite":spr_jinniu, "cost":225, "cooldown":7*60, "description":"金牛座精灵：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_jinniu_1, "cost":175, "cooldown":7*60, "description":"金牛座战将：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_jinniu_2, "cost":175, "cooldown":7*60, "description":"金牛座星宿：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("chunv",obj_chunv,[
	    {"shape":0, "sprite":spr_chunv_0_3, "cost":175, "cooldown":30*60, "description":"处女座精灵：保护卡牌，并反弹伤害","plant_type":"shield_outer","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_chunv_1_4, "cost":200, "cooldown":30*60, "description":"处女座战将：保护卡牌，并反弹伤害","plant_type":"shield_outer","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_chunv_2_4, "cost":225, "cooldown":30*60, "description":"处女座星宿：保护卡牌，并反弹伤害","plant_type":"shield_outer","feature_type":"normal","target_card":"none"}
	])
	register_card("shuiping",obj_shuiping,[
	    {"shape":0, "sprite":spr_shuiping, "cost":150, "cooldown":30*60, "description":"水瓶座精灵：5×5十字范围范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_shuiping_1, "cost":200, "cooldown":30*60, "description":"水瓶座战将：5×5十字范围范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_shuiping_2, "cost":250, "cooldown":30*60, "description":"水瓶座星宿：一行和一列范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("tianxie",obj_tianxie,[
	    {"shape":0, "sprite":spr_tianxie, "cost":200, "cooldown":7*60, "description":"天蝎座精灵：发射一根穿透毒刺","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_tianxie_1, "cost":200, "cooldown":7*60, "description":"天蝎座战将：发射一根穿透毒刺","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_tianxie_2, "cost":200, "cooldown":7*60, "description":"天蝎座星宿：发射一根穿透毒刺","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("baiyang",obj_baiyang,[
	    {"shape":0, "sprite":spr_baiyang_icon, "cost":300, "cooldown":50*60, "description":"白羊座精灵：冲撞清除一行鼠军","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_baiyang},
	    {"shape":1, "sprite":spr_baiyang_icon, "cost":200, "cooldown":50*60, "description":"白羊座战将：冲撞清除一行鼠军，且无需格子放置","plant_type":"coffee","feature_type":"normal","target_card":"none","place_preview":spr_baiyang},
		{"shape":2, "sprite":spr_baiyang_icon, "cost":200, "cooldown":50*60, "description":"白羊座星宿：冲撞清除三行鼠军，且无需格子放置","plant_type":"coffee","feature_type":"normal","target_card":"none","place_preview":spr_baiyang}
	])
	register_card("mojie",obj_mojie,[
	    {"shape":0, "sprite":spr_mojie, "cost":300, "cooldown":50*60, "description":"摩羯座精灵：3×3范围内持续伤害并减速","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_mojie_1, "cost":300, "cooldown":50*60, "description":"摩羯座战将：3×3范围内持续伤害并减速","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_mojie_2, "cost":300, "cooldown":50*60, "description":"摩羯座星宿：5×5范围内持续伤害并减速","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
}