if (bodyMap.limb == noone && other.host == noone && other.slot == noone && other.selectingPlayer == noone && other.tossSpeedX == 0) {
  if (swapPressed) {
    bodyMap.limb = other;
    other.selectingPlayer = self;
  }
  
  if (other != previewLimb) {
    hilightLimb = other;
    other.lastHilitePlayer = self;
  }
}