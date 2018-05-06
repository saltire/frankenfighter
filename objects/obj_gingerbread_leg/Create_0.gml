event_inherited();

attackSprite = spr_gingerbread_leg_attack;

// Set hurt box rectangle
colRectX1 = 131 - sprite_xoffset;
colRectY1 = 100 - sprite_yoffset;
colRectX2 = 162 - sprite_xoffset;
colRectY2 = 136 - sprite_yoffset;

// STATS SETUP
baseAttackValue = 4;
attackCooldown = 1 * BASEATTACKCOOLDOWN;
criticalChance = 2/20;
durabilityLoss = 2;
durabilityMax = 40;
durabilityCurrent = durabilityMax;

speedBonus = 1;

//knockbackStrength = 3 * 3;
//resistance = 1 - (1/8);
//slotMatchBonusSpeed = 0;
//slotMatchBonusAttack = 0;

// Audio Array
hitsounds[0] = sfx_bone_break;