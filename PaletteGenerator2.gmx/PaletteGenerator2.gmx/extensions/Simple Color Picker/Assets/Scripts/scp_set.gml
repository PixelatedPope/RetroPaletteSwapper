#define scp_set
scp_set_hue(argument0,argument1);
scp_set_sat(argument0,argument2);
scp_set_val(argument0,255-argument3);

#define scp_set_hue
argument0.hue = argument1;

#define scp_set_sat
argument0.sat = argument1;

#define scp_set_val
argument0.val = argument1;