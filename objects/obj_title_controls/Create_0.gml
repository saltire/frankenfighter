gamepads = ds_list_create();

var deviceCount = gamepad_get_device_count();
for (var i = 0; i < deviceCount; i++) {
  if (gamepad_is_connected(i)) {
    ds_list_add(gamepads, i);
  }
}
