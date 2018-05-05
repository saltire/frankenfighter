/// @description 

// Initialization
sc_player_input(0, vk_right, vk_left, vk_down, vk_up, vk_lshift);

if (limbSwap != noone) {
  sc_limb_swap_select();
  
  if (swapReleased) {
    sc_limb_swap();
    
    instance_destroy(limbSwap);
    limbSwap = noone;
  }
}
else {
  sc_player_movement();
}

// Depth increase as y decreases
depth = -y;

// Limb Handling
if (image_xscale == 1) {
  sc_limb_place(rightArm, frontArmX, frontArmY, 2);
  sc_limb_place(rightLeg, frontLegX, frontLegY, 1);
  sc_limb_place(leftLeg, backLegX, backLegY, -1);
  sc_limb_place(leftArm, backArmX, backArmY, -2);
}
else {
  sc_limb_place(leftArm, frontArmX, frontArmY, -2);
  sc_limb_place(leftLeg, frontLegX, frontLegY, -1);
  sc_limb_place(rightLeg, backLegX, backLegY, 1);
  sc_limb_place(rightArm, backArmX, backArmY, 2);
}