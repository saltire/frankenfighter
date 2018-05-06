var nearestPlayer = instance_nearest(x, y, obj_player);
var nearestDir = point_direction(x, y, nearestPlayer.x, nearestPlayer.y);

var stop = false;

for (var i = 0; i < instance_count; i++) {
  var inst = instance_id_get(i);
  if (
    inst != id &&
    object_is_ancestor(inst.object_index, obj_char) && 
    (abs(angle_difference(point_direction(x, y, inst.x, inst.y), nearestDir)) < 90) &&
    (point_distance(x, y, inst.x, inst.y) < minDistance)
  ) {
    stop = true;
    break;
  }
}

if (!stop) {
  var walkDir = nearestDir + irandom_range(-40, 40);
  var dx = lengthdir_x(walkSpeed, walkDir);
  var dy = lengthdir_y(walkSpeed, walkDir);
  var destX = x + dx;
  var destY = y + dy;

  image_xscale = sign(lengthdir_x(1, nearestDir));
  x = destX;
  y = destY;
  
  depth = -y;
}

event_inherited();