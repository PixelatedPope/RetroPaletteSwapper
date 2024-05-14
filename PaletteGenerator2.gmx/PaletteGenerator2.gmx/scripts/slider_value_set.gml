///slider_value_set(slider index, value)
var _value = argument[1];

with(argument[0])
{
    if(_value <= value_min)
    {
        value_min=_value
        slider_position=0;
    }
    else if (_value >= value_max)
    {
        value_max=_value
        slider_position=1;
    } 
    else
        slider_position=(_value-value_min)/(value_max-value_min);
}
