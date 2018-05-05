if (bodyMap.slot != noone) {
  var oldLimb;
  var newLimb = bodyMap.limb;
  
  if (bodyMap.slot == 0) {
    oldLimb = rightArm;
    rightArm = newLimb;
  }
  else if (bodyMap.slot == 1) {
    oldLimb = leftArm;
    leftArm = newLimb;
  }
  else if (bodyMap.slot == 2) {
    oldLimb = rightLeg;
    rightLeg = newLimb;
  }
  else if (bodyMap.slot == 3) {
    oldLimb = leftLeg;
    leftLeg = newLimb;
  }
  
  bodyMap.slot = noone;
  bodyMap.limb = noone;
    
  oldLimb.parent = noone;
  //oldLimb.x = newLimb.x;
  //oldLimb.y = newLimb.y;
  oldLimb.image_angle = 90;
  //oldLimb.image_xscale = 1;
  oldLimb.sprite_index = oldLimb.idleSprite;
  oldLimb.depth = -oldLimb.y;
  oldLimb.layer = layer_get_id("Objects");
  oldLimb.tossSpeedX = -10 * image_xscale;
  oldLimb.tossSpeedY = -10;
  oldLimb.tossTargetY = y;
    
  newLimb.parent = self;
  newLimb.image_angle = 0;
  newLimb.layer = layer_get_id("Characters");
}