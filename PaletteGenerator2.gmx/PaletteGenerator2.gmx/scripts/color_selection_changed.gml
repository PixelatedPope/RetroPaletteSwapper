///Called whenever color selection is changing.
//get count of selected colors
var _count = selected_count_get();

reset_all_colors();

if(_count == 1 && Current_Pal != 0)
{
    hide_color_sliders(false);
    sliders_change_mode(0);
    //Get Current Color
    var _row=selected_color_get_row();
    var _pal_grid = current_palette_get_grid();
    var _col=color_get(_pal_grid,_row);
    sliders_set_color(_col);
    sliders_set_changed(false);
}
else if(_count > 1 && Current_Pal != 0)
{
    ///Hide sliders for now.
    hide_color_sliders(false);
    sliders_change_mode(1);
    
    sliders_set_changed(false);
    rebuild_palette_sprite();
}
else
{
    hide_color_sliders(true);
}
