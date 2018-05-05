///@description INIT

// Set speeds
hspdMax = 3;
vspdMax = 3;

limbSwap = noone;

leftArmObj = obj_arm_stick_green;
rightArmObj = obj_arm_stick_yellow;
leftLegObj = obj_leg_stick_red;
rightLegObj = obj_leg_stick_blue;

// Set starter limbs
rightArmX = 0;
rightArmY = 0;
rightArm = instance_create_layer(x+rightArmX, y+rightArmY, layer, rightArmObj);
rightArm.parent = self;

leftArmX = 0;
leftArmY = 0;
leftArm = instance_create_layer(x+leftArmX, y+leftArmY, layer, leftArmObj);
leftArm.parent = self;

rightLegX = 0;
rightLegY = 0;
rightLeg = instance_create_layer(x+rightLegX, y+rightLegY, layer, rightLegObj);
rightLeg.parent = self;

leftLegX = 0;
leftLegY = 0;
leftLeg = instance_create_layer(x+leftLegX, y+leftLegY, layer, leftLegObj);
leftLeg.parent = self;