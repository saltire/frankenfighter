event_inherited();


var nearestPlayer = instance_nearest(x, y, obj_player);
var nearestDir = point_direction(x, y, nearestPlayer.x, nearestPlayer.y);
var nearestDist = point_distance(x, y, nearestPlayer.x, nearestPlayer.y);


// Move toward player

var stop = false;

if (attackCooldownRemaining > 0) {
  stop = true;
}
else {
  for (var i = 0; i < instance_count; i++) {
    var inst = instance_id_get(i);
    if (
      inst != id && instance_exists(inst) && 
      object_is_ancestor(inst.object_index, obj_char) && 
      (abs(angle_difference(point_direction(x, y, inst.x, inst.y), nearestDir)) < 90) &&
      (point_distance(x, y, inst.x, inst.y) < minDistance)
    ) {
      stop = true;
      break;
    }
  }
  
  image_xscale = sign(lengthdir_x(1, nearestDir));
}

if (stop) {
  walking = false;
}
else {
  if (!walking) {
    walking = true;
    walkDelayRemaining = walkDelay;
  }
  if (walkDelayRemaining > 0) {
    walkDelayRemaining -= 1;
  }
  else {
    var walkDir = nearestDir + irandom_range(-40, 40);
    var dx = lengthdir_x(walkSpeed, walkDir);
    var dy = lengthdir_y(walkSpeed, walkDir);
    var destX = x + dx;
    var destY = y + dy;

    x = destX;
    y = destY;
  
    depth = -y;
  }
}

sc_char_walk_cycle(!stop, 0.33);


// Attack player

if (attackCooldownRemaining <= 0 && nearestDist <= maxAttackDist) {
  var limbs = [];
  var count = 0;
  
  if (rightArm != noone) {
    limbs[0] = rightArm;
    count++;
  }
  if (leftArm != noone) {
    limbs[count] = leftArm;
    count++;
  }
  if (rightLeg != noone) {
    limbs[count] = rightLeg;
    count++;
  }
  if (leftLeg != noone) {
    limbs[count] = leftLeg;
    count++;
  }
  
  if (count > 0) {
    var limb = limbs[irandom(count - 1)];
    sc_limb_attack(limb);
  }
}
