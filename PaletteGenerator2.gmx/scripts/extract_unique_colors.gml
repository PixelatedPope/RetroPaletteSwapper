///extract_unique_colors(sprite)
var _sprite = argument0;
//Need to break out all sprites into their own sprites.
var _temp_colors=ds_list_create(); //Stores all unique colors for this sprite.
var _new_color_count=0; 
var _sprite_list=ds_list_create();
var _sprite_width,_sprite_height;
_sprite_width=sprite_get_width(_sprite);
_sprite_height=sprite_get_height(_sprite);
var _surf=surface_create(_sprite_width,_sprite_height);
for(var i=0;i<sprite_get_number(_sprite);i++)
{   //Loop through, draw each sprite to a surface of a standard size.
    //Then create a new sprite for each surface.
    //Pull all unique colors out of the sprite.
    //Save Sprite in Sprite_List for management
    show_debug_message("Examining sprite: "+string(i));
    surface_set_target(_surf);
    {
        draw_clear_alpha(c_black,0);
        draw_sprite(_sprite,i,0,0);
    }
    surface_reset_target();
    //Find all unique colors
    var _buff = buffer_create(_sprite_width*_sprite_height*4, buffer_fixed, 4); 
    buffer_get_surface(_buff, _surf, 0, 0, 0);
    for(var _x=0; _x<_sprite_width; _x++)
    {
        for(var _y=0; _y<_sprite_height; _y++)
        {
            var _col = buffer_read(_buff, buffer_u32); 
            var _a = (_col >> 24) & 255;
            var _r = (_col >> 16) & 255;
            var _g = (_col >> 8) & 255;
            var _b = _col & 255;  
            var _col=make_colour_rgb(_r, _g, _b);
            if(_a == 0)
              continue;
            /*if(_col==c_black)
            {
              continue;
            }*/
            if(ds_list_find_index(_temp_colors,_col) == -1)
            {   //First time encountering this color for this sprite.
                ds_list_add(_temp_colors,_col);
                if(ds_list_find_index(Unique_Colors,_col) == -1)
                {   //First time across all sprites.
                    _new_color_count++;
                    //But don't add it yet... need to make sure it doesn't make us
                    //Go over the limit.
                }
            }
        }
    }
    ///Save Sprite
    ds_list_add(_sprite_list,sprite_create_from_surface(_surf,0,0,_sprite_width,_sprite_height,false,false,0,0));
    buffer_delete(_buff);
}
surface_free(_surf);
sprite_delete(_sprite);

///Validate that we can add these sprites to the project.
if(ds_list_size(Unique_Colors)+_new_color_count >=256)
{   ///Too many colors!
    show_message("This sprite adds too many unique colors to the project.  Aborting...");
    ds_list_destroy(_temp_colors);
    ds_list_destroy(_sprite_list);
    
    return 0;
} 
else
{   //Valid.  
    //Add Sprite list to project Sprite_List.
    for(var i=0; i<ds_list_size(_sprite_list);i++)
        ds_list_add(Sprite_List,ds_list_find_value(_sprite_list,i));
    //Add new colors to Unique_Color list and Index colors as HSV
    for(var i=0; i<ds_list_size(_temp_colors);i++)
    {
        var _col = ds_list_find_value(_temp_colors,i);
        if(ds_list_find_index(Unique_Colors,_col) == -1)
        {
            ds_list_add(Unique_Colors,_col);
            for(var ii=0;ii<ds_list_size(Palettes);ii++)
            {   ///Add new colors to ALL palettes
                var _grid=ds_list_find_value(Palettes,ii);
                var _row=ds_grid_add_row(_grid);
                _grid[# Pal_Cols.Color,_row]          = _col;
                _grid[# Pal_Cols.Hue,_row]            = color_get_hue(_col);
                _grid[# Pal_Cols.Saturation,_row]     = color_get_saturation(_col);
                _grid[# Pal_Cols.Value,_row]          = color_get_value(_col);
                _grid[# Pal_Cols.New_Color,_row]      = _grid[# Pal_Cols.Color,_row];
                _grid[# Pal_Cols.New_Hue,_row]        = _grid[# Pal_Cols.Hue,_row];
                _grid[# Pal_Cols.New_Saturation,_row] = _grid[# Pal_Cols.Saturation,_row];
                _grid[# Pal_Cols.New_Value,_row]      = _grid[# Pal_Cols.Value,_row];
            }
        }
    }
    
    //show_message("Sprite Added Successfully!#"+string(ds_list_size(_sprite_list))+" Images Added.  #"+string(_new_color_count)+" New Colors Added.");
    ds_list_destroy(_temp_colors);
    ds_list_destroy(_sprite_list);
}
