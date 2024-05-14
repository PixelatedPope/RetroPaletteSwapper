/// @description 
x = getXPos();
y = getYPos();

if(control == noone) return;

if(x != xprevious || y != yprevious)
  control.setPos(x,y);