function gods_shop_init(){
	register_gods_goods("gaia",{"type":"card","cost":"25","unlock_item_id":"gaia","description":"盖亚神使：双连发射3*3范围爆炸的毁灭巨石","display_name":"盖亚神使"})
	register_gods_goods("aurora",{"type":"card","cost":"20","unlock_item_id":"aurora","description":"欧若拉神使：为本行投掷类卡片增伤","display_name":"欧若拉神使"})
	register_gods_goods("zhurong",{"type":"card","cost":"20","unlock_item_id":"zhurong","description":"祝融神使：点燃前方3x3区域，持续灼烧敌人","display_name":"祝融神使"})
	register_gods_goods("rig",{"type":"card","cost":"20","unlock_item_id":"rig","description":"里格神使：前方5方向发射穿透子弹","display_name":"里格神使"})
	register_gods_goods("brahma",{"type":"card","cost":"20","unlock_item_id":"brahma","description":"梵天神使：变身出多个上一次种下的卡片","display_name":"梵天神使"})
	register_gods_goods("clotho",{"type":"card","cost":"25","unlock_item_id":"clotho","description":"克洛托神使：随机改变范围内卡片星级，一段时间后恢复","display_name":"克洛托神使"})
	register_gods_goods("firework_dragon_real",{"type":"card","cost":"10","unlock_item_id":"firework_dragon_real","description":"花火龙：释放产生大量火苗的烟花","display_name":"花火龙神使"})
	
	register_gods_goods("gaia_1",{"type":"shape","cost":"50","unlock_item_id":"gaia","target_shape":1,"description":"盖亚圣神：攻击力提高，眩晕并初始瞬发","display_name":"三转凭证（大地女神）","spr":spr_voucher_gaia})
	register_gods_goods("aurora_1",{"type":"shape","cost":"40","unlock_item_id":"aurora","target_shape":1,"description":"欧若拉圣神：死亡后造成3x3爆炸","display_name":"三转凭证（曙光女神）","spr":spr_voucher_aurora})
	register_gods_goods("zhurong_1",{"type":"shape","cost":"40","unlock_item_id":"zhurong","target_shape":1,"description":"祝融圣神：[攻击力]额外提升30%，射程增加一格","display_name":"三转凭证（赤帝）","spr":spr_voucher_zhurong})
	register_gods_goods("rig_1",{"type":"shape","cost":"40","unlock_item_id":"rig","target_shape":1,"description":"里格圣神：[攻击力]额外提升10%，能量守恒","display_name":"三转凭证（守护神）","spr":spr_voucher_rig})
	register_gods_goods("brahma_1",{"type":"shape","cost":"40","unlock_item_id":"brahma","target_shape":1,"description":"梵天圣神：放置造成5x5灰烬爆炸","display_name":"三转凭证（创造神）","spr":spr_voucher_brahma})
	register_gods_goods("clotho_1",{"type":"shape","cost":"50","unlock_item_id":"clotho","target_shape":1,"description":"克洛托圣神：优化升星概率，必定升星","display_name":"三转凭证（命运女神）","spr":spr_voucher_clotho})
	register_gods_goods("firework_dragon_real_1",{"type":"shape","cost":"20","unlock_item_id":"firework_dragon_real","target_shape":1,"description":"灼灼花火龙：放下后立刻返还种植消耗的火苗","display_name":"三转凭证（青铜与火之王）","spr":spr_firework_dragon_1})
}