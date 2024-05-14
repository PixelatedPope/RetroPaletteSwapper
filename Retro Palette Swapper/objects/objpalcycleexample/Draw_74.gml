/// @description Example
draw_title("Palette Cycle");

//Draw Original for comparison.
draw_sprite_ext(sprite_index, image_index, x - sprite_width, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

///Draw With Palette Swap     
buildPalSurface();

pal_swap_set(pal_surface, current_pal, true);
draw_sprite_ext(sprite_index, image_index, x + sprite_width, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
pal_swap_reset();
