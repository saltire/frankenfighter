for (i = 0; i < 4; i++) {

	var leading = 20;

	if (gamepad_is_connected(i)) {
		draw_text(x, y + (leading * i), "Controller " + string(i+1) + " is connected.");
	} else {
		draw_text(x, y + (leading * i), "Controller " + string(i+1) + " is NOT connected.");
	}
	
}