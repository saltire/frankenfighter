gamepads = ds_list_create();

var deviceCount = gamepad_get_device_count();
for (var i = 0; i < deviceCount; i++) {
  if (gamepad_is_connected(i)) {
    ds_list_add(gamepads, i);
  }
}

backId = layer_background_get_id(layer_get_id("Background"));
page = 0;
pages = [spr_title_1, spr_title_2, spr_title_3];
pageCount = 3;


sc_music_randomizer();