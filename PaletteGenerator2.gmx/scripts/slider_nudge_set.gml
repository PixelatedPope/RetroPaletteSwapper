///slider_nudge_set(slider index, enable nudge?, nudge amount)
//Sets the nudge amount.  Will automatically adjust rounding if a value below 1.
with(argument[0])
{
    if(argument[1])
    {
        var _amount=abs(argument[2]);
        nudge_buttons_amount=argument[2];
        nudge_buttons_visible=true;
        if(argument[2]<1)
        {
            round_value=argument[2];
        }
    }
    else
    {
        nudge_buttons_visible=false;
    }
}
