x = host.x;
y = host.y;

depth = host.depth - 1;
image_xscale = host.image_xscale;

if (host.leftLeg == noone && host.rightLeg == noone) {
	image_alpha = 1;
} else {
	image_alpha = 0;
}