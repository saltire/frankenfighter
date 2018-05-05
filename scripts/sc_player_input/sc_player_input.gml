var deadzone = 0.2;

var j_moveX = gp_axislh;
var j_moveY = gp_axislv;
var j_swap = gp_shoulderrb;
var j_lPunch = gp_face4;
var j_rPunch = gp_face3;
var j_lKick = gp_face2;
var j_rKick = gp_face1;

var hKeyInput = keyboard_check(keyR) - keyboard_check(keyL);
var vKeyInput = keyboard_check(keyD) - keyboard_check(keyU);

var hJoyInput = gamepad_axis_value(joy, j_moveX);
var vJoyInput = gamepad_axis_value(joy, j_moveY);

hInput = (hKeyInput != 0) ? hKeyInput : ((abs(hJoyInput) > deadzone) ? hJoyInput : 0);
vInput = (vKeyInput != 0) ? vKeyInput : ((abs(vJoyInput) > deadzone) ? vJoyInput : 0);

swapHeld = keyboard_check(keySwap) || gamepad_button_check(joy, j_swap);
swapPressed = keyboard_check_pressed(keySwap) || gamepad_button_check_pressed(joy, j_swap);
swapReleased = keyboard_check_released(keySwap) || gamepad_button_check_released(joy, j_swap);

lPunch = keyboard_check(keyLPunch) || gamepad_button_check(joy, j_lPunch);
rPunch = keyboard_check(keyRPunch) || gamepad_button_check(joy, j_rPunch);
lKick = keyboard_check(keyLKick) || gamepad_button_check(joy, j_lKick);
rKick = keyboard_check(keyRKick) || gamepad_button_check(joy, j_rKick);

lPunchPressed = keyboard_check_pressed(keyLPunch) || gamepad_button_check_pressed(joy, j_lPunch);
rPunchPressed = keyboard_check_pressed(keyRPunch) || gamepad_button_check_pressed(joy, j_rPunch);
lKickPressed = keyboard_check_pressed(keyLKick) || gamepad_button_check_pressed(joy, j_lKick);
rKickPressed = keyboard_check_pressed(keyRKick) || gamepad_button_check_pressed(joy, j_rKick);