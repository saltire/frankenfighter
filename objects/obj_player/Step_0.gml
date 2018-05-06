event_inherited();

// Initialization
sc_player_input();

if (bodyMap.limb != noone) {
  sc_limb_swap_select();
  
  if (swapReleased) {
    sc_limb_swap();
    bodyMap.limb = noone;
  }
}
else {
  sc_player_movement();
  sc_player_attack();
}

if (previewLimb != noone) {
  sc_limb_place(previewLimb);
}

// Reset this every turn before collision events
hilightLimb = noone;


// Vibration handling
if (leftArm != noone) {
	if (leftArm.hitFeedbackTimeRemaining > 0) gamepad_set_vibration(joy, 1, 1);
	if (leftArm.hitFeedbackTimeRemaining <= 0) gamepad_set_vibration(joy, 0, 0)
}
if (rightArm != noone) {
	if (rightArm.hitFeedbackTimeRemaining > 0) gamepad_set_vibration(joy, 1, 1);
	if (rightArm.hitFeedbackTimeRemaining <= 0) gamepad_set_vibration(joy, 0, 0)
}
if (leftLeg != noone) {
	if (leftLeg.hitFeedbackTimeRemaining > 0) gamepad_set_vibration(joy, 1, 1);
	if (leftLeg.hitFeedbackTimeRemaining <= 0) gamepad_set_vibration(joy, 0, 0)
}
if (rightLeg != noone) {
	if (rightLeg.hitFeedbackTimeRemaining > 0) gamepad_set_vibration(joy, 1, 1);
	if (rightLeg.hitFeedbackTimeRemaining <= 0) gamepad_set_vibration(joy, 0, 0)
}

if (leftArm == noone && rightArm == noone && leftLeg == noone && rightLeg == noone) {
	gamepad_set_vibration(joy, 0, 0);
}