///button_export_images_with_current_palette
//Will loop through all images currently in the project and
//save them back out as PNG with the current palette applied.
if(File_Path=="")
{
    show_message("Please Save your project before exporting.");
    exit;
}
var _proj_name = obj_project_manager.project_name;
var _root = string_replace_all(File_Path,_proj_name,"");
if(string_count(".pal",_proj_name) > 0)
{
    _proj_name = string_replace_all(_proj_name,".pal","");
}
///Loop through list of sprites.
nsfs_set_directory(_root);
var _path = _proj_name+" Exported";
directory_create_ns(_path);
var _surf = surface_create(1,1);
pal_swap_set(shd_pal_swapper,Pal_Surface,Current_Pal,true);
var _success = 0;
for(var _i=0;_i<ds_list_size(Sprite_List); _i++)
{
    //Create a surface and draw the sprite to it using the current pal
    var _spr = Sprite_List[| _i];
    surface_resize(_surf, sprite_get_width(_spr),sprite_get_height(_spr));
    surface_set_target(_surf);
    draw_clear_alpha(0,0);
    draw_sprite(_spr,0,0,0);
    surface_reset_target();
    
    //Export PNG
    _success += surface_save_ns(_surf,_path+"\sprite "+string(_i)+".png");
}
pal_swap_reset();
show_message(string(_success)+ " images exported successfuly.  Can be found in a folder next to your project file.");
