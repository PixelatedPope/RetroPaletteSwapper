if(ds_list_size(Sprite_List)>0)
{
    project_set_dirty(true);
    with(obj_view_box)
    {
        if(is_playing) exit;
        current_sprite=wrap(current_sprite-1,0,ds_list_size(Sprite_List));
    }
}
