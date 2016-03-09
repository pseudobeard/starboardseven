///move_player(str sail_direction, int sail_speed)
sail_direction = argument0;
sail_speed = argument1;

var ss = sail_speed * 32;

switch(sail_direction){
    case 'up':
        if(place_meeting(x, y - ss, obj_NPC_Ship_Parent)) {
            //cannot move to full distance. Move as much as
            //possible, then end turn.
            ss -= 32;
            playerTurn = false;
        } else if(place_meeting(x, y - 32, obj_NPC_Ship_Parent)) {
            //cannot make the move, try a different one.
            ss = 0;
        } else {
            //if all conditions for movement have been checked
            //and cleared, end the turn.
            playerTurn = false;
        }
        y -= ss;
        image_index = 2;
        break;
    case 'left':
        if(place_meeting(x - ss, y, obj_NPC_Ship_Parent)) {
            ss -= 32;
        } else if(place_meeting(x - 32, y, obj_NPC_Ship_Parent)) {
            //cannot make the move, try a different one
            ss = 0;
        } else {
            //if all conditions for movement have been checked
            //and cleared, end the turn.
            playerTurn = false;
        }
        x -= ss;
        image_index = 1;
        break;
    case 'down':
        if(place_meeting(x, y + ss, obj_NPC_Ship_Parent)) {
            ss -= 32;
        } else if(place_meeting(x, y + 32, obj_NPC_Ship_Parent)) {
            //cannot make the move, try a different one
            ss = 0;
        } else {
            //if all conditions for movement have been checked
            //and cleared, end the turn.
            playerTurn = false;
        }
        y += ss;
        image_index = 3;
        break;
    case 'right':
        if(place_meeting(x + ss, y, obj_NPC_Ship_Parent)) {
            ss -= 32;
        } else if(place_meeting(x + 32, y, obj_NPC_Ship_Parent)) {
            //cannot make the move, try a different one
            ss = 0;
        } else {
            //if all conditions for movement have been checked
            //and cleared, end the turn.
            playerTurn = false;
        }
        x += ss;
        image_index = 0;
        break;
}
destroy_cursor();
