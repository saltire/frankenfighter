var controllers = [];

var slots = gamepad_get_device_count();
for (var i = 0; i < slots; i++) {
  if (gamepad_is_connected(i)) {
    controllers[array_length_1d(controllers)] = i;
  }
}

var count = array_length_1d(controllers);

var screenObj = obj_screen;
var bodyMapObj = obj_body_map;

if (count <= 2) {
  player1 = instance_create_layer(280, 560, "Characters", obj_player1);
  instance_create_layer(40, 0, "Screens", screenObj);
  player1.bodyMap = instance_create_layer(40, 0, "BodyMaps", bodyMapObj);
  player1.bodyMap.sprite_index = spr_body_map_red;
  player1.bodyMap.char = player1;
  
  player2 = instance_create_layer(380, 580, "Characters", obj_player2);
  instance_create_layer(360, 0, "Screens", screenObj);
  player2.bodyMap = instance_create_layer(360, 0, "BodyMaps", bodyMapObj);
  player2.bodyMap.sprite_index = spr_body_map_blue;
  player2.bodyMap.char = player2;
}
if (count >= 3) {
  // player 3
}
if (count >= 4) {
  // player 4
}


maxCount = 8;
minSpawnDistance = 120;
spawnX = 1350;
spawnYMin = 340;
spawnYMax = 680;
spawnChance = 0.004;

enemies = [obj_tentacle, obj_robot, obj_frank];
enemyCount = array_length_1d(enemies);

randomize();