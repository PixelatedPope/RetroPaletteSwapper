/// @description 
draw_title("Palette Cycle");
draw_code("buildPalSurface()\n" +
          "pal_swap_set(pal_surface, "+ string_format(current_pal, 2, 2) + ", true);\n"+
          "draw_self();\n"+
          "pal_swap_reset();");