///draw_set_text_alignment(alignment<1-9>,color<optional>)
//Alignment Options
// 7 8 9
// 4 5 6
// 1 2 3

switch(argument[0])
{
    case 1: draw_set_halign(fa_left);   draw_set_valign(fa_bottom); break;
    case 2: draw_set_halign(fa_center); draw_set_valign(fa_bottom); break;
    case 3: draw_set_halign(fa_right);  draw_set_valign(fa_bottom); break;
    case 4: draw_set_halign(fa_left);   draw_set_valign(fa_middle); break;
    case 5: draw_set_halign(fa_center); draw_set_valign(fa_middle); break;
    case 6: draw_set_halign(fa_right);  draw_set_valign(fa_middle); break;
    case 7: draw_set_halign(fa_left);   draw_set_valign(fa_top); break;
    case 8: draw_set_halign(fa_center); draw_set_valign(fa_top); break;
    case 9: draw_set_halign(fa_right);  draw_set_valign(fa_top); break;


}

if (argument_count==2)
{
    draw_set_color(argument[1]);
}
