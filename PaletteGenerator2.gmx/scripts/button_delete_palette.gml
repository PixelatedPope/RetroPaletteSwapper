///Create a new palette.
if(Current_Pal != 0 && show_question("Are you sure you wish to delete this palette?"))
{
    if(Crush_Pal_Exists && Current_Pal == crush_pal)
    {
        Crush_Pal_Exists=false;
    }
    ds_grid_destroy(ds_list_find_value(Palettes,Current_Pal));
    ds_list_delete(Palettes,Current_Pal);
    Current_Pal--;
    project_set_dirty(true);
    
}
if(Current_Pal == 0)
    enable_color_manipulation(false);
else
    enable_color_manipulation(true);

if(no_selection)
{
    set_selected(0); 
}
rebuild_palette_sprite();
color_selection_changed();
