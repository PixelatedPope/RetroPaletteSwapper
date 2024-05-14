///Cleanup Project
//Cleanup Palette Grid
for(var i=0; i<ds_list_size(Palettes);i++)
{
    var _grid=ds_list_find_value(Palettes,i);
    ds_grid_destroy(_grid);
}
ds_list_destroy(Palettes);
Palettes=ds_list_create();

//Cleanup Sprite List
for(var i=0; i<ds_list_size(Sprite_List);i++)
{
    var _sprite=ds_list_find_value(Sprite_List,i);
    sprite_delete(_sprite);
}
ds_list_destroy(Sprite_List);
Sprite_List=ds_list_create();

ds_list_destroy(Unique_Colors);
Unique_Colors=ds_list_create();

Current_Pal=0;
hide_color_sliders(true);
background_visible[2]=true;
obj_view_box.current_sprite=0;
