if (swapPressed) {
  limbSwap = instance_create_layer(0, 0, "UI", obj_body_menu);
}
if (swapReleased) {
  instance_destroy(limbSwap);
  limbSwap = noone;
}
