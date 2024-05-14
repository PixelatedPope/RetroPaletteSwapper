/// @description 
palIndex = 1;

pallete = spr_pope_pal;
palleteIsSurface = false;
scale = 12;

isVirgin = true;
xOff = 0;

isFollowing = false;

palCount = 0;
palWidth = 0;
boxW = 0;
boxH = 0;
onChange = function(_newIndex){}
isHovered = false;

setPal = function(_pal, _callback, _startPal = 1, _isSurface = false) {   
  pallete = _pal;
  palleteIsSurface = _isSurface;
  
  palCount =  (!palleteIsSurface 
               ? sprite_get_width(pallete)
               : surface_get_width(pallete));
  palWidth = (palCount  - 1) * scale;
  onChange = _callback;
  
  palColorCount = (!palleteIsSurface 
               ? sprite_get_height(pallete)
               : surface_get_height(pallete));
  
  boxW = scale + sprite_xoffset * 2
  boxH = sprite_get_height(sprPalThumb) + (palColorCount * scale) - 8;
  
  setIndex(_startPal);
  return id;
}

setIndex = function(_index) {
  if(!isVirgin) return;
  
  palIndex = _index;
  x = lerp(xstart, xstart + palWidth, palIndex / (palCount - 1))
}

setPos = function(_x, _y) {
  xstart = _x - palWidth / 2;
  ystart = _y - boxH / 2;
  setIndex(palIndex);
}
