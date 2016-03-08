///move_player(str sail_direction, int sail_speed)
sail_direction = argument0;
sail_speed = argument1;

switch(sail_direction){
    case 'up':
        y -= (32 * sail_speed);
        image_index = 2;
        break;
    case 'left':
        x -= (32 * sail_speed) ;
        image_index = 1;
        break;
    case 'down':
        y += (32 * sail_speed);
        image_index = 3;
        break;
    case 'right':
        x += (32 * sail_speed);
        image_index = 0;
        break;
}
playerTurn = false;
destroy_cursor();
