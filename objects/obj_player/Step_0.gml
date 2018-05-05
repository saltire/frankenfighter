/// @description 

// Initialization
sc_player_input();

if (attackCooldownRemaining > 0) {
  attackCooldownRemaining -= 1;
}

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

// Limb Handling
sc_limb_place(rightArm);
sc_limb_place(leftArm);
sc_limb_place(rightLeg);
sc_limb_place(leftLeg);

if (previewLimb != noone) {
  sc_limb_place(previewLimb);
}