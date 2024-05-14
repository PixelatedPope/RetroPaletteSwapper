/// @description 
x = getXPos();
y = getYPos();

for(var _i = 0; _i < array_length(elements) _i++){
  var _e = elements[_i];
  
  layer_sprite_angle(_e.id,  layer_sprite_get_angle(_e.id) + 1 / layer_sprite_get_xscale(_e.id) * _e.dir)
}
  
if(x != xprevious || y != yprevious) {
  
  for(var _i = 0; _i < array_length(elements) _i++) {
    var _e = elements[_i];
    layer_sprite_x(_e.id, VIEW_W * _e.x);
    layer_sprite_y(_e.id, VIEW_H * _e.y);
  }
  var _dist = 100;
  control1.setPos(x - _dist, y);
  control2.setPos(x     , y);
  control3.setPos(x + _dist, y);
}