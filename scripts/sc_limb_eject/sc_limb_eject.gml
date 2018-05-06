///@param (limb)

//if (durabilityCurrent <= 0) {
//	durabilityCurrent = 0;
//}

var limb = argument0;

if (limb != noone) {
  limb.tossSpeedX = irandom_range(-10, 10);
  limb.tossSpeedY = -10 + irandom_range(-3, 3);
  limb.tossTargetY = (limb.host != noone ? limb.host.y : limb.y) + irandom_range(-15, 15);

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
  limb.image_speed = 0;
  limb.image_angle = 90;
  limb.sprite_index = limb.idleSprite;
  limb.depth = -limb.tossTargetY;
  limb.layer = layer_get_id("Objects");
}