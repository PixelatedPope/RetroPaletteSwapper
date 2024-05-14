/// demo_prompt(prompt, ?default = "")
var q = inputs[?__button];
var s = argument[0];
var d = q[?s];
if (is_undefined(d)) {
    if (argument_count > 1) {
        d = string(argument[1]);
    } else d = "";
}
var r = get_string(s, d);
if (r != "") q[?s] = r;
return r;
