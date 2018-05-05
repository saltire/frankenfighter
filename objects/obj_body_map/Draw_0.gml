draw_self();

for (var s = 0; s < 4; s++) {
  coord = coords[s];
  
  if (filledSlots[s]) {
    // draw an icon for each limb that is attached
    draw_sprite(spr_body_filled, 0, x + coord[0], y + coord[1]);
  }
  if (slot == s) {
    // draw an icon on the currently selected slot during a swap
    draw_sprite(spr_body_select, 0, x + coord[0], y + coord[1]);
  }
}