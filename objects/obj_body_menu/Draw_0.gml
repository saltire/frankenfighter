draw_self();
if (slot != noone) {
  coord = coords[slot];
  draw_sprite(spr_body_select, 0, x + coord[0], y + coord[1]);
}