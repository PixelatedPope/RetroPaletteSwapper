Current_Pal=wrap(Current_Pal+1,0,ds_list_size(Palettes));
color_selection_changed();
if(Current_Pal == 0 || (Crush_Pal_Exists && Current_Pal==last_pal))
    enable_color_manipulation(false);
else
    enable_color_manipulation(true);
