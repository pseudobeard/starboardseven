///create_sector();
for(i = 0; i < ds_grid_width(tile_grid); i++) {
    for(j = 0; j < ds_grid_height(tile_grid); j++) {
        tile_id = ds_grid_get(tile_grid, i, j);
        switch (tile_id){
            case 0: //water
            case 1:
                break;
            default: //desert island
                instance_create((i * 32), (j * 32), obj_Desert_Island);
                break;
            }
    }
}
