if (swapPressed) {
  swap = instance_create_layer(0, 0, "UI", obj_body_menu);
}
if (swapReleased) {
  instance_destroy(swap);
  swap = noone;
}