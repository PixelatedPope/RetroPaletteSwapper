///slider_create(x,y,width,min,max)
var _slider = instance_create(argument[0],argument[1],obj_slider);
with(_slider)
{
    width=argument[2];
    value_min=argument[3];
    value_max=argument[4];
}
return(_slider);
