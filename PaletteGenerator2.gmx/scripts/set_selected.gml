///set_selected(row, on/off <optional>)
///Sets the selection for argument[0] to the opposite state.
var _toggle=true;
var _value=0;
if(argument_count>1)
{
    _toggle=false;
    _value=argument[1];    
}

if(argument[0]<ds_grid_height(Pal_Grid))
{
    for(var i=0;i<ds_list_size(Palettes);i++)
    {
        var _grid=ds_list_find_value(Palettes,i);
        if(_toggle)
            _grid[# Pal_Cols.Is_Selected,argument[0]]=!_grid[# Pal_Cols.Is_Selected,argument[0]];   
        else
            _grid[# Pal_Cols.Is_Selected,argument[0]]=_value;
    }
    color_selection_changed();
}
