if (other.host == noone) {
  if (swapPressed) {
    bodyMap.limb = other;
  }
  
  if (other != previewLimb) {
    hilightLimb = other;
    other.lastHilitePlayer = self;
  }
}