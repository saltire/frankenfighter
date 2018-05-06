// Collision check for attacking
if (attackTimeRemaining > 0 && !hittingEnemy) {	
	// Check for collision with limbs
	var collisionInstance = collision_rectangle(x + (colRectX1 * image_xscale), y + colRectY1, x + (colRectX2 * image_xscale), y + colRectY2, obj_limb, true, true);
	if (collisionInstance != noone && collisionInstance.host != noone && collisionInstance.host != host) {
		hittingEnemy = true;
		if (random(1) > criticalChance) {
			collisionInstance.durabilityCurrent -= baseAttackValue /*+ slotMatchBonusAttack*/;
		} else {
			sc_limb_eject(collisionInstance);
		}
    sc_hit_feedback(collisionInstance);
	}
	// Check for collision with bodies
	var collisionInstance = collision_rectangle(x + (colRectX1 * image_xscale), y + colRectY1, x + (colRectX2 * image_xscale), y + colRectY2, obj_player, true, true);
	if (collisionInstance != noone) {
		hittingEnemy = true;
		collisionInstance.durabilityCurrent -= baseAttackValue /*+ slotMatchBonusAttack*/;
    sc_hit_feedback(collisionInstance);
	}
	
}

// Turn off the hit variable trigger
if (attackTimeRemaining <= 0) hittingEnemy = false;