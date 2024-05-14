/*
Get a list of all rows that need to be shifted.
Starting at the top of the list, if the row above it is > = list position, swap with row above it.
Set "Can Move" tag to true.
Return can move.
*/
project_set_dirty(true);

//Build List of Selected Rows
var selected_list=ds_list_create();
for(var i=0;i<ds_grid_height(Pal_Grid);i++)
{
    if(Pal_Grid[# Pal_Cols.Is_Selected,i])
        ds_list_add(selected_list,i);
}

var can_move=false;
for(var i=0; i<ds_list_size(selected_list);i++)
{
    var _row=ds_list_find_value(selected_list,i);
    if(_row-1 >=i)
    {
        can_move=true;
        //Swap the row in all grids.
        for(var ii=0;ii<ds_list_size(Palettes);ii++)
        {
            var _grid=ds_list_find_value(Palettes,ii);
            ds_grid_swap_rows(_grid,_row,_row-1);
        }
    }   
}
if(can_move)
    obj_palette_grid.last_selected--;
rebuild_palette_sprite();
return(can_move);
