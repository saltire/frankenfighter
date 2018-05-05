limbSwap.slot = noone;

if (hInput < 0 && vInput < 0) {
	limbSwap.slot = 0;
}
else if (hInput > 0 && vInput < 0) {
	limbSwap.slot = 1;
}
else if (hInput < 0 && vInput > 0) {
	limbSwap.slot = 2;
}
else if (hInput > 0 && vInput > 0) {
	limbSwap.slot = 3;
}