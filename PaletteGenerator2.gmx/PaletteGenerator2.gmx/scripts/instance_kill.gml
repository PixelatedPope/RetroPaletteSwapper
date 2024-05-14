///instance_kill(id)
//destroys target instance and returns "noone"
instance_activate_object(argument[0])
if(instance_exists(argument[0]))
{
    
    with(argument[0])
        instance_destroy();
}
 
return(noone);   
