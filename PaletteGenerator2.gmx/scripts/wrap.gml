///wrap(value,min,max)
//returns the value wrapped.  If it is above or below the threshold it will wrap around
//The returned value will be >= min and < max.  
//(Similar to how an angle of 360 is equivilant to an angle of 0)


var _val = argument[0];
var _max = argument[2];
var _min = argument[1];

var _dif = _max - _min;

if ( _val >  _max ) 
{
  _val -= _dif * ceil( ( _val - _max ) / _dif );
} 
else if ( _val == _max ) 
{
  _val = _min;
} 
else 
{
  _val += _dif * ceil( ( _min - _val ) / _dif );
}

return _val;



