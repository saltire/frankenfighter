event_inherited();


var ox = abs(sprite_xoffset);
var oy = sprite_yoffset;

frontArmX = 56 - ox;
frontArmY = 52 - oy;
backArmX = 88 - ox;
backArmY = 50 - oy;
frontLegX = 66 - ox;
frontLegY = 96 - oy;
backLegX = 86 - ox;
backLegY = 95 - oy;

headX = 74 - ox;
headY = 42 - oy;

leftArmObj = obj_robot_arm;
rightArmObj = obj_robot_arm;
leftLegObj = obj_robot_leg;
rightLegObj = obj_robot_leg;
headObj = obj_robot_head;

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

// Enemy values
walkSpeed = 1;