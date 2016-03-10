///destroy_ship(int ship ID);
ship = argument0;
with(ship) {
    with(ship) {
        instance_destroy();
    }
    if(instance_exists(obj_Target)){
        with(obj_Target){instance_destroy();}
    }
    if(instance_exists(obj_Cursor)){
        with(obj_Cursor){instance_destroy();}
    }
}
