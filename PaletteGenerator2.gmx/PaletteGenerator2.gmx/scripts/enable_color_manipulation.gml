if(argument[0])
{   //Can Manipulate Colors
    with(obj_button)
    {
        if(group=="Shift Color")
            is_enabled=true;
    }
    background_visible[2]=false;
    color_selection_changed();

}
else
{   //No Color Manipulation
    with(obj_button)
    {
        if(group=="Shift Color")
            is_enabled=false;
    }
    color_selection_changed();
    background_visible[2]=true;
}
