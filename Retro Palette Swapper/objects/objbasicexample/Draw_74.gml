/// @description 

//Draw Original for comparison.
draw_sprite_ext(sprite_index, image_index, x - sprite_width, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

///Draw With Palette Swap     
pal_swap_set(spr_pope_pal, current_pal, false);
draw_sprite_ext(sprite_index, image_index, x + sprite_width, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
pal_swap_reset();