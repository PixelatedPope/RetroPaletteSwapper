///button_apply()
//Set the New to the old.
///reset_all_colors();
project_set_dirty(true);
var _grid = ds_list_find_value(Palettes, Current_Pal);
//var _y = selected_color_get_row();
for(var _y=0;_y<ds_grid_height(_grid);_y++)
{
    _grid[# Pal_Cols.Color, _y]=_grid[# Pal_Cols.New_Color,_y];
    _grid[# Pal_Cols.Hue, _y]=_grid[# Pal_Cols.New_Hue,_y];
    _grid[# Pal_Cols.Saturation, _y]=_grid[# Pal_Cols.New_Saturation,_y];
    _grid[# Pal_Cols.Value, _y]=_grid[# Pal_Cols.New_Value,_y];   
}
