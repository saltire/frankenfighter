///@param limbObj,slot

var limbObj = argument0;
var slot = argument1;

var limb = instance_create_layer(x, y, layer, limbObj);
limb.host = self;
limb.slot = slot;

return limb;