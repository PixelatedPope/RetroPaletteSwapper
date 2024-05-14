/// @description Object Properties
image_xscale = 3;
image_yscale = image_xscale;
x = 0;
y = 0;

current_pal = 1;
control = noone;

getXPos = function(){return GUI_W / 2};
getYPos = function(){return GUI_H / 2};

///@func draw_title(title)
draw_title = function(_title) {
  draw_set_font(fnt_title);						 
  draw_set_text_alignment(5,c_white);
  draw_text(GUI_W/2,GUI_H - 40,_title);
}

///@func draw_code(code)
draw_code = function(_code) {
  if(!global.showCode) return;
  var _x = GUI_W * .15, 
      _y = GUI_H * .10, 
      _w = GUI_W * .75, 
      _h = GUI_H * .75;
  
  draw_set_color(c_black)
  draw_set_alpha(.5);
  draw_roundrect(_x, _y, _x + _w, _y + _h, false);
  draw_set_alpha(1);
  draw_set_color(c_white)
  draw_roundrect(_x, _y, _x + _w, _y + _h, true);
  
  
  draw_set_font(fnt_code);
  var _margin = 10;
  var _strW = string_width(_code);
  var _scale = _w / (_strW + _margin * 2);
  var _h = string_height(_code) * _scale;
  draw_set_text_alignment(7,c_white);
  draw_text_transformed(_x + _margin, _y + _margin, _code, _scale, _scale, 0);
}