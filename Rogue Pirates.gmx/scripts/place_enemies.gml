///place_enemies(top left x, top left y);
xx = argument0 + 32;
yy = argument1 + 32;

for(i = 0; i < ds_grid_width(enemy_grid); i++) {
    for(j = 0; j < ds_grid_height(enemy_grid); j++) {
        tile_id = ds_grid_get(enemy_grid, i, j);
        switch (tile_id){
            case 0: //nothing
                break;
            case 1: //royal_ship
                var locMod = 0;
                while(!place_free(view_xview[0] + i*32 + locMod, view_yview[0] + j*32 + locMod)){
                    locMod += 32;
                }
                instance_create(view_xview[0] + i*32 + locMod, view_yview[0] + j*32 + locMod, obj_Royal_Ship);
                break;
            }
    }
}
