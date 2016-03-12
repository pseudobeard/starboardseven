///move_royal_ship(str sail_direction, str sail_direction2)
sail_direction = argument0;
sail_direction2 = argument1;
var ss = 32; 

switch( sail_direction){
    case 'up':
        if(place_meeting( x, y-32, obj_NPC_Ship_Parent)){
            //cannot move
            move_royal_ship( sail_direction2 );
            ss = 0;
        } else {
            newWave = instance_create( x+16, y+16, obj_wave);
            newWave.image_angle = -90;
            image_index = 3;
        }
        y -= ss;
        break;
    case 'left':
        if(place_meeting(x - 32, y, obj_NPC_Ship_Parent)) {
            //cannot make the move, try a different one.
            move_royal_ship( sail_direction2 );
            ss = 0;
        } else {
            newWave = instance_create( x+16, y+16, obj_wave);
            image_index = 1;
        }
        x -= ss;
        break;
    case 'down':
        if(place_meeting(x, y + 32, obj_NPC_Ship_Parent)) {
            //cannot make the move, try a different one.
            move_royal_ship( sail_direction2 );
            ss = 0;
        } else {
            newWave = instance_create( x+16, y+16, obj_wave);
            newWave.image_angle = 90;
            image_index = 2;
        }
        y += ss;
        break;
    case 'right':
        if(place_meeting(x + 32, y, obj_NPC_Ship_Parent)) {
            //cannot make the move, try a different one.
            move_royal_ship( sail_direction2 );
            ss = 0;
        } else {
            newWave = instance_create( x+16, y+16, obj_wave);
            newWave.image_xscale = -1;
            image_index = 0;
        }
        x += ss;
        break;
}
