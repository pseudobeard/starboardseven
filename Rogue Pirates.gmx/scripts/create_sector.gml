///create_sector(top left x, top left y);
xx = argument0 + 32;
yy = argument1 + 32;
var rows = 16;
var columns = 22;

for(i = 0; i < columns; i++) {
show_debug_message(i);
    for(j = 0; j < rows; j++) {
        tile_add(bg_Terrain_Tiles, 32, 64, 32, 32, (i * 32) + xx, (j * 32) + yy, 99999);
    }
}
