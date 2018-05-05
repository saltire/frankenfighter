///@param joy,keyR,keyL,keyD,keyU,keySwap

var deadzone = 0.2;

var joy = argument0;
var keyR = argument1;
var keyL = argument2;
var keyD = argument3;
var keyU = argument4;
var keySwap = argument5;

var hKeyInput = keyboard_check(keyR) - keyboard_check(keyL);
var vKeyInput = keyboard_check(keyD) - keyboard_check(keyU);

var hJoyInput = gamepad_axis_value(joy, gp_axislh);
var vJoyInput = gamepad_axis_value(joy, gp_axislv);

hInput = (hKeyInput != 0) ? hKeyInput : ((abs(hJoyInput) > deadzone) ? hJoyInput : 0);
vInput = (vKeyInput != 0) ? vKeyInput : ((abs(vJoyInput) > deadzone) ? vJoyInput : 0);

var swap = gp_face1;
swapHeld = keyboard_check(keySwap) || gamepad_button_check(joy, swap);
swapPressed = keyboard_check_pressed(keySwap) || gamepad_button_check_pressed(joy, swap);
swapReleased = keyboard_check_released(keySwap) || gamepad_button_check_released(joy, swap);