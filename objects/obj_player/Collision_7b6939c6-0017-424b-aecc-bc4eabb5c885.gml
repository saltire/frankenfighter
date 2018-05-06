if (other.host == noone && other.slot == noone && other.selectingPlayer == noone) {
  if (swapPressed) {
    bodyMap.limb = other;
    other.selectingPlayer = self;
  }
  
  if (other != previewLimb) {
    hilightLimb = other;
    other.lastHilitePlayer = self;
  }
}