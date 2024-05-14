/// @description
event_inherited();

if(control == noone) exit;

control.setIndex(current_pal);

if(!control.isVirgin) return;

current_pal = wrap(current_pal + .25, 1, steps - 1);

      