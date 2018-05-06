event_inherited();

attackSprite = spr_tentacle_leg_attack;

// Set hurt box rectangle
colRectX1 = 116 - sprite_xoffset;
colRectY1 = 93 - sprite_yoffset;
colRectX2 = 190 - sprite_xoffset;
colRectY2 = 130 - sprite_yoffset;

// STATS SETUP
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