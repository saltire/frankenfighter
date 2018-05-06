var controllers = [];

var slots = gamepad_get_device_count();
for (var i = 0; i < slots; i++) {
  if (gamepad_is_connected(i)) {
    controllers[array_length_1d(controllers)] = i;
  }
}

var count = array_length_1d(controllers);

//if (count == 1) {
//  player1 = instance_create_layer(280, 560, "Characters", obj_player1);
//  player1.joy = controllers[0];
//  player1.bodyMap = instance_create_layer(540, 20, "Screens", obj_screen);
//}
//else if (count >= 2) {
  player1 = instance_create_layer(280, 560, "Characters", obj_player1);
  //player1.joy = controllers[0];
  player1.bodyMap = instance_create_layer(240, 20, "Screens", obj_screen);
  
  player2 = instance_create_layer(380, 580, "Characters", obj_player2);
  //player2.joy = controllers[1];
  player2.bodyMap = instance_create_layer(840, 20, "Screens", obj_screen);
//}

minSpawnDistance = 120;
spawnX = 1350;
spawnYMin = 340;
spawnYMax = 680;
spawnChance = 0.004;

randomize();