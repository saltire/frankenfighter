/// @description 

// Initialization
sc_player_movement(keyboard_check(vk_right), keyboard_check(vk_left), keyboard_check(vk_down), keyboard_check(vk_up));

// Set speed based on input
hspd = hspdMax * (keyRight + keyLeft);
vspd = vspdMax * (keyDown + keyUp);

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