project_switch();
//show_message("Due to a limitation in GM's file access, after you select your project to load click the 'Save' button, you will be asked if you want to 'Replace' it.  Select 'Yes'.  Sorry for this weirdness.");
var _input = get_open_filename("Palette Project|*.pal", "");
if(_input != "")
{
    set_file_name(_input)
    project_clean();
    
    var _file = file_text_open_read(_input);
    var _map = ds_map_create();
    var _saved_map = file_text_readln(_file);
    ds_map_read(_map,_saved_map);
    obj_view_box.x_off=_map[? "X Off"];
    obj_view_box.y_off=_map[? "Y Off"];
    obj_view_box.zoom=_map[? "Zoom"]
    obj_view_box.current_sprite=_map[? "Image"]
    Highlight_Color=_map[? "HL Color"]
    Preview_BG_Color=_map[? "BG Color"]
    ds_map_destroy(_map);
    
    //Read in palette data
    while(!file_text_eof(_file))
    {
        var _grid=ds_grid_create(0,0);
        var _str = file_text_read_string(_file);
        file_text_readln(_file);
        if(_str=="Sprites") break;        
        ds_grid_read(_grid,_str);
        ds_list_add(Palettes,_grid);
    }

    while(!file_text_eof(_file))
    {
      var _sprite = file_text_read_string(_file);
      file_text_readln(_file);
      var _buff = buffer_base64_decode(_sprite);
      buffer_save(_buff,"tmp.png");
      var _spr = sprite_add("tmp.png",0,0,false,0,0);
      if(_spr != -1)
        ds_list_add(Sprite_List,_spr);
    }
    file_delete("tmp.png");
    Pal_Grid=ds_list_find_value(Palettes,0);
    for(var i=0;i<ds_grid_height(Pal_Grid);i++)
    {
        var _col=Pal_Grid[# Pal_Cols.Color,i];
        ds_list_add(Unique_Colors,_col);
    }
    
    project_set_dirty(false);
    File_Path=_input;
    clear_selection();
    Current_Pal=0;
    
    rebuild_palette_sprite();
}
