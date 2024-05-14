/// @desc Draw Logo & FPS
/*draw_sprite_ext(spr_logo,0,display_get_gui_width(),2,1,1,0,c_black,.75);
draw_sprite(spr_logo,0,display_get_gui_width(),0);
draw_set_font(fnt_demo);

draw_set_text_alignment(Text.center_bottom,c_black);
var _str = "";
if(obj_ap_player.useAi)
  _str = "Left Click to Toggle AI Off";
else
  _str = "Left Click to Toggle AI On\nArrows Move  -  X Attacks  -  C Jumps";

_str = string(curWindowWidth) + " x " + string(curWindowHeight) + "\n";
_str += string(browser_width) + " x " + string(browser_height) + "\n";
_str += string(WIN_W) + " x " + string(WIN_H)
draw_text(display_get_gui_width()/2+1,display_get_gui_height()-9,_str);

draw_set_color(c_white);
draw_text(display_get_gui_width()/2,display_get_gui_height()-10,_str);

