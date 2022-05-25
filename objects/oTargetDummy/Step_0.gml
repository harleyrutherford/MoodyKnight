/// @description Insert description here
// You can write your code in this editor
if (hp <= 0 && canBeHit == true) {
	image_index = 1; // die
	alarm[0] = 400; //	respawn
	canBeHit = false;
	invulnerableTime = -1; // Sets to -1 so it doesn't automatically reset canBeHit
}

if (invulnerableTime > 0) {
	invulnerableTime--;
	if (invulnerableTime == 0) {
		canBeHit = true;
		invulnerableTime--;
	}
}

// Healthbar visible if not full/empty
if (hp < hp_max && hp > 0) {
	if (!instance_exists(minorEnemyHealthbar)) {
		healthbarlayer = layer_create(-9999,"healthbars");
		healthbarobject = instance_create_layer(x,y-sprite_height/2-10,healthbarlayer,minorEnemyHealthbar);	
		with(healthbarobject) {
			objToTrack = oTargetDummy;
		}
	}
} else if (instance_exists(minorEnemyHealthbar)) {instance_destroy(healthbarobject)};


// Make object be behind player if player.y < y. 
if (oPlayer.bbox_bottom < bbox_bottom) {depth = oPlayer.depth-1;}
else {depth = oPlayer.depth+1};
