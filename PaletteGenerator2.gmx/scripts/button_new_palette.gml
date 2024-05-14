///Create a new palette.
if(ds_grid_height(Palettes[|0]) == 0)
    exit;
var _grid = Palettes[|0];
if(no_selection)
{
    set_selected(0); 
}
var _pal_grid=ds_grid_create(Pal_Cols.Count,ds_grid_height(Pal_Grid));
ds_list_insert(Palettes,crush_pal, _pal_grid);
Current_Pal=crush_pal;
if(ds_list_size(Unique_Colors)>0)
    ds_grid_copy(_pal_grid,Pal_Grid);
project_set_dirty(true);
color_selection_changed();
enable_color_manipulation(true);
rebuild_palette_sprite();
