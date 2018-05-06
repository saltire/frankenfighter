var speedMod = 0;
if (leftLeg != noone) speedMod += leftLeg.speedBonus;
if (rightLeg != noone) speedMod += rightLeg.speedBonus;

// Set speed based on input
var hspd = (hspdMax + speedMod) * hInput;
var vspd = (vspdMax + speedMod) * vInput;

if (attackCooldownRemaining > 0) {
  hspd = 0;
  vspd = 0;
}

// Collision checks horizontal
if (place_meeting(x + hspd, y, obj_wall)) {
  while (!place_meeting(x + sign(hspd), y, obj_wall)) {
  	x += sign(hspd);
  }
  hspd = 0;
}

// Collision checks vertical
if (place_meeting(x, y + vspd, obj_wall)) {
  while (!place_meeting(x, y + sign(vspd), obj_wall)) {
  	y += sign(vspd);
  }
  vspd = 0;
}

// Move x/y position by h/v speed
x += hspd;
y += vspd;

// Image flip based on left or right input
if (hspd != 0) {
  image_xscale = sign(hspd);
}

// Depth increase as y decreases
depth = -y;


sc_char_walk_cycle(hspd != 0 || vspd != 0, 1);