///@param limb

var limb = argument0;

attackCooldownRemaining = limb.attackCooldown;

with (limb) {
  attacking = true;
  attackTimeRemaining = attackTime;
}

// Lose durability whenever attacking
limb.durabilityCurrent -= limb.durabilityLoss;