var gamepadCount = ds_list_size(gamepads);

for (var i = 0; i < gamepadCount; i++) {
  if (gamepad_button_check_pressed(gamepads[| i], gp_start)) {
    room_goto_next();
  }
}