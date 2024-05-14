///project_set_dirty(true/false)
ProjectDirty=argument[0];
if(argument[0])
{
    with(obj_button)
    {
        if(name == "Save Project")
        {
            is_enabled=true;
        }
    }
}
else
{
    with(obj_button)
    {
        if(name == "Save Project")
        {
            is_enabled=false;
        }
    }
}
