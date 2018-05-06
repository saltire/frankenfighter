draw_self();

// draw an icon for each limb that is attached
if (char.rightArm != noone) {
  draw_sprite(
    object_is_ancestor(char.rightArm.object_index, obj_limb_arm) ?  spr_icon_arm : spr_icon_leg, 
      0, x + rightArmX, y + rightArmY);
}
if (char.leftArm != noone) {
  draw_sprite(
    object_is_ancestor(char.leftArm.object_index, obj_limb_arm) ?  spr_icon_arm : spr_icon_leg, 
      0, x + leftArmX, y + leftArmY);
}
if (char.rightLeg != noone) {
  draw_sprite(
    object_is_ancestor(char.rightLeg.object_index, obj_limb_arm) ?  spr_icon_arm : spr_icon_leg, 
      0, x + rightLegX, y + rightLegY);
}
if (char.leftLeg != noone) {
  draw_sprite(
    object_is_ancestor(char.leftLeg.object_index, obj_limb_arm) ?  spr_icon_arm : spr_icon_leg, 
      0, x + leftLegX, y + leftLegY);
}
  
//for (var s = 0; s < 4; s++) {
//  if (slot == s) {
//    // draw an icon on the currently selected slot during a swap
//    draw_sprite(spr_body_select, 0, x + coord[0], y + coord[1]);
//  }
//}