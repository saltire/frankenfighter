var h = gamepad_axis_value(0, gp_axislh);
var v = gamepad_axis_value(0, gp_axislv);

slot = noone;

if (h < -axismin && v < -axismin) {
	slot = 0;
}
else if (h > axismin && v < -axismin) {
	slot = 1;
}
else if (h < -axismin && v > axismin) {
	slot = 2;
}
else if (h > axismin && v > axismin) {
	slot = 3;
}