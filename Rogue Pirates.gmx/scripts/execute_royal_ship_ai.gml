///execute_royal_ship_ai(int instance_id);
ship = argument0;
if(instance_exists(ship) && ship.shipCrew > 0) {
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
            obj_AI_Controller.alarm[0] = 10;
            mp_grid_clear_rectangle(grid, x, y, x + 32, y + 32);
            if (instance_exists(obj_Player_Ship)){
                    var move1;
                    var move2;
                    for( var i = 0; i < 2; i++){
                        if( abs( obj_Player_Ship.x - x ) > abs(obj_Player_Ship.y - y) )
                        {
                            if( obj_Player_Ship.x > x)
                            {
                                move1 = 'right';
                            } else {
                                move1 = 'left';
                            }
                            if( obj_Player_Ship.y > y)
                            {
                                move2 = 'down';
                            } else {
                                move2 = 'up';
                            }
                        } else {
                            if( obj_Player_Ship.y > y)
                            {
                                move1 = 'down';
                            } else {
                                move1 = 'up';
                            }
                            if( obj_Player_Ship.x > x)
                            {
                                move2 = 'right';
                            } else {
                                move2 = 'left';
                            }
                        }
                        move_NPC(move1, move2);
                    }
            }
        }
    }
} else {
    obj_AI_Controller.alarm[0] = 10;
}
