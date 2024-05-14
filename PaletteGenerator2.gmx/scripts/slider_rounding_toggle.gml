///slider_rounding_toggle(slider index, rounding true/false, round to)
//Round to can be any number or decimal such as 16 or .1 or .5, and the number will be rounded to that nearest value.
with(argument[0])
{
    is_rounded=argument[1];
    if(is_rounded)
        round_value=argument[2];
}
