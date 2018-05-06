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
rightArm = sc_limb_add(rightArmObj, 0);
leftArm = sc_limb_add(leftArmObj, 1);
rightLeg = sc_limb_add(rightLegObj, 2);
leftLeg = sc_limb_add(leftLegObj, 3);
head = sc_limb_add(headObj, 4);

// Enemy values
walkSpeed = 1;