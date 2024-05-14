/// @description
var _w = sprite_get_width(spr_pixelated_pope)
var _h = sprite_get_height(spr_pixelated_pope)
for(var _x = 0; _x <= VIEW_W + _w; _x += _w) {
  for(var _y = 0; _y <= VIEW_H + _h; _y += _h) {
    draw_sprite(spr_pixelated_pope, image_index, _x, _y)
  }
}