event_inherited();

attackSprite = spr_robot_leg_attack;

// Set hurt box rectangle
colRectX1 = 54;
colRectY1 = 17;
colRectX2 = 77;
colRectY2 = 41;

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