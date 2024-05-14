//sprite_delete(Pal_Sprite);
if(surface_exists(Pal_Surface))
    surface_free(Pal_Surface);
var _height=1;
if(ds_grid_height(Pal_Grid)>0)
    _height=ds_grid_height(Pal_Grid);
Pal_Surface=surface_create(ds_list_size(Palettes),_height);
surface_set_target(Pal_Surface)
    draw_clear_alpha(c_black,0);
    for(var _x=0;_x<ds_list_size(Palettes);_x++)
    {
        var _grid = ds_list_find_value(Palettes,_x);
        for(var _y=0;_y<ds_grid_height(Pal_Grid);_y++)
        {
            var _col = _grid[# Pal_Cols.New_Color,_y];
            draw_set_color(_col);
            draw_point(_x,_y);
        }
    }
surface_reset_target();
