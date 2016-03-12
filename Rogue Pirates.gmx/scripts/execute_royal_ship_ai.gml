///execute_royal_ship_ai(int instance_id);
ship = argument0;
if(instance_exists(ship)) {
    with(ship) {
        //Move Ship or shoot
        var roundRange = 128;
        var chainRange = 96;
        if((distance_to_object(obj_Player_Ship) <= chainRange) && (playerRiggingHealth > 0)) {
            ship.munitionsLoaded = 'chain shot';
            instance_create(x + 16, y + 16, obj_Enemy_Chain_Shot);
        } else if(distance_to_object(obj_Player_Ship) <= roundRange) {
            ship.munitionsLoaded = 'round shot';
            instance_create(x + 16, y + 16, obj_Enemy_Round_Shot);
        } else {
            obj_AI_Controller.alarm[0] = 15;
            mp_grid_clear_rectangle(grid, x, y, x + 32, y + 32);
            if (instance_exists(obj_Player_Ship)){
                var path = path_add();
                if (mp_grid_path(grid, path, x, y, obj_Player_Ship.x, obj_Player_Ship.y, 0)) {
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
        }
    }
}
