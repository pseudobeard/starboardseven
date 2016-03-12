///fire_cannons(String munition type);
ammo = argument0;

disableActions = true;
if(ammo == 'round shot'){
    instance_create(x + 16, y + 16, obj_Round_Shot);
}
if(ammo == 'chain shot'){
    instance_create(x + 16, y + 16, obj_Chain_Shot);
}
