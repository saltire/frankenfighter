///@description INIT

// Set speeds
hspdMax = 3;
vspdMax = 3;

limbSwap = noone;

leftArmObj = obj_arm_stick_green;
rightArmObj = obj_arm_stick_yellow;
leftLegObj = obj_leg_stick_red;
rightLegObj = obj_leg_stick_blue;

frontArmX = 0;
frontArmY = 0;
backArmX = 35;
backArmY = -3;
frontLegX = 0;
frontLegY = 0;
backLegX = 20;
backLegY = -3;

// Set starter limbs
rightArm = instance_create_layer(x, y, layer, rightArmObj);
rightArm.parent = self;

leftArm = instance_create_layer(x, y, layer, leftArmObj);
leftArm.parent = self;

rightLeg = instance_create_layer(x, y, layer, rightLegObj);
rightLeg.parent = self;

leftLeg = instance_create_layer(x, y, layer, leftLegObj);
leftLeg.parent = self;