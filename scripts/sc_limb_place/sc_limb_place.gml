///@param limb

var limb = argument0;

var offsetX = 0;
var offsetY = 0;
var relDepth = 0;

if instance_exists(limb) {
  var flip = (image_xscale == -1);
  if (limb.slot == 0) {
    offsetX = flip ? backArmX : frontArmX;
    offsetY = flip ? backArmY : frontArmY;
    relDepth = flip ? 2 : -2;
  }
  else if (limb.slot == 1) {
    offsetX = flip ? frontArmX : backArmX;
    offsetY = flip ? frontArmY : backArmY;
    relDepth = flip ? -2 : 2;
  }
  else if (limb.slot == 2) {
    offsetX = flip ? backLegX : frontLegX;
    offsetY = flip ? backLegY : frontLegY;
    relDepth = flip ? 1 : -1;
  }
  else if (limb.slot == 3) {
    offsetX = flip ? frontLegX : backLegX;
    offsetY = flip ? frontLegY : backLegY;
    relDepth = flip ? -1 : 1;
  }
  
  limb.x = x + offsetX * image_xscale;
  limb.y = y + offsetY;
  limb.depth = depth + relDepth;
  limb.image_xscale = image_xscale;
  limb.image_angle = 0;
}