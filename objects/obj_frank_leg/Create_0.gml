event_inherited();

attackSprite = spr_frank_leg_attack;

// Set hurt box rectangle
colRectX1 = 131 - sprite_xoffset;
colRectY1 = 100 - sprite_yoffset;
colRectX2 = 162 - sprite_xoffset;
colRectY2 = 136 - sprite_yoffset;

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