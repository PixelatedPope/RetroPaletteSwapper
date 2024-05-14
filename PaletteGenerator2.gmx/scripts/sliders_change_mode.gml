///sliders_change_mode(0 absolute / 1 relative)
if(argument[0])
{   //Relative
    with(obj_slider)
    {
        slider_range_set(id,-255,255);
        slider_value_set(id,0);
    }
    with(Hue_Slider)
    {
       slider_range_set(id,-128,128); 
       slider_value_set(id,0);
    }
}
else
{   //Absolute
    with(obj_slider)
    {
        slider_range_set(id,0,255);
        
    }
}
