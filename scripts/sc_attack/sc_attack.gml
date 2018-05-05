// Collision check for attacking
if (attackTimeRemaining > 0 && !hittingEnemy) {
	var collisionInstance = collision_rectangle(x + (colRectX1 * image_xscale), y + colRectY1, x + (colRectX2 * image_xscale), y + colRectY2, obj_limb, false, true);
	if (collisionInstance != noone && collisionInstance.parent != noone) {
		hittingEnemy = true;
		collisionInstance.durabilityCurrent -= baseAttackValue + slotMatchBonusAttack;
	}
}

if (attackTimeRemaining <= 0) hittingEnemy = false;