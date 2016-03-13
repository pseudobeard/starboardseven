///move_player(str sail_direction)
sail_direction = argument0;

var ss = 32; 

switch( sail_direction){
    case 'up':
        if(place_meeting( x, y-32, obj_NPC_Ship_Parent) || place_meeting( x, y-32, obj_Desert_Island) ){
            //cannot move
            ss = 0;
        } else {
            newWave = instance_create( x+16, y+16, obj_wave);
            newWave.image_angle = -90;
        }
        y -= ss;
        image_index = 2;
        break;
    case 'left':
        if(place_meeting(x - 32, y, obj_NPC_Ship_Parent) || place_meeting( x-32, y, obj_Desert_Island)) {
            //cannot make the move, try a different one.
            ss = 0;
        } else {
            newWave = instance_create( x+16, y+16, obj_wave);
        }
        x -= ss;
        image_index = 1;
        break;
    case 'down':
        if(place_meeting(x, y + 32, obj_NPC_Ship_Parent) || place_meeting( x, y + 32, obj_Desert_Island)) {
            //cannot make the move, try a different one.
            ss = 0;
        } else {
            newWave = instance_create( x+16, y+16, obj_wave);
            newWave.image_angle = 90;
        }
        y += ss;
        image_index = 3;
        break;
    case 'right':
        if(place_meeting(x + 32, y, obj_NPC_Ship_Parent) || place_meeting( x+32, y, obj_Desert_Island)) {
            //cannot make the move, try a different one.
            ss = 0;
        } else {
            newWave = instance_create( x+16, y+16, obj_wave);
            newWave.image_xscale = -1;
        }
        x += ss;
        image_index = 0;
        break;
}
destroy_cursor();
//playerTurn=false;
