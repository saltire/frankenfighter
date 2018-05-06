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
    var char = instance_create_layer(spawnX, spawnY, "Characters", enemies[irandom(enemyCount - 1)]);
    with (char) {
      if (random(1) < other.randomLimbChance) {
        instance_destroy(rightArm);
        rightArm = sc_limb_add(other.randomArms[irandom(other.armCount - 1)], 0);
      }
      if (random(1) < other.randomLimbChance) {
        instance_destroy(leftArm);
        leftArm = sc_limb_add(other.randomArms[irandom(other.armCount - 1)], 1);
      }
      if (random(1) < other.randomLimbChance) {
        instance_destroy(rightLeg);
        rightLeg = sc_limb_add(other.randomLegs[irandom(other.legCount - 1)], 2);
      }
      if (random(1) < other.randomLimbChance) {
        instance_destroy(leftLeg);
        leftLeg = sc_limb_add(other.randomLegs[irandom(other.legCount - 1)], 3);
      }
      if (head != noone && random(1) < other.randomLimbChance) {
        instance_destroy(head);
        head = sc_limb_add(other.randomHeads[irandom(other.headCount - 1)], 4);
      }
    }
  }
}