with(obj_highlight_color_picker)
{
    project_set_dirty(true);
    with(obj_bg_color_picker)
    {
        my_color_picker=instance_kill(my_color_picker);
        my_color_slider=instance_kill(my_color_slider);
    }
    event_user(0);
}
