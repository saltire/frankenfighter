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