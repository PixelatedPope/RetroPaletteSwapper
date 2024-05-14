//var _files = get_open_filename_multi("Select Images to Add","Image File|*.bmp;*.png;*.gif;*.jpg;*jpeg");
var _json=get_test_json();
//var _json=import_images();
//game_end();
var _decoded = json_decode(_json);
if(_decoded == -1)
{
    show_message("Sorry, that apparently didn't work.");
    exit;
}
/*Map "default" - List
   List - Maps
       Map IsTransparent
           FullPath
           IsStrip
           StripCount
           FileName
*/
var _list = _decoded[? "default"];
for(_i=0; _i<ds_list_size(_list); _i++)
{
    var _file = _list[| _i];
    var _path = _file[? "FullPath"];
    var _frames = _file[? "StripCount"];
    var _name = _file[? "FileName"];
    var _remove_back = !_file[? "IsTransparent"];
    
    var _sprite=sprite_add_ns(_path,_frames,_remove_back,false,0,0);
    temp_count=0;
    extract_unique_colors(_sprite)
}

//show_message(string(temp_count)+" sprites added succesfully");
   
//Update Base Pall Sprite
rebuild_palette_sprite()
project_set_dirty(true);
     

