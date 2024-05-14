///set_file_name(file path)
var _path=argument[0];
while(string_pos("\",_path) != 0)
{
    _path=string_delete(_path,1,1);
    //show_debug_message(_path);
}
obj_project_manager.project_name=_path;
