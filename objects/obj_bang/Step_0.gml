if (image_index == image_number - 1) {
	image_speed = 0;
	image_index = image_number - 1;
	image_alpha -= 0.05;
}

if (image_alpha <= 0) {
	image_alpha = 0;
	instance_destroy();
}