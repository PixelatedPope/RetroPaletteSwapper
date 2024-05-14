if(ds_list_size(Sprite_List)>0)
{  
    var _answer;
    if(keyboard_check(vk_shift))
    {
        if(show_question("Are you sure you want to delete ALL images?  This cannot be undone."))
        {
            while(!ds_list_empty(Sprite_List))
            {
                sprite_delete(ds_list_find_value(Sprite_List,0));
                ds_list_delete(Sprite_List,0);
            }
            obj_view_box.current_sprite=0;
            project_set_dirty(true);
        }
    }
    else
    {
        if (show_question("Are you sure you want to remove this image?#Any colors associated with this image will NOT be removed"))
        {
            sprite_delete(ds_list_find_value(Sprite_List,obj_view_box.current_sprite));
            ds_list_delete(Sprite_List,obj_view_box.current_sprite);
            if(obj_view_box.current_sprite > ds_list_size(Sprite_List)-1)
            {
                obj_view_box.current_sprite=max(0,obj_view_box.current_sprite-1);
            }
            project_set_dirty(true);
        }
    }
}
