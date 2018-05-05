///@param joy,keyR,keyL,keyD,keyU

var deadzone = 0.2;

var joy = argument0;
var keyR = argument1;
var keyL = argument2;
var keyD = argument3;
var keyU = argument4;

var hKeyInput = keyboard_check(argument1) - keyboard_check(argument2);
var vKeyInput = keyboard_check(argument3) - keyboard_check(argument4);

var hJoyInput = gamepad_axis_value(joy, gp_axislh);
var vJoyInput = gamepad_axis_value(joy, gp_axislv);

hInput = (hKeyInput != 0) ? hKeyInput : ((abs(hJoyInput) > deadzone) ? hJoyInput : 0);
vInput = (vKeyInput != 0) ? vKeyInput : ((abs(vJoyInput) > deadzone) ? vJoyInput : 0);