// Collision check for attacking
if (attackTimeRemaining > 0 && !hittingEnemy) {	
	var collisionInstance = collision_rectangle(x + (colRectX1 * image_xscale), y + colRectY1, x + (colRectX2 * image_xscale), y + colRectY2, obj_limb, true, true);
	if (collisionInstance != noone && collisionInstance.host != noone && collisionInstance.host != host) {
		hittingEnemy = true;
		if (random(1) > criticalChance) {
			collisionInstance.durabilityCurrent -= baseAttackValue + slotMatchBonusAttack;
		} else {
			with (collisionInstance) sc_limb_eject(self);
		}
	}	
}

if (attackTimeRemaining <= 0) hittingEnemy = false;