event_inherited();

attackSprite = spr_goat_leg_attack;

// Set hurt box rectangle
colRectX1 = 123 - sprite_xoffset;
colRectY1 = 93 - sprite_yoffset;
colRectX2 = 176 - sprite_xoffset;
colRectY2 = 138 - sprite_yoffset;

// STATS SETUP
slotType = "leg";
baseAttackValue = 20;
attackCooldown = 20;
knockbackStrength = 3 * 3;
criticalChance = 1/20;
durabilityLoss = 2;
durabilityMax = 80;
durabilityCurrent = durabilityMax;
resistance = 1 - (1/8);
slotMatchBonusSpeed = 0;
slotMatchBonusAttack = 0;