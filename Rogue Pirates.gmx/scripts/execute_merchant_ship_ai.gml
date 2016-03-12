///execute_merchant_ship_ai(int instance_id);
ship = argument0;
if(instance_exists(ship) && ship.shipCrew > 0) {
    with(ship) {
        obj_AI_Controller.alarm[0] = 15;
        mp_grid_clear_rectangle(grid, x, y, x + 32, y + 32);
        var xx = 0;
        var yy = 0;
        var path_planning_steps_ahead = 5;
        var path = path_add();
        var moveDir = choose('up', 'down', 'left', 'right');
        switch (moveDir) {
            case 'up':
                yy = -32 * path_planning_steps_ahead;
            break;
            case 'down':
                yy = 32 * path_planning_steps_ahead;
            break;
            case 'left':
                xx = -32 * path_planning_steps_ahead;
            break;
            case 'right':
                xx = 32 * path_planning_steps_ahead;
            break;
        }
        if (mp_grid_path(grid, path, x, y, x + xx, y + yy, 0)) {
            path_start(path, 0, 0, 0);
            path_position += shipSpeed / path_get_length(path_index) * 32;
                xxp = path_get_x(path_index, path_position);
                yyp = path_get_y(path_index, path_position);
                //If collision is possible, reduce tranvel distance
                if(place_meeting(xxp, yyp, obj_All_Ships)) {
                    path_position -= 1/ path_get_length(path_index) * 32;
                }
                xxp = path_get_x(path_index, path_position);
                yyp = path_get_y(path_index, path_position);
                mp_grid_add_rectangle(grid, xxp, yyp, xxp + 32, yyp + 32);
                
                //Change Sprite
                if(xxp > x) {
                    image_index = 0;
                } else if(xxp < x) {
                    image_index = 1;
                } else if(yyp > y) {
                    image_index = 3;
                } else if(yyp < y) {
                    image_index = 2;
                }
        }
    }   
} else {
    obj_AI_Controller.alarm[0] = 15;
}
