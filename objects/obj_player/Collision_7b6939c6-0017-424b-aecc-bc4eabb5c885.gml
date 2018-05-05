if (swapPressed && other.parent == noone) {
  limbSwap = instance_create_layer(0, 0, "UI", obj_body_menu);
  limbSwap.limb = other;
}