bodyMap.slot = noone;

if (hInput < 0 && vInput < 0) {
	bodyMap.slot = 0;
}
else if (hInput > 0 && vInput < 0) {
	bodyMap.slot = 1;
}
else if (hInput < 0 && vInput > 0) {
	bodyMap.slot = 2;
}
else if (hInput > 0 && vInput > 0) {
	bodyMap.slot = 3;
}