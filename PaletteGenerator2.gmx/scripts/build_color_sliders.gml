var _x=605;
var _y=182;
var _space=56;

Hue_Slider=slider_create(_x,_y,200,0,255);
slider_title_set(Hue_Slider,true,"Hue",false);
Hue_Slider.bg_sprite=spr_hue_bg;
_y+=_space;
Sat_Slider=slider_create(_x,_y,200,0,255);
slider_title_set(Sat_Slider,true,"Saturation",false);
Sat_Slider.bg_sprite=spr_sat_bg;
_y+=_space;
Val_Slider=slider_create(_x,_y,200,0,255);
slider_title_set(Val_Slider,true,"Value",false);
Val_Slider.bg_sprite=spr_val_bg;
