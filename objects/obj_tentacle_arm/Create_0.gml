event_inherited();

attackSprite = spr_tentacle_arm_attack;
legOverride = true;
legSprite = spr_tentacle_leg_walk;
legAttackSprite = spr_tentacle_leg_attack;

// Set hurt box rectangle
colRectX1 = 97 - sprite_xoffset;
colRectY1 = 48 - sprite_yoffset;
colRectX2 = 114 - sprite_xoffset;
colRectY2 = 62 - sprite_yoffset;

// STATS SETUP
baseAttackValue = 4;
attackCooldown = 0.5 * BASEATTACKCOOLDOWN;
criticalChance = 1/20;
durabilityLoss = 4;
durabilityMax = 80;
durabilityCurrent = durabilityMax;

speedBonus = 0;

//knockbackStrength = 3 * 3;
//resistance = 1 - (1/8);
//slotMatchBonusSpeed = 0;
//slotMatchBonusAttack = 0;