if (!instance_exists(obj_mod_battle_manager)) {
    var battle = instance_find(obj_battle, 0);
    
    if (battle != noone) {
        global.mod_battle_manager = instance_create_layer(
            0, 0, "Instances", obj_mod_battle_manager
        );
        
        // 可选：把 battle 引用传进去
        global.mod_battle_manager.battle = battle;
    }
}