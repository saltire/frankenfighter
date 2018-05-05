//bodyMap.slot = noone;

//if (hInput < 0 && vInput < 0) {
if (rPunchPressed) {
	bodyMap.slot = 0;
  bodyMap.limb.sprite_index = rightArm.idleSprite;
  
  rightArm.sprite_index = bodyMap.limb.idleSprite;
  leftArm.sprite_index = leftArm.idleSprite;
  rightLeg.sprite_index = rightLeg.idleSprite;
  leftLeg.sprite_index = leftLeg.idleSprite;
}
//else if (hInput > 0 && vInput < 0) {
else if (lPunchPressed) {
	bodyMap.slot = 1;
  bodyMap.limb.sprite_index = leftArm.idleSprite;
  
  rightArm.sprite_index = rightArm.idleSprite;
  leftArm.sprite_index = bodyMap.limb.idleSprite;
  rightLeg.sprite_index = rightLeg.idleSprite;
  leftLeg.sprite_index = leftLeg.idleSprite;
}
//else if (hInput < 0 && vInput > 0) {
else if (rKickPressed) {
	bodyMap.slot = 2;
  bodyMap.limb.sprite_index = rightLeg.idleSprite;
  
  rightArm.sprite_index = rightArm.idleSprite;
  leftArm.sprite_index = leftArm.idleSprite;
  rightLeg.sprite_index = bodyMap.limb.idleSprite;
  leftLeg.sprite_index = leftLeg.idleSprite;
}
//else if (hInput > 0 && vInput > 0) {
else if (lKickPressed) {
	bodyMap.slot = 3;
  bodyMap.limb.sprite_index = leftLeg.idleSprite;
  
  rightArm.sprite_index = rightArm.idleSprite;
  leftArm.sprite_index = leftArm.idleSprite;
  rightLeg.sprite_index = rightLeg.idleSprite;
  leftLeg.sprite_index = bodyMap.limb.idleSprite;
}