output = get_save_filename("Palette Sprite|*.png", "");
if(!string_pos(".png",output))
    output+=".png";
if(output != "")
{
    surface_save(Pal_Surface, output);
}
