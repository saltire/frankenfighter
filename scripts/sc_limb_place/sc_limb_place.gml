///@param limb,xOffset,yOffset,depth

var limb = argument0;
var xOffset = argument1;
var yOffset = argument2;
var relDepth = argument3;

if instance_exists(limb) {
  limb.x = x + xOffset * image_xscale;
  limb.y = y + yOffset;
  limb.depth = depth + relDepth * image_xscale;
  limb.image_xscale = image_xscale;
}