/// @description Insert description here
// You can write your code in this editor

// If player is within x+/-38 pixels and y+/-15

// Create damage hitbox to damage player
with (instance_create_layer(x+(20*image_xscale),y,oPlayer.layer,oEnemyDamageHitbox)) {
	damage = other.attackDamage;
	damageFrom = other;
}

// Damage player if they are within a distance of attacker
//if (abs(oPlayer.x-x) < (sprite_width/2+oPlayer.sprite_width) && abs(oPlayer.y-y) < 15) {
//	with (oPlayer) {
//		if (invulnerableTime < 0) {
//			hp = max(0,hp-other.attackDamage);
//			invulnerableTime = invulnerableFrames;
//		}
//	}
//}
