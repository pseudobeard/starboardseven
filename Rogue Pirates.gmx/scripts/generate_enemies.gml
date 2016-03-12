///generate_enemies(ds_grid)
grid_id = argument0;
randomize();
for(i = 0; i < ds_grid_width(grid_id); i++) {
    for(j = 0; j < ds_grid_height(grid_id); j++) {
        if (irandom(120) == 0 ){
            ds_grid_set(grid_id, i, j, 1); 
            show_debug_message("Set an enemy");
            }
        else {
            ds_grid_set(grid_id, i, j, 0); }
    }
}

