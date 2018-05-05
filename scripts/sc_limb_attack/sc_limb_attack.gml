///@param limb

var limb = argument0;

attackCooldownRemaining = limb.attackCooldown;

with (limb) {
  sprite_index = attackSprite;
  attackTimeRemaining = attackTime;
}