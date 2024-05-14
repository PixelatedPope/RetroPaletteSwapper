///button_delete_color()
if(selected_count_get()>0 && show_question("Are you sure you wish to delete the selected color(s).#(To re-add the color(s), import another image that contains this color.)"))
{   ///Delete Colors
    for(var i=0;i<ds_list_size(Palettes);i++)
    {
        var _grid=ds_list_find_value(Palettes,i);
        var _del_list=ds_list_create();
        //Find all rows to delete.
        for(var _y=0;_y<ds_grid_height(_grid);_y++)
        {
            if(_grid[# Pal_Cols.Is_Selected,_y])
            {
                ds_list_add(_del_list,_y);
            }
        }
        //Go Backwards through the list and delete the rows.
        for(var _y=ds_list_size(_del_list)-1;_y>=0;_y--)
        {
            var _row=ds_list_find_value(_del_list,_y);
            _grid=ds_grid_delete_row(_grid,_row);
            ds_list_replace(Palettes,i,_grid);
        }
        ds_list_destroy(_del_list);
    }
    Pal_Grid=ds_list_find_value(Palettes,0);
    obj_palette_grid.last_selected=0;
    rebuild_palette_sprite();
    
    //Update Unique Colors
    ds_list_destroy(Unique_Colors);
    Unique_Colors=ds_list_create();
    for(var i=0;i<ds_grid_height(Pal_Grid);i++)
    {
        ds_list_add(Unique_Colors,Pal_Grid[# Pal_Cols.Color,i]);   
    }
    project_set_dirty(true);
}
