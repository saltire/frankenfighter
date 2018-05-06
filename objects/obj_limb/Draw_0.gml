sprite_index = attacking ? attackSprite : idleSprite;
if (armOverride && (slot == 0 || slot == 1)) {
  sprite_index = attacking ? armAttackSprite : armSprite;
}
if (legOverride && (slot == 2 || slot == 3)) {
  sprite_index = attacking ? legAttackSprite : legSprite;
}

if ((hitFeedbackTimeRemaining % 4) > 1) {
  gpu_set_fog(true, hitFeedbackColor, 0, 0);
  draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
  gpu_set_fog(false, c_black, 0, 0);
}
else if (lastHilitePlayer != noone && (lastHilitePlayer.hilightLimb == self || lastHilitePlayer.previewLimb == self)) {
  gpu_set_fog(true, lastHilitePlayer.hilightColor, 0, 0);
  draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
  gpu_set_fog(false, c_black, 0, 0);
}
else {
  draw_self();
}

// Draw hurt boxes
//if (attackTimeRemaining > 0) {
//	draw_rectangle(x + (colRectX1 * image_xscale), y + colRectY1, x + (colRectX2 * image_xscale), y + colRectY2, true);
//}