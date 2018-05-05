/// @description 

// Initialization
sc_player_input(0, vk_right, vk_left, vk_down, vk_up, vk_space);

if (swap == noone) {
  // Set speed based on input
  hspd = hspdMax * hInput;
  vspd = vspdMax * vInput;

  // Collision checks horizontal
  if (place_meeting(x + hspd, y, obj_wall)) {
  	while (!place_meeting(x + sign(hspd), y, obj_wall)) {
  		x += sign(hspd);
  	}
  	hspd = 0;
  }

  // Move x position by horizontal speed
  x += hspd;

  // Collision checks vertical
  if (place_meeting(x, y + vspd, obj_wall)) {
  	while (!place_meeting(x, y + sign(vspd), obj_wall)) {
  		y += sign(vspd);
  	}
  	vspd = 0;
  }


  // Move y position by vertical speed
  y += vspd;

  // Image flip based on left or right input
  if (hspd != 0) {
    image_xscale = sign(hspd);
  }
}

// Depth increase as y decreases
depth = -y;

// Limb Handling
if (instance_exists(rightArm)) {
	sc_limb_handling(rightArm, rightArmX, rightArmY, -2);
}
if (instance_exists(leftArm)) {
	sc_limb_handling(leftArm, leftArmX, leftArmY, 2);
}
if (instance_exists(rightLeg)) {
	sc_limb_handling(rightLeg, rightLegX, rightLegY, -1);
}
if (instance_exists(leftLeg)) {
	sc_limb_handling(leftLeg, leftLegX, leftLegY, 1);
}