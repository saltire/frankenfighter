event_inherited();

walkSpeed = 1;

walking = false;
walkDelay = 4;
walkDelayRemaining = noone;

minDistance = 80;
maxAttackDist = 100;

shadowInstance = instance_create_depth(x, y, depth, obj_shadow);
shadowInstance.host = self;