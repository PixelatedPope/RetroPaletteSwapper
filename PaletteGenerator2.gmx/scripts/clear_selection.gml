///Zeroes out the "is Selected" flag for all colors.
for(var i=0;i<ds_list_size(Palettes);i++)
{
    var _grid=ds_list_find_value(Palettes,i);
    ds_grid_set_region(_grid,Pal_Cols.Is_Selected,0,Pal_Cols.Is_Selected,ds_grid_height(_grid)-1,false);
}
