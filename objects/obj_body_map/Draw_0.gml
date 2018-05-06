draw_self();

// draw an icon for each limb that is attached
if (char.rightArm != noone || slot == 0) {
  var obj0 = slot == 0 ? limb : char.rightArm;
  draw_sprite_ext(
    object_is_ancestor(obj0.object_index, obj_limb_arm) ? spr_icon_arm : spr_icon_leg, 
      0, x + rightArmX, y + rightArmY, 1, 1, 0, slot == 0 ? c_red : c_white, 1);
}
if (char.leftArm != noone || slot == 1) {
  var obj1 = slot == 1 ? limb : char.leftArm;
  draw_sprite_ext(
    object_is_ancestor(obj1.object_index, obj_limb_arm) ? spr_icon_arm : spr_icon_leg, 
      0, x + leftArmX, y + leftArmY, -1, 1, 0, slot == 1 ? c_red : c_white, 1);
}
if (char.rightLeg != noone || slot == 2) {
  var obj2 = slot == 2 ? limb : char.leftArm;
  draw_sprite_ext(
    object_is_ancestor(obj2.object_index, obj_limb_arm) ? spr_icon_arm : spr_icon_leg, 
      0, x + rightLegX, y + rightLegY, 1, 1, 0, slot == 2 ? c_red : c_white, 1);
}
if (char.leftLeg != noone || slot == 3) {
  var obj3 = slot == 3 ? limb : char.leftArm;
  draw_sprite_ext(
    object_is_ancestor(obj3.object_index, obj_limb_arm) ? spr_icon_arm : spr_icon_leg, 
      0, x + leftLegX, y + leftLegY, -1, 1, 0, slot == 3 ? c_red : c_white, 1);
}
  
//for (var s = 0; s < 4; s++) {
//  if (slot == s) {
//    // draw an icon on the currently selected slot during a swap
//    draw_sprite(spr_body_select, 0, x + coord[0], y + coord[1]);
//  }
//}