///@param (limb)

var limb = argument0;

limb.tossSpeedX = -10 * image_xscale;
limb.tossSpeedY = -10;
limb.tossTargetY = limb.parent.y;

if (limb.parent.leftLeg == limb) {
	limb.parent.leftLeg = noone;
}
if (limb.parent.rightLeg == limb) {
	limb.parent.rightLeg = noone;
}
if (limb.parent.leftArm == limb) {
	limb.parent.leftArm = noone;
}
if (limb.parent.rightArm == limb) {
	limb.parent.rightArm = noone;
}

limb.parent = noone;
limb.image_angle = 90;
limb.sprite_index = limb.idleSprite;
limb.depth = -limb.y;
limb.layer = layer_get_id("Objects");