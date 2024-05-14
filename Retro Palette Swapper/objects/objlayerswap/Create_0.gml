/// @description Object Properties
event_inherited()
current_pal[0] = 0;
current_pal[1] = 1;
current_pal[2] = 2;

pal_swap_layer_init();
pal_swap_enable_layer("Layer1");
pal_swap_enable_layer("Layer2");
pal_swap_enable_layer("Tiles_1");


control1 = instance_create_depth(0, 0, depth - 1, objPaletteControl)
control1.setPal(spr_pope_pal, function(_newValue) {current_pal[0] = _newValue;}, 0);

control2 = instance_create_depth(0, 0, depth - 1, objPaletteControl)
control2.setPal(spr_pope_pal, function(_newValue) {current_pal[1] = _newValue;}, 1);

control3 = instance_create_depth(0, 0, depth - 1, objPaletteControl)
control3.setPal(spr_pope_pal, function(_newValue) {
  current_pal[2] = _newValue;
  }, 2);

var _l1elements = layer_get_all_elements("Layer1")
var _l2elements = layer_get_all_elements("Layer2")

elements = []
array_copy(elements, 0, _l1elements, 0, array_length(_l1elements))
array_copy(elements, array_length(elements), _l2elements, 0, array_length(_l2elements))

for(var _i = 0; _i < array_length(elements) _i++){
  var _e = elements[_i];
  elements[_i] = {
    id: _e,
    x: layer_sprite_get_x(_e) / room_width,
    y: layer_sprite_get_y(_e) / room_height,
    dir: choose(-1, 1)
  }
}