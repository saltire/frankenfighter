var gamepadCount = ds_list_size(gamepads);

for (var i = 0; i < gamepadCount; i++) {
  if (gamepad_button_check_pressed(gamepads[| i], gp_start)) {
    room_goto_next();
  }
  
  if (gamepad_button_check_pressed(gamepads[| i], gp_face1)) {
    page = (page + 1) % pageCount;
    layer_background_sprite(backId, pages[page]);
  }
}