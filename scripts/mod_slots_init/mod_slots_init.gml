function mod_slots_init(){
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
	register_card("rig", obj_rig, [
	    {"shape":0, "sprite":spr_rig, "cost":185, "cooldown":7*60, "description":"里格神使：前方5方向发射穿透子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
	    {"shape":1, "sprite":spr_rig_1, "cost":260, "cooldown":7*60, "description":"里格圣神：前方5方向发射穿透子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":2, "sprite":spr_rig_2, "cost":260, "cooldown":7*60, "description":"守护神·里格：前方5方向发射穿透子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1},
		{"shape":3, "sprite":spr_rig_icon_3, "cost":260, "cooldown":7*60, "description":"至尊守护神：前方5方向发射穿透子弹","plant_type":"normal","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_rig_3}
	]);
	register_card("brahma", obj_brahma, [
	    {"shape":0, "sprite":spr_brahma_icon, "cost":325, "cooldown":55*60, "description":"梵天神使：变身出多个上一次种下的卡片","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_brahma},
		{"shape":1, "sprite":spr_brahma_icon_1, "cost":325, "cooldown":55*60, "description":"梵天圣神：变身出多个上一次种下的卡片","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_brahma_1},
		{"shape":2, "sprite":spr_brahma_icon_2, "cost":325, "cooldown":55*60, "description":"创造神·梵天：变身出多个上一次种下的卡片","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_brahma_2}
	]);
	register_card("clotho", obj_clotho, [
	    {"shape":0, "sprite":spr_clotho_icon, "cost":400, "cooldown":3600, "description":"克洛托神使：随机改变范围内卡片星级，一段时间后恢复","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_clotho},
		{"shape":1, "sprite":spr_clotho_icon_1, "cost":400, "cooldown":3600, "description":"克洛托圣神：随机改变范围内卡片星级，一段时间后恢复","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_clotho_1},
		{"shape":2, "sprite":spr_clotho_icon_2, "cost":400, "cooldown":3600, "description":"命运女神·克洛托：随机改变范围内卡片星级，一段时间后恢复","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_clotho_2},
		{"shape":3, "sprite":spr_clotho_icon_3, "cost":400, "cooldown":3600, "description":"至尊命运女神：随机改变范围内卡片星级，一段时间后恢复","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_clotho_3}
	]);
	register_card("loki", obj_loki, [
	    {"shape":0, "sprite":spr_loki, "cost":175, "cooldown":420, "description":"洛基神使：子弹穿过后威力加强","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_loki},
		{"shape":1, "sprite":spr_loki_1, "cost":175, "cooldown":420, "description":"洛基圣神：子弹穿过后威力加强","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_loki_1},
		{"shape":2, "sprite":spr_loki_2, "cost":175, "cooldown":420, "description":"火神·洛基：子弹穿过后威力加强，获得单格溅射","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_loki_2},
		{"shape":3, "sprite":spr_loki_3, "cost":175, "cooldown":420, "description":"至尊火神：子弹穿过后威力加强，获得3x3溅射","plant_type":"coffee","feature_type":"normal","target_card":"none","is_gold":1,"place_preview":spr_loki_3}
	]);
	register_card("firework_dragon_real", obj_firework_dragon_real, [
	    {"shape":0, "sprite":spr_firework_dragon, "cost":150, "cooldown":7*60, "description":"花火龙：释放产生大量火苗的烟花","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_firework_dragon_1, "cost":150, "cooldown":7*60, "description":"灼灼花火龙：释放产生大量火苗的烟花","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_firework_dragon_icon_2, "cost":150, "cooldown":7*60, "description":"炽焰花火龙：释放产生大量火苗的烟花","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_firework_dragon_2}
	]);
	register_card("warm_birds", obj_warm_birds, [
	    {"shape":0, "sprite":spr_warm_birds, "cost":125, "cooldown":30*60, "description":"暖暖鸡：一次生产3朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_warm_birds_1, "cost":125, "cooldown":30*60, "description":"焰羽暖暖鸡：一次生产4朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_warm_birds_2, "cost":125, "cooldown":15*60, "description":"日耀暖暖鸡：一次生产5朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("sea_star", obj_sea_star, [
	    {"shape":0, "sprite":spr_sea_star, "cost":350, "cooldown":420, "description":"炭烧海星：向五个方向发射炭烧海星子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":1, "sprite":spr_sea_star_1, "cost":175, "cooldown":420, "description":"芝士焗海星：向五个方向发射炭烧海星子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_sea_star_2, "cost":175, "cooldown":420, "description":"芥末海星刺身：向五个方向发射两枚炭烧海星子弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("tanghulu", obj_tanghulu, [
	    {"shape":0, "sprite":spr_tanghulu_icon, "cost":175, "cooldown":7*60, "description":"糖葫芦炮弹：对空中敌人发射追踪炮弹","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_tanghulu},
	    {"shape":1, "sprite":spr_tanghulu_icon_1, "cost":200, "cooldown":7*60, "description":"水果糖葫芦炮弹：对空中敌人发射追踪炮弹","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_tanghulu_1},
		{"shape":2, "sprite":spr_tanghulu_icon_2, "cost":250, "cooldown":7*60, "description":"七彩糖葫芦炮弹：对空中敌人发射追踪炮弹","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_tanghulu_2}
	]);
	register_card("cold_drew", obj_cold_drew, [
	    {"shape":0, "sprite":spr_cold_drew_machine_icon, "cost":295, "cooldown":15*60, "description":"冰块冷萃机：对全屏敌人发射至多4颗追踪冰块","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_cold_drew_machine},
	    {"shape":1, "sprite":spr_cold_drew_machine_icon_1, "cost":295, "cooldown":15*60, "description":"低温冷萃机：对全屏敌人发射至多5颗追踪冰块","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_cold_drew_machine_1},
		{"shape":2, "sprite":spr_cold_drew_machine_icon_2, "cost":295, "cooldown":15*60, "description":"迅捷冷萃机：对全屏敌人发射6颗追踪冰块，可集火","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_cold_drew_machine_2}
	]);
	register_card("berry_dessert", obj_berry_dessert, [
	    {"shape":0, "sprite":spr_berry_dessert_icon, "cost":260, "cooldown":40*60, "description":"莓果点心：为3x3范围内追踪类卡片提供增伤","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_berry_dessert_icon_1, "cost":260, "cooldown":40*60, "description":"薄荷莓果点心：为5x5范围内追踪类卡片提供增伤","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_berry_dessert_icon_2, "cost":260, "cooldown":40*60, "description":"流心莓果点心：为5x5范围内追踪类卡片提供增伤","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("grilled_lizard_pult", obj_grilled_lizard_pult, [
	    {"shape":0, "sprite":spr_grilled_lizard_pult, "cost":275, "cooldown":7*60, "description":"烤蜥蜴投手：向前投掷配料爆弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_grilled_lizard_pult_1, "cost":275, "cooldown":7*60, "description":"坚果蜥蜴投手：向前投掷配料爆弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_grilled_lizard_pult_2, "cost":275, "cooldown":7*60, "description":"花椒蜥蜴投手：向前投掷2发配料爆弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("blueberry_tower", obj_blueberry_tower, [
	    {"shape":0, "sprite":spr_blueberry_tower, "cost":160, "cooldown":35*60, "description":"蓝莓信号塔塔：为本行投掷卡片增加攻击力","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("donut", obj_donut, [
	    {"shape":0, "sprite":spr_donut_3, "cost":200, "cooldown":7*60, "description":"梦幻多拿滋：连续攻击本行鼠军，优先空军","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_donut},
	    {"shape":1, "sprite":spr_donut_4, "cost":200, "cooldown":7*60, "description":"仙女多拿滋：连续攻击本行鼠军，优先空军","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_donut_1},
		{"shape":2, "sprite":spr_donut_5, "cost":200, "cooldown":7*60, "description":"女王多拿滋：连续攻击本行鼠军，优先空军","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_donut_2}
	]);
	register_card("spoon_rabbit", obj_spoon_rabbit, [
	    {"shape":0, "sprite":spr_spoon_rabbit_icon, "cost":300, "cooldown":7*60, "description":"勺勺兔：向前方3行投射子弹","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_spoon_rabbit},
	    {"shape":1, "sprite":spr_spoon_rabbit_icon_1, "cost":300, "cooldown":7*60, "description":"增强勺勺兔：向前方3行投射子弹","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_spoon_rabbit_1},
		{"shape":2, "sprite":spr_spoon_rabbit_icon_2, "cost":300, "cooldown":7*60, "description":"盖世勺勺兔：向前方3行投射子弹","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_spoon_rabbit_2}
	]);
	register_card("virgo",obj_virgo,[
	    {"shape":0, "sprite":spr_virgo_icon, "cost":175, "cooldown":30*60, "description":"处女座精灵：保护被罩住的卡片并反伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_virgo_icon_1, "cost":200, "cooldown":30*60, "description":"处女座战将：保护被罩住的卡片并反伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_virgo_icon_2, "cost":250, "cooldown":30*60, "description":"处女座星宿：保护被罩住的卡片并反伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none"}
	]);
	register_card("hspeed_juicer",obj_hspeed_juicer,[
	    {"shape":0, "sprite":spr_hspeed_juicer, "cost":260, "cooldown":45*60, "description":"加速榨汁机：为3x3范围内喷壶类卡片提供增伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_hspeed_juicer_1, "cost":260, "cooldown":45*60, "description":"苹果榨汁机：为3x3范围内喷壶类卡片提供增伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_hspeed_juicer_2, "cost":260, "cooldown":45*60, "description":"大菠萝榨汁机：为5x5范围内喷壶类卡片提供增伤","plant_type":"shield_outer","feature_type":"normal","target_card":"none"}
	]);
}