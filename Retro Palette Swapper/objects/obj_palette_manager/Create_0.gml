/// @description Initilize System and add palettes

//This should be done before any drawing takes place 
//in a managing object that will persist through the entire game.
//Notice I've set it to persistent.  

//First Init the System, specify the name of the pal swap shader in case you've changed it for some reason.
pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);

var _getY = function(){ return GUI_H - abs(objExampleSwitcher.sprite_height / 2) - 5 };

var _back = instance_create_depth(x, y, depth - 1, objExampleSwitcher);
_back.getX = function(){ return abs(objExampleSwitcher.sprite_width * 2) - 20};
_back.getY = _getY
_back.dir = -1;
_back.image_xscale *= -1;

var _forward = instance_create_depth(x, y, depth - 1, objExampleSwitcher);
_forward.getX = function(){ return GUI_W - abs(objExampleSwitcher.sprite_width * 2) + 20};
_forward.getY = _getY
_forward.dir = 1;
room_goto_next();

global.showCode = false;
instance_create_depth(0,0, depth -1, objCodeToggle);