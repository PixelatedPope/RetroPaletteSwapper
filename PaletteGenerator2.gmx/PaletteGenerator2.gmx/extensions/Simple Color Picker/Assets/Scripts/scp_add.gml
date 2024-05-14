var _type = argument0;
var _x, _y;

if(argument_count == 3){
    _x = argument1; 
    _y = argument2;
} else {
    _x = 0; _y = 0;
}

switch(_type){
    case 0 : 
        return instance_create(_x,_y,scp_object_box);
    case 1 :
        return instance_create(_x,_y,scp_object_slider);    
}