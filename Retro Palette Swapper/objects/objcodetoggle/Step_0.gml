/// @description 
x = GUI_W / 2;
y = 20;


state = State.normal
if(!position_meeting(G_MOUSE_X, G_MOUSE_Y, id)) return;

state = State.hover;
if(device_mouse_check_button_pressed(0, mb_left))
  onClick();

