event_inherited();

attackSprite = spr_tentacle_leg_attack;
armOverride = true;
armSprite = spr_tentacle_arm_walk;
armAttackSprite = spr_tentacle_arm_attack;

// Set hurt box rectangle
colRectX1 = 116 - sprite_xoffset;
colRectY1 = 93 - sprite_yoffset;
colRectX2 = 190 - sprite_xoffset;
colRectY2 = 130 - sprite_yoffset;

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

// Audio Array
hitsounds[0] = sfx_bone_squish2;
hitsounds[1] = sfx_bone_squish3;
hitsounds[2] = sfx_squish;
hitsounds[3] = sfx_blunt_squish;