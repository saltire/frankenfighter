///@description INIT

// Set speeds
hspdMax = 3;
vspdMax = 3;

// Set starter limbs
rightArmX = -10;
rightArmY = -80;
rightArm = instance_create_layer(x+rightArmX, y+rightArmY, layer, obj_arm_01);

leftArmX = 40;
leftArmY = -85;
leftArm = instance_create_layer(x+leftArmX, y+leftArmY, layer, obj_arm_01);

rightLegX = -20;
rightLegY = 0;
rightLeg = instance_create_layer(x+rightLegX, y+rightLegY, layer, obj_leg_01);

leftLegX = 20;
leftLegY = -5;
leftLeg = instance_create_layer(x+leftLegX, y+leftLegY, layer, obj_leg_01);