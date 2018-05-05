// Set speed based on input
var hspd = hspdMax * hInput;
var vspd = vspdMax * vInput;

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
