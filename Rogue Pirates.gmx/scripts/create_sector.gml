///create_sector(top left x, top left y);
xx = argument0 + 32;
yy = argument1 + 32;

for(i = 0; i < ds_grid_width(tile_grid); i++) {
    for(j = 0; j < ds_grid_height(tile_grid); j++) {
        tile_id = ds_grid_get(tile_grid, i, j);
        switch (tile_id){
            case 0: //water
                //nothing
                break;
            case 1: //desert island
                instance_create((i * 32) + xx, (j * 32) + yy, obj_Desert_Island);
                //tile_add(bg_Terrain_Tiles, 96, 32, 32, 32, (i * 32) + xx, (j * 32) + yy, 99999);
                break;
            }
    }
}
