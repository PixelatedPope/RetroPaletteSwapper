/// @description Code and Title
draw_title("Layer Swap");

draw_code("CREATE EVENT:\n"+
          "pal_swap_layer_init();\n"+
          "pal_swap_enable_layer(\"Layer1\");\n"+
          "pal_swap_enable_layer(\"Layer2\");\n\n"+
          
          "STEP EVENT:\n"+
          "pal_swap_set_layer(spr_pope_pal,"+string(current_pal[0])+",\"Layer1\",false);\n"+
          "pal_swap_set_layer(spr_pope_pal,"+string(current_pal[1])+",\"Layer2\",false);");




