if (limbSwap.slot != noone) {
  var oldLimb;
  var newLimb = limbSwap.limb;
  
  if (limbSwap.slot == 0) {
    oldLimb = rightArm;
    rightArm = newLimb;
  }
  else if (limbSwap.slot == 1) {
    oldLimb = leftArm;
    leftArm = newLimb;
  }
  else if (limbSwap.slot == 2) {
    oldLimb = rightLeg;
    rightLeg = newLimb;
  }
  else if (limbSwap.slot == 3) {
    oldLimb = leftLeg;
    leftLeg = newLimb;
  }
    
  oldLimb.parent = noone;
  oldLimb.x = newLimb.x;
  oldLimb.y = newLimb.y;
  oldLimb.image_angle = 90;
  oldLimb.layer = layer_get_id("Objects");
    
  newLimb.parent = self;
  newLimb.image_angle = 0;
  newLimb.layer = layer_get_id("Characters");
}