///sliders_set_color(Color)
var _col=argument[0];
slider_value_set(Hue_Slider,color_get_hue(_col));
slider_value_set(Val_Slider,color_get_value(_col));
slider_value_set(Sat_Slider,color_get_saturation(_col));
