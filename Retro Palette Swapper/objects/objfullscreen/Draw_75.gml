/// @description 
draw_title("Full Screen Swap");
           
if(keyboard_check(vk_space) || gamepad_button_check(0,gp_face1)) exit;
draw_code("---CREATE EVENT---\n"+
          "application_surface_draw_enable(false);\n"+

          "\n---DRAW EVENT---\n"+
          "for(var _x = 0; _x<room_width; _x+=sprite_get_width(spr_pixelated_pope)) {\n"+
          " for(var _y = 0; _y<room_height; _y+=sprite_get_height(spr_pixelated_pope)) {\n"+
          "   draw_sprite(spr_pixelated_pope,image_index,_x,_y)\n"+
          " }\n"+
          "}\n"+


          "\n---POST DRAW EVENT---\n"+
          "pal_swap_set(spr_pope_pal, "+string(current_pal)+ ", false);\n"+
          "draw_surface_stretched(application_surface,0,0,GUI_W,GUI_H);\n"+
          "pal_swap_reset();", GUI_W * .3,,GUI_W * .55);