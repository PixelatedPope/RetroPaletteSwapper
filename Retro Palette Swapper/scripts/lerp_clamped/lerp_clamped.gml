///lerp_clamped(val1,val2,amount)
function lerp_clamped() {
	//performs a lerp but locks the returned value between val1 and 2.
	var _min=min(argument[0],argument[1]);
	var _max=max(argument[0],argument[1]);

	return(clamp(lerp(argument[0],argument[1],argument[2]),_min,_max));



}
