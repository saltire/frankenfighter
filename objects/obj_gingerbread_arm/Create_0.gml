event_inherited();

attackSprite = spr_gingerbread_arm_attack;

// Set hurt box rectangle
colRectX1 = 64 - sprite_xoffset;
colRectY1 = 48 - sprite_yoffset;
colRectX2 = 116 - sprite_xoffset;
colRectY2 = 65 - sprite_yoffset;

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
hitsounds[0] = sfx_bone_crack;
hitsounds[1] = sfx_bone_crack_lite;
hitsounds[2] = sfx_bone_crack2;