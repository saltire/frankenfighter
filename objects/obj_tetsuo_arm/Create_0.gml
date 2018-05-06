event_inherited();

attackSprite = spr_tetsuo_arm_attack;

// Set hurt box rectangle
colRectX1 = 117 - sprite_xoffset;
colRectY1 = 34 - sprite_yoffset;
colRectX2 = 173 - sprite_xoffset;
colRectY2 = 63 - sprite_yoffset;

// STATS SETUP
baseAttackValue = 15;
attackCooldown = 2 * BASEATTACKCOOLDOWN;
criticalChance = 5/20;
durabilityLoss = 12;
durabilityMax = 120;
durabilityCurrent = durabilityMax;

//knockbackStrength = 3 * 3;
//resistance = 1 - (1/8);
//slotMatchBonusSpeed = 0;
//slotMatchBonusAttack = 0;