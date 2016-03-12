///fire_cannons(String munition type);
ammo = argument0;

disableActions = true;
if(ammo == 'round shot'){
    instance_create(x + 16, y + 16, obj_Round_Shot);
} else if(ammo == 'chain shot'){
    instance_create(x + 16, y + 16, obj_Chain_Shot);
} else if(ammo == 'coin shot'){
    var xx = targetID.x + 16;
    var yy = targetID.y + 16;
    var dir = point_direction(x + 16, y + 16, xx, yy);
    part_type_direction(coinParts, dir - 10, dir + 10, 0, 0);
    part_emitter_region(coinShotSystem, coinShotEmitter, x, x, y, y, ps_shape_ellipse, ps_distr_linear);
    part_emitter_burst(coinShotSystem, coinShotEmitter, coinParts, 50);
    targetID.crewSize -= floor(random(30));
    targetID.gold += floor(random(75));
    playerGold -= floor(random(150));
    alarm[0] = 15;
}
