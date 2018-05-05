if (attackCooldownRemaining <= 0) {
	if (lPunchPressed && leftArm != noone) {
	    sc_limb_attack(leftArm);
	}
	else if (rPunchPressed && rightArm != noone) {
	    sc_limb_attack(rightArm);
	}
	else if (lKickPressed && leftLeg != noone) {
	    sc_limb_attack(leftLeg);
	}
	else if (rKickPressed && rightLeg != noone) {
	    sc_limb_attack(rightLeg);
	}
}