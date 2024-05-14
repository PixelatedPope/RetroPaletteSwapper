///project_switch()
//Does what is necessary for moving from one project to another.
if(project_get_dirty())
{
    if(show_question("Hey.  You have unsaved changes.#You want to save?"))
    {
        button_save_project();
    }
    
}
