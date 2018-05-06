event_inherited();

var inst = instance_create_layer(x, y, layer, obj_rockets);
inst.host = self;

// Set speeds
hspdMax = 3;
vspdMax = 3;

var ox = abs(sprite_xoffset);
var oy = sprite_yoffset;

frontArmX = 58 - ox;
frontArmY = 54 - oy;
backArmX = 90 - ox;
backArmY = 52 - oy;
frontLegX = 66 - ox;
frontLegY = 100 - oy;
backLegX = 85 - ox;
backLegY = 98 - oy;
headX = 76 - ox;
headY = 39 - oy;

// Create map
limbSwap = noone;
hilightLimb = noone;
hilightColor = c_white;
previewLimb = noone;

// Set starter limbs
rightArm = sc_limb_add(rightArmObj, 0);
leftArm = sc_limb_add(leftArmObj, 1);
rightLeg = sc_limb_add(rightLegObj, 2);
leftLeg = sc_limb_add(leftLegObj, 3);
head = sc_limb_add(headObj, 4);


shadowInstance = instance_create_depth(x, y, depth, obj_shadow);
shadowInstance.host = self;