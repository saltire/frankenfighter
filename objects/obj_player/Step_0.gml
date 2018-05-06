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