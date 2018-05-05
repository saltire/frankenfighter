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
  
  sc_limb_eject(oldLimb);
    
  newLimb.parent = self;
  newLimb.image_angle = 0;
  newLimb.sprite_index = newLimb.idleSprite;
  newLimb.layer = layer_get_id("Characters");
}