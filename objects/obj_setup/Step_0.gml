var count = 0;

for (var i = 0; i < instance_count; i++) {
  var inst = instance_id_get(i);
  if (instance_exists(inst) && object_is_ancestor(inst.object_index, obj_enemy)) {
    count++;
  }
}
    

if (count < maxCount && random(1) < spawnChance) {
  var spawnY = irandom_range(spawnYMin, spawnYMax);
  
  var nearestChar = instance_nearest(spawnX, spawnY, obj_char);
  if (point_distance(spawnX, spawnY, nearestChar.x, nearestChar.y) > minSpawnDistance) {
    instance_create_layer(spawnX, spawnY, "Characters", enemies[irandom(enemyCount - 1)]);
  }
}