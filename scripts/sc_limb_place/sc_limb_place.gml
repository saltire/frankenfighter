///@param limb,xOffset,yOffset,depth

instance_exists(argument0) {
  argument0.x = x + argument1 * image_xscale;
  argument0.y = y + argument2;
  argument0.depth = depth + argument3 * image_xscale;
  argument0.image_xscale = image_xscale;
}