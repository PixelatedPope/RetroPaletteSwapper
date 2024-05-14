///reset_all_colors();
for(var i=0; i<ds_list_size(Palettes);i++)
{
    var _grid=ds_list_find_value(Palettes, i);
    for(var _y=0; _y<ds_grid_height(_grid);_y++)
    {   //Loop through every color of every grid and replace "NEW" colors with base.
        _grid[# Pal_Cols.New_Color, _y]=_grid[# Pal_Cols.Color,_y];
        _grid[# Pal_Cols.New_Hue, _y]=_grid[# Pal_Cols.Hue,_y];
        _grid[# Pal_Cols.New_Saturation, _y]=_grid[# Pal_Cols.Saturation,_y];
        _grid[# Pal_Cols.New_Value, _y]=_grid[# Pal_Cols.Value,_y];   
    }
}
