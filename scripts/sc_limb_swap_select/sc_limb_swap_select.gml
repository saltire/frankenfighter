//bodyMap.slot = noone;

if (rPunchPressed || lPunchPressed || rKickPressed || lKickPressed) {
  bodyMap.limb.attacking = false;
  bodyMap.limb.image_alpha = 1;
  
  if (rightArm != noone) rightArm.image_alpha = 1;
  if (leftArm != noone) leftArm.image_alpha = 1;
  if (rightLeg != noone) rightLeg.image_alpha = 1;
  if (leftLeg != noone) leftLeg.image_alpha = 1;
  
  if (previewLimb != noone) {
    instance_destroy(previewLimb);
  }
  previewLimb = instance_create_layer(x, y, "Characters", bodyMap.limb.object_index);
  previewLimb.lastHilitePlayer = self;
}

//if (hInput < 0 && vInput < 0) {
if (rPunchPressed) {
	bodyMap.slot = 0;
  previewLimb.slot = 0;
  
  if (rightArm != noone) {
    bodyMap.limb.attacking = false;
    rightArm.image_alpha = 0;
  }
  else {
    bodyMap.limb.image_alpha = 0;
  }
}
//else if (hInput > 0 && vInput < 0) {
else if (lPunchPressed) {
	bodyMap.slot = 1;
  previewLimb.slot = 1;
  
  if (leftArm != noone) {
    bodyMap.limb.attacking = false;
    leftArm.image_alpha = 0;
  }
  else {
    bodyMap.limb.image_alpha = 0;
  }
}
//else if (hInput < 0 && vInput > 0) {
else if (rKickPressed) {
	bodyMap.slot = 2;
  previewLimb.slot = 2;
  
  if (rightLeg != noone) {
    bodyMap.limb.attacking = false;
    rightLeg.image_alpha = 0;
  }
  else {
    bodyMap.limb.image_alpha = 0;
  }
}
//else if (hInput > 0 && vInput > 0) {
else if (lKickPressed) {
	bodyMap.slot = 3;
  previewLimb.slot = 3;
  
  if (leftLeg != noone) {
    bodyMap.limb.attacking = false;
    leftLeg.image_alpha = 0;
  }
  else {
    bodyMap.limb.image_alpha = 0;
  }
}