/// @description 

image_xscale = .4
image_yscale = image_xscale;
enum State { normal, hover}
state = State.normal;

onClick = function(){
  if(instance_exists(obj_room_change_swipe)) return;
  var _swipe = instance_create_depth(0,0,0,obj_room_change_swipe);
  var _room = rm_demo_basic;
  if(dir == 1) {
    _room = room_next(room);
    if(!room_exists(_room)) 
      _room = room_next(room_first);
  } else {
    _room = room_previous(room);
    if(_room == _init) 
      _room = room_last;
  }
  
  
  _swipe.target_room = _room;
};