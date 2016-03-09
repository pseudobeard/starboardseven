///execute_ship_ai(int instance_id);
ship = argument0;
if(instance_exists(ship)) {
    with(ship) {
        //Move Ship
        if (instance_exists(obj_Player_Ship)){
            path = path_add();
            if (mp_grid_path(grid, path, x, y, obj_Player_Ship.x, obj_Player_Ship.y, 0)) {
                path_start(path, 0, 0, 0);
                path_position += shipSpeed / path_get_length(path_index) * 32;
                xxp = path_get_x(path_index, path_position);
                yyp = path_get_y(path_index, path_position);
                //If collision is possible, reduce tranvel distance
                if(place_meeting(xxp, yyp, obj_Player_Ship)) {
                    path_position -= 1/ path_get_length(path_index) * 32;
                }
                
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
