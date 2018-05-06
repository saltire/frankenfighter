///@description HANDLE THE ANIMATION OFFSET FOR LIMBS
///@param moving,walkSpeed

var moving = argument0;
var walkSpeed = argument1;

if (moving) {
	with (leftArm) {
		if (image_speed == 0) {
			image_speed = walkSpeed;
			sc_animation_offset();
		}
	}
	with (rightArm) {
		if (image_speed == 0) {
			image_speed = walkSpeed;
			sc_animation_offset();
		}
	}
	with (leftLeg) {
		if (image_speed == 0) {
			image_speed = walkSpeed;
			sc_animation_offset();
		}
	}
	with (rightLeg) {
		if (image_speed == 0) {
			image_speed = walkSpeed;
			sc_animation_offset();
		}
	}
} else {
	with (leftArm) {
		image_speed = 0;
		image_index = 0;
	}
	with (rightArm) {
		image_speed = 0;
		image_index = 0;
	}
	with (leftLeg) {
		image_speed = 0;
		image_index = 0;
	}
	with (rightLeg) {
		image_speed = 0;
		image_index = 0;
	}	
}