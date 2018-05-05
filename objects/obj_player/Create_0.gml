///@description INIT

// Set speeds
hspdMax = 3;
vspdMax = 3;

limbSwap = noone;

attackCooldown = 20;
attackCooldownRemaining = 0;

frontArmX = 58 - 80;
frontArmY = 54 - 200;
backArmX = 90 - 80;
backArmY = 52 - 200;
frontLegX = 66 - 80;
frontLegY = 100 - 200;
backLegX = 85 - 80;
backLegY = 98 - 200;

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
