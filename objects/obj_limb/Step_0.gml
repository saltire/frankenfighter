if (attackTimeRemaining > 0) {
  attackTimeRemaining -= 1;
  
  if (attackTimeRemaining = 0) {
    attacking = false;
  }
}

if (hitFeedbackTimeRemaining > 0) {
  hitFeedbackTimeRemaining -= 1;
}

if (tossSpeedX != 0) {
  // Flying through the air
  tossSpeedY += grav;
  x += tossSpeedX;
  y += tossSpeedY;
  
  if (y >= tossTargetY) {
    // Hit the ground
    tossSpeedX = 0;
    tossSpeedY = 0;
    
    if (durabilityCurrent <= 0) {
      instance_destroy();
    }
  }
}

// Limb loss when no durability remaining
if (host && durabilityCurrent <= 0) {
	durabilityCurrent = 0;
	sc_limb_eject(self);
}


// Attack collision function call
sc_attack_collision();