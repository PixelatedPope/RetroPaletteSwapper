///button_crush_palette(factor)
//will create a new palette based on the original with similar colors 
//snapping towards each other to reduce number of similar colors.
//Higher factor means fewer colors.
var _factor =  get_integer("Select a factor (greater than 1)",2);//argument0;
///Get all the colors of the palette as RGB.
var _pal = Palettes[| 0];
var _original_count = ds_grid_height(_pal);
var _unique_colors=ds_list_create();
var _new_colors = ds_list_create();
for(_i=0; _i<_original_count; _i++)
{
    var _color = _pal[# Pal_Cols.Color,_i];
    var _r=floor(colour_get_red(_color)/_factor)*_factor;
    var _g=floor(colour_get_green(_color)/_factor)*_factor;
    var _b=floor(colour_get_blue(_color)/_factor)*_factor;
    _color = make_colour_rgb(_r,_g,_b);
    if(ds_list_find_index(_unique_colors,_color) == -1)  
        ds_list_add(_unique_colors,_color);
    ds_list_add(_new_colors,_color);
}   
show_message("Colors reduced from "+string(_original_count)+" to "+string(ds_list_size(_unique_colors)));

button_new_palette();
var _grid = Palettes[| Current_Pal];
for(var _row=0; _row<ds_list_size(_new_colors); _row++)
{
    _col = _new_colors[| _row];
    _grid[# Pal_Cols.Color,_row]          = _col;
    _grid[# Pal_Cols.Hue,_row]            = color_get_hue(_col);
    _grid[# Pal_Cols.Saturation,_row]     = color_get_saturation(_col);
    _grid[# Pal_Cols.Value,_row]          = color_get_value(_col);
    _grid[# Pal_Cols.New_Color,_row]      = _grid[# Pal_Cols.Color,_row];
    _grid[# Pal_Cols.New_Hue,_row]        = _grid[# Pal_Cols.Hue,_row];
    _grid[# Pal_Cols.New_Saturation,_row] = _grid[# Pal_Cols.Saturation,_row];
    _grid[# Pal_Cols.New_Value,_row]      = _grid[# Pal_Cols.Value,_row];
}
ds_list_destroy(_unique_colors);
ds_list_destroy(_new_colors);
rebuild_palette_sprite();
