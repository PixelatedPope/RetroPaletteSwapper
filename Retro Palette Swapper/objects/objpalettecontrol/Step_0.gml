/// @description Mouse Interaction

var _baseH = sprite_get_height(sprPalThumb) ;

var _x1 = x - sprite_xoffset; 
var _y1 = ystart - sprite_yoffset;
var _x2 = _x1 + boxW;
var _y2 = _y1 + boxH;

var _isOver = point_in_rectangle(G_MOUSE_X, G_MOUSE_Y,_x1, _y1, _x2, _y2 )
var _isClicked = device_mouse_check_button_pressed(0, mb_left)

if(!isHovered && _isOver) {
  window_set_cursor(cr_drag)
  isHovered = true;
}

if(isHovered && !_isOver && !isFollowing) {
  isHovered = false;
  window_set_cursor(cr_default)
}
  
if(isFollowing) {
  isFollowing = !device_mouse_check_button_released(0, mb_left)

  if(isVirgin) return;
  
  x = clamp(G_MOUSE_X - xOff, xstart, xstart + palWidth);
  palIndex = ((x - xstart) / (xstart + palWidth - xstart)) * (palCount - 1)
  onChange(palIndex);
  return;
}

if(_isClicked && _isOver) {
  isVirgin = false;
  xOff = G_MOUSE_X - x;
  isFollowing = true;
}