///button_new_projet();
//Creates a new project
project_switch();
project_clean();
Pal_Grid=ds_grid_create(Pal_Cols.Count,0);
ds_list_add(Palettes,Pal_Grid);

File_Path="";
ProjectDirty=false;
obj_project_manager.project_name="New Project.pal";
