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
rightArm = instance_create_layer(x, y, layer, rightArmObj);
rightArm.host = self;
rightArm.slot = 0;

leftArm = instance_create_layer(x, y, layer, leftArmObj);
leftArm.host = self;
leftArm.slot = 1;

rightLeg = instance_create_layer(x, y, layer, rightLegObj);
rightLeg.host = self;
rightLeg.slot = 2;

leftLeg = instance_create_layer(x, y, layer, leftLegObj);
leftLeg.host = self;
leftLeg.slot = 3;

head = instance_create_layer(x, y, layer, headObj);
head.host = self;
head.slot = 4;
