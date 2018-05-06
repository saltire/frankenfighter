// Collision check for attacking
if (attackTimeRemaining > 0 && !hittingEnemy) {	
	// Check for collision with limbs
	var collisionInstance = collision_rectangle(x + (colRectX1 * image_xscale), y + colRectY1, x + (colRectX2 * image_xscale), y + colRectY2, obj_limb, true, true);
	if (collisionInstance != noone && collisionInstance.host != noone && collisionInstance.host != host) {
		hittingEnemy = true;
		if (random(1) > criticalChance) {
			collisionInstance.durabilityCurrent -= baseAttackValue + slotMatchBonusAttack;
		} else {
			with (collisionInstance) sc_limb_eject(self);
		}
	}
	// Check for collision with bodies
	var collisionInstance = collision_rectangle(x + (colRectX1 * image_xscale), y + colRectY1, x + (colRectX2 * image_xscale), y + colRectY2, obj_player, true, true);
	if (collisionInstance != noone) {
		hittingEnemy = true;
		collisionInstance.durabilityCurrent -= baseAttackValue + slotMatchBonusAttack;
	}
	
}

// Turn off the hit variable trigger
if (attackTimeRemaining <= 0) hittingEnemy = false;