///Create a new palette.
var _pal_grid=ds_grid_create(Pal_Cols.Count,ds_grid_height(Pal_Grid));
ds_list_add(Palettes,_pal_grid);
Current_Pal=ds_list_size(Palettes)-1;
if(ds_list_size(Unique_Colors)>0)
    ds_grid_copy(_pal_grid,Pal_Grid);
project_set_dirty(true);
color_selection_changed();
enable_color_manipulation(true);
rebuild_palette_sprite();
