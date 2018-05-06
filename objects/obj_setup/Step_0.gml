if (random(1) < spawnChance) {
  var spawnY = irandom_range(spawnYMin, spawnYMax);
  
  var nearestChar = instance_nearest(spawnX, spawnY, obj_char);
  if (point_distance(spawnX, spawnY, nearestChar.x, nearestChar.y) > minSpawnDistance) {
    instance_create_layer(spawnX, spawnY, "Characters", enemies[irandom(enemyCount - 1)]);
  }
}