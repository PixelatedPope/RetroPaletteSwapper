/// @description 
draw_sprite_ext(sprite_index, image_index, x, 
                y, 
                image_xscale, image_yscale, 0, 
                c_black, .75);
draw_sprite_ext(sprite_index, image_index, x, 
                y + (state == State.hover ? -5 : -2), 
                image_xscale, image_yscale, 0, 
                state == State.hover ? #B7D15D : c_white, 1);