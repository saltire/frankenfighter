///@description INIT

// Set speeds
hspdMax = 3;
vspdMax = 3;

// Set starter limbs
rightArmX = -10;
rightArmY = -40;
rightArm = instance_create_layer(x+rightArmX, y+rightArmY, layer, obj_arm_01);

// add left arm and legs