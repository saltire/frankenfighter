// Collision check for attacking

if (attackTimeRemaining > 0 && !hittingEnemy) {	
	// Check for collision with limbs
	var collisionInstance = collision_rectangle(x + (colRectX1 * image_xscale), y + colRectY1, x + (colRectX2 * image_xscale), y + colRectY2, obj_limb, true, true);
	if (collisionInstance != noone && collisionInstance.host != noone && collisionInstance.host != host) {
		hittingEnemy = true;
		
		sc_audio_hit_sound();
		
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
	if (collisionInstance == noone && attackTimeRemaining >= attackTime - 1 && !hittingEnemy) {
		var i = irandom(1);
		if i == 0 audio_play_sound(sfx_punch_miss_1, 10, false);
		if i == 1 audio_play_sound(sfx_punch_miss_2, 10, false);
		//if i == 2 audio_play_sound(sfx_kick_miss, 10, false);
	}
	
}

// Turn off the hit variable trigger
if (attackTimeRemaining <= 0) hittingEnemy = false;