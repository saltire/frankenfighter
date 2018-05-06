event_inherited();

attackSprite = spr_goat_leg_attack;

// Set hurt box rectangle
colRectX1 = 123 - sprite_xoffset;
colRectY1 = 93 - sprite_yoffset;
colRectX2 = 176 - sprite_xoffset;
colRectY2 = 138 - sprite_yoffset;

// STATS SETUP
baseAttackValue = 8;
attackCooldown = 1 * BASEATTACKCOOLDOWN;
criticalChance = 4/20;
durabilityLoss = 2;
durabilityMax = 80;
durabilityCurrent = durabilityMax;

speedBonus = 0;

//knockbackStrength = 3 * 3;
//resistance = 1 - (1/8);
//slotMatchBonusSpeed = 0;
//slotMatchBonusAttack = 0;