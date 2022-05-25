/// @description Insert description here
// You can write your code in this editor

// If hp=0, die. 
if (hp <= 0 && deathTimer < 0) {
	speed = 0;
	sprite_index = GoblinDeath;
	image_index = 0;
	deathTimer = deathFrames;
} else if (deathTimer < 0) { //else, if alive
	
	if (oPlayer.interacting == false) { // Only move if player isn't interacting 
		// Walk towards a position to the left or right of player (closest side)
		targetLocationY = oPlayer.y;
		if (oPlayer.x < x) {
			image_xscale = -1;
			targetLocationX = oPlayer.x+30;
		} else {
			image_xscale = 1;
			targetLocationX = oPlayer.x-30;
		}
			
		// When close enough, attack, otherwise walk closer. 
		if (abs(x-targetLocationX) < 10 && abs(y-targetLocationY) < 10 && !midAttack) {
			speed = 0;
			sprite_index = GoblinAttack;
			image_index = 0;
			midAttack = true;
			attackTimer = attackFrames;
			alarm[1] = 24;
		} else if (attackTimer < 0) {
			speed = 1.5;
			direction = point_direction(x,y,targetLocationX,targetLocationY);
		}
		
		if (attackTimer > 0) {
			attackTimer--;
			if (attackTimer == 0) {
				midAttack = false;
				sprite_index = GoblinWalk;
				attackTimer--;
			}
		}
	}
	
} else { // else, if dead
	deathTimer--;
	if (deathTimer == 0) {
		oPlayer.xp_total += xp_value;
		instance_destroy();
	}
}

// if invulnerable, reduce invulnerable timer
if (invulnerableTime > 0) {
	invulnerableTime--;
	if (invulnerableTime == 0) {
		canBeHit = true;
		invulnerableTime--;
	}
}




// Healthbar visible if not full/empty
if (hp < hp_max && hp > 0) {
	if (!variable_instance_exists(id,"healthbarobject")) {
		healthbarlayer = layer_create(-9999,"healthbars");
		healthbarobject = instance_create_layer(x,y-sprite_height/2-10,healthbarlayer,minorEnemyHealthbar);	
		with(healthbarobject) {
			objToTrack = other;
		}
	}
} else if (variable_instance_exists(id,"healthbarobject")) {instance_destroy(healthbarobject)};

// Make object be behind player if player.y < y. 
if (oPlayer.bbox_bottom < bbox_bottom) {depth = oPlayer.depth-1;}
else {depth = oPlayer.depth+1};
