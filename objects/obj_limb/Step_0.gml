if (attackTimeRemaining > 0) {
  attackTimeRemaining -= 1;
  
  if (attackTimeRemaining = 0) {
    sprite_index = idleSprite;
  }
}

if (tossSpeedX != 0) {
  tossSpeedY += grav;
  x += tossSpeedX;
  y += tossSpeedY;
  
  if (y >= tossTargetY) {
    tossSpeedX = 0;
    tossSpeedY = 0;
  }
}

// Limb loss when no durability remaining
if (parent && durabilityCurrent <= 0) {
	sc_limb_eject(self);
}


// Attack collision function call
sc_attack();