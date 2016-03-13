///generate_islands(ds_grid)
grid_id = argument0;
density = 500;
randomize();

//First pass, set initial islands
for(i = 0; i < ds_grid_width(grid_id); i++) {
    for(j = 0; j < ds_grid_height(grid_id); j++) {
        if (irandom(density) == 0 && ds_grid_get(grid_id, i, j) < 1){
            ds_grid_set_disk(grid_id, i, j, 7, 1);
            ds_grid_set_disk(grid_id, i, j, 5, 2); 
            ds_grid_set_disk(grid_id, i, j, 3, 3);
            ds_grid_set_disk(grid_id, i, j, 1, 4);  
            show_debug_message("Set an island");
            }
    }
}

//Second pass, join islands
for(i = 0; i < ds_grid_width(grid_id); i++) {
    for(j = 0; j < ds_grid_height(grid_id); j++) {
        if (ds_grid_get_mean(grid_id, i-2, j-2, i+2, j+2) > 2 && ds_grid_get(grid_id, i, j) < 2){
            ds_grid_set(grid_id, i, j, 3);
            }
        else if (ds_grid_get_disk_mean(grid_id, i, j, 8) > 3){
            ds_grid_set_disk(grid_id, i, j, 3, 0);
            }
    }
}

//Third pass, smooth islands
for(i = 0; i < ds_grid_width(grid_id); i++) {
    for(j = 0; j < ds_grid_height(grid_id); j++) {
        if (ds_grid_get(grid_id, i, j) <= 2 && ds_grid_get(grid_id, i, j) > 0 && irandom(2) == 0){
            ds_grid_set(grid_id, i, j, 0);}
    }
}
