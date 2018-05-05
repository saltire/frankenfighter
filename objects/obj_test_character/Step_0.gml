/// @description 

// Initialization
sc_player_input(0, vk_right, vk_left, vk_down, vk_up, vk_lshift);

if (limbSwap != noone) {
  sc_limb_swap_select();
}
else {
  sc_player_movement();
}

// Depth increase as y decreases
depth = -y;

// Limb Handling
sc_limb_handling(rightArm, rightArmX, rightArmY, -2);
sc_limb_handling(rightLeg, rightLegX, rightLegY, -1);
sc_limb_handling(leftLeg, leftLegX, leftLegY, 1);
sc_limb_handling(leftArm, leftArmX, leftArmY, 2);