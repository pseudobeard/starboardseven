///execute_merchant_ship_ai(int instance_id);
ship = argument0;
if(instance_exists(ship) && ship.shipCrew > 0) {
    with(ship) {
        obj_AI_Controller.alarm[0] = 10;
        var moveDir = choose('up', 'down', 'left', 'right');
        move_royal_ship( moveDir);
    }   
} else {
    obj_AI_Controller.alarm[0] = 10;
}
