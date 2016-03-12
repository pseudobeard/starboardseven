///execute_merchant_ship_ai(int instance_id);
ship = argument0;
if(instance_exists(ship)) {
    with(ship) {
        obj_AI_Controller.alarm[0] = 15;
        mp_grid_clear_rectangle(grid, x, y, x + 32, y + 32);
        var xx = 0;
        var yy = 0;
        var path_planning_steps_ahead = 5;
        var path = path_add();
        var moveDir = choose('up', 'down', 'left', 'right');
        move_royal_ship( moveDir);
    }   
}
