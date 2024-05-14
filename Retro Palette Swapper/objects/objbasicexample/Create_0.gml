/// @description Object Properties
event_inherited();

control = instance_create_depth(x, y, depth - 1, objPaletteControl).setPal(spr_pope_pal, function(_newValue) {
  current_pal = _newValue;  
});