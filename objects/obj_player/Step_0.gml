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
  
  if (attackCooldownRemaining <= 0) {
    if (lPunchPressed && leftArm != noone) {
      sc_limb_attack(leftArm);
    }
    else if (rPunchPressed && rightArm != noone) {
      sc_limb_attack(rightArm);
    }
    else if (lKickPressed && leftLeg != noone) {
      sc_limb_attack(leftLeg);
    }
    else if (rKickPressed && rightLeg != noone) {
      sc_limb_attack(rightLeg);
    }
  }
}

event_inherited();

if (previewLimb != noone) {
  sc_limb_place(previewLimb);
}

if (durabilityCurrent <= 0) {
	
	sc_limb_eject(leftArm);
	sc_limb_eject(rightArm);
	sc_limb_eject(leftLeg);
	sc_limb_eject(rightLeg);
	
	durabilityCurrent = durabilityMax;
}