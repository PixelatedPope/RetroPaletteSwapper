/// @description 
if(!palleteIsSurface)
  draw_sprite_ext(pallete, 0, xstart, ystart, scale, scale, 0, c_white, 1);
else
  draw_surface_ext(pallete, xstart, ystart, scale, scale, 0, c_white, 1);


draw_sprite_stretched(sprPalThumb, 0, x - sprite_xoffset, ystart - sprite_yoffset, boxW, boxH)

if(isVirgin)
  draw_sprite_ext(sprHand, 0, x, sin_oscillate(ystart, ystart + 10,2), .2, .2, 0, c_white, 1)  

