/// @description 

// Initialization
sc_player_movement(0, vk_right, vk_left, vk_down, vk_up);

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

x += hspd;

// Collision checks vertical
if (place_meeting(x, y + vspd, obj_wall)) {
	while (!place_meeting(x, y + sign(vspd), obj_wall)) {
		y += sign(vspd);
	}
	vspd = 0;
}

y += vspd;


depth = -y;

if (instance_exists(rightArm)) {
	sc_limb_handling(rightArm, rightArmX, rightArmY, -1);
}