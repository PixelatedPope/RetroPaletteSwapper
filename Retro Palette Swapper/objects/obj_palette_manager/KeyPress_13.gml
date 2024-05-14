/// @description Go to next room.
if(instance_exists(obj_room_change_swipe)) exit;

var _room = room_exists(room_next(room)) ? room_next(room) : room_first;
with(instance_create_depth(0,0,depth-1000,obj_room_change_swipe))
		target_room = _room;


