///@description INIT

// Set speeds
hspdMax = 3;
vspdMax = 3;

limbSwap = noone;

//attackCooldown = 20;
attackCooldownRemaining = 0;

debug(sprite_xoffset, sprite_yoffset);

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

// Create map
bodyMap = instance_create_layer(mapX, mapY, "BodyMaps", obj_body_map);

// Set starter limbs
rightArm = instance_create_layer(x, y, layer, rightArmObj);
rightArm.parent = self;
bodyMap.filledSlots[0] = true;

leftArm = instance_create_layer(x, y, layer, leftArmObj);
leftArm.parent = self;
bodyMap.filledSlots[1] = true;

rightLeg = instance_create_layer(x, y, layer, rightLegObj);
rightLeg.parent = self;
bodyMap.filledSlots[2] = true;

leftLeg = instance_create_layer(x, y, layer, leftLegObj);
leftLeg.parent = self;
bodyMap.filledSlots[3] = true;
