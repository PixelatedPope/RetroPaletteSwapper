///slider_moused_over(Slider ID/or "all,this,etc")
//returns true if the given menu is moused over.
with(argument[0])
{
    if(object_index == obj_slider)
    {
        if(window_mouse_get_x() > x && window_mouse_get_x() < x+width && window_mouse_get_y() > y && window_mouse_get_y() < y+height)
            return(true);
    }
}
return(false);
