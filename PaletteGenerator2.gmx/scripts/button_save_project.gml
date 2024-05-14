project_set_dirty(false);
var output;
if(File_Path != "")
    output=File_Path;
var _list = string_parse(File_Path,"\",true);
var _filename;
if(ds_list_empty(_list))
  _filename="";
else
  _filename=_list[| ds_list_size(_list)-1];


output = get_save_filename("Palette Project|*.pal", _filename);

ds_list_destroy(_list);

if(!string_pos(".pal",output))
    output+=".pal";
if(output != "")
{
    var _file = file_text_open_write(output);
    //Save sprite settings
    var _map = ds_map_create();
    _map[? "X Off"]=obj_view_box.x_off;
    _map[? "Y Off"]=obj_view_box.y_off;
    _map[? "Zoom"]=obj_view_box.zoom;
    _map[? "Image"]=obj_view_box.current_sprite;
    _map[? "HL Color"]=Highlight_Color;
    _map[? "BG Color"]=Preview_BG_Color;
    file_text_write_string(_file,ds_map_write(_map));
    ds_map_destroy(_map);
    file_text_writeln(_file);
    //Save the Palette Stuff;
    for(var _i=0; _i<ds_list_size(Palettes);_i++)
    {
        file_text_write_string(_file,ds_grid_write(ds_list_find_value(Palettes,_i)));
        file_text_writeln(_file);
    }
    file_text_write_string(_file,"Sprites");
    file_text_writeln(_file);
    //Save ImagesThanks
    var _sprite = Sprite_List[|0];
    var _w = sprite_get_width(_sprite);
    var _h = sprite_get_height(_sprite);
    for(_i=0; _i<ds_list_size(Sprite_List);_i++)
    {
      _sprite = Sprite_List[|_i];
      sprite_save(_sprite,0,"tmp.png");
      var _buff = buffer_load("tmp.png");
      var _string = buffer_base64_encode(_buff,0,buffer_get_size(_buff));
      file_text_write_string(_file,_string);
      file_text_writeln(_file);
    }
    file_delete("tmp.png");
    
    
    file_text_close(_file);
    set_file_name(output);
    File_Path = output;
}
