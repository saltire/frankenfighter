event_inherited();

attackSprite = spr_tetsuo_leg_attack;

// Set hurt box rectangle
colRectX1 = 116 - sprite_xoffset;
colRectY1 = 93 - sprite_yoffset;
colRectX2 = 190 - sprite_xoffset;
colRectY2 = 130 - sprite_yoffset;

// STATS SETUP
baseAttackValue = 15;
attackCooldown = 2 * BASEATTACKCOOLDOWN;
criticalChance = 5/20;
durabilityLoss = 12;
durabilityMax = 120;
durabilityCurrent = durabilityMax;

speedBonus = -2;

//knockbackStrength = 3 * 3;
//resistance = 1 - (1/8);
//slotMatchBonusSpeed = 0;
//slotMatchBonusAttack = 0;

// Audio Array
hitsounds[0] = sfx_bone_squish2;
hitsounds[1] = sfx_bone_squish3;
hitsounds[2] = sfx_squish;
hitsounds[3] = sfx_blunt_squish;