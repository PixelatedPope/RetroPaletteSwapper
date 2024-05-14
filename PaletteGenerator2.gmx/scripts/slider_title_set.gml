///slider_title_set(slider index, title visible, title text, title underlined)
with(argument[0])
{
    if(argument[1])
    {
        title_visible=true;
        title=argument[2];
        title_underlined=argument[3];
    }
    else
        title_visible=false;
}
