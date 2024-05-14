/// @description
event_inherited();

pal_surface = noone;
control = noone;
steps = 14;

buildPalSurface = function(){
  if(!surface_exists(pal_surface)){
    var _height = pal_swap_get_color_count(spr_pope_pal) - 1
    pal_surface = surface_create(steps, _height + 1);
    surface_set_target(pal_surface);
    draw_clear_alpha(0, 0);
    var _w = steps / 2 - 2;
    var _x = 1;
    pal_swap_draw_palette(spr_pope_pal, 0, 0, 0);
    draw_rectangle_color(_x, 0, _x + _w, _height, c_red, c_yellow, c_red, c_yellow, false)
    _x += _w + 1;
    draw_rectangle_color(_x, 0, _x + _w, _height, c_yellow, c_red, c_yellow, c_red, false)
    _x += _w + 1;
    draw_rectangle_color(_x, 0, _x + _w, _height, c_red, c_yellow, c_red, c_yellow, false)
    surface_reset_target();
  
    if(!instance_exists(control))
      control = instance_create_depth(getXPos(), getYPos(), depth - 1, objPaletteControl)
    
    control.setPal(pal_surface, function(_newValue){current_pal = _newValue}, 1, true);
  }
}

buildPalSurface();