if (instance_exists(previewLimb)) {
  instance_destroy(previewLimb);
  previewLimb = noone;
}

if (instance_exists(bodyMap.limb)) {
  bodyMap.limb.selectingPlayer = noone;
  
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
  
    if (oldLimb != noone) {
  	  oldLimb.image_alpha = 1;
    }
  
    sc_limb_eject(oldLimb);
    
    newLimb.host = self;
    newLimb.slot = bodyMap.slot;
    newLimb.image_angle = 0;
    newLimb.image_alpha = 1;
    newLimb.attacking = false;
    newLimb.layer = layer_get_id("Characters");
  
    bodyMap.slot = noone;
    bodyMap.limb = noone;
  }
}