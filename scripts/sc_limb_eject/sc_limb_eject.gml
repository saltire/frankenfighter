///@param (limb)

if (durabilityCurrent <= 0) {
	durabilityCurrent = 0;
}

var limb = argument0;

if (limb != noone) {
  limb.tossSpeedX = -10 * image_xscale;
  limb.tossSpeedY = -10;
  limb.tossTargetY = limb.host.y;

  if (limb.host.leftLeg == limb) {
  	limb.host.leftLeg = noone;
  }
  if (limb.host.rightLeg == limb) {
  	limb.host.rightLeg = noone;
  }
  if (limb.host.leftArm == limb) {
  	limb.host.leftArm = noone;
  }
  if (limb.host.rightArm == limb) {
  	limb.host.rightArm = noone;
  }

  limb.host = noone;
  limb.slot = noone;
  limb.image_angle = 90;
  limb.sprite_index = limb.idleSprite;
  limb.depth = -limb.y;
  limb.layer = layer_get_id("Objects");
}