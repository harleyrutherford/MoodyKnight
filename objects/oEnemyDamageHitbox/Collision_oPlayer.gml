/// @description Insert description here
// You can write your code in this editor


with (other) {
	if (invulnerableTime < 0) {
		hp = max(0,hp-other.damage);
		invulnerableTime = invulnerableFrames;
	}
}

