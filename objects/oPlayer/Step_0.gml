/// @description Insert description here
// You can write your code in this editor

ScrControlsChk();

// If invulnerable timer runs out, make player possible to hit. 
if (invulnerableTime >= 0) {
	invulnerableTime--;
}

if (exitTimer > 0) {
	
	// fade screen gradually
	if (exitTimer == exitFrames) {
		with ( oFadeTransition )
		{
			fadeOut = true;
			fadeIn  = false;
			fadeFrames = other.exitFrames;
			fadeTimer  = fadeFrames;
		}
	}
			
	// move character off screen gradually, in correct direction
	if (abs(exitDirectionX)) x = lerp(room_width/2 + ((room_width/2)+32)*exitDirectionX, exitStartX, exitTimer/exitFrames);
	if (abs(exitDirectionY)) y = lerp(room_height/2 + ((room_height/2)+32)*exitDirectionY, exitStartY, exitTimer/exitFrames);
	
	exitTimer--;
	//show_debug_message(exitTimer)
	
	if ( exitTimer == 0 ) { 
		
		// set direction to enter next room
		enterDirectionX = exitDirectionX;
		enterDirectionY = exitDirectionY;
		
		room_goto(targetRoom);
		
		// Set position to run into screen to target position
		x = targetX - (1.5*enterFrames*enterDirectionX);
		y = targetY - (1.5*enterFrames*enterDirectionY);
		
		exitTimer--; //sets back to -1 again. 
		enterTimer = enterFrames; // Sets value to fade back in. 
	}
}
else if (enterTimer > 0) {
	
	if (enterTimer == enterFrames) {
		with ( oFadeTransition)
		{
			fadeOut = false;
			fadeIn = true;
			fadeFrames = other.enterFrames;
			fadeTimer = fadeFrames;
		}
	}
	
	// move character on screen gradually, in correct direction
	if (abs(enterDirectionX)) x = lerp(targetX, x, enterTimer/enterFrames);
	if (abs(enterDirectionY)) y = lerp(targetY, y, enterTimer/enterFrames);
	
	enterTimer--;
	//show_debug_message(enterTimer)
	
	if (enterTimer == 0) {
		// A place to run anything that should immediately happen when entering room
		enterTimer--; //sets back to -1 again. 
	}
	
} else if (deathTimer > 0) {
	
	
	
	
	
	
	
} else if (winTimer > 0) {
	
	
} else if (interacting == true) {
	
	// Do nothing, stop movement options
	
} else if (slideTimer > 0) {
	
	if (slideTimer == slideFrames) {
		image_index = 0;
		with(instance_create_layer(x,y+oPlayer.sprite_height/2,layer,oDashEffect)){
			if (other.image_xscale == -1) image_xscale = -1;
		}
	}
	
	if (slideDirX != 0) {
		x = x + runSpeed*slideDirX*1.3;
		y = y + runSpeed*slideDirY*1.3;
	}
	
	// If no movement input, slide in direction faced. 
	if (slideDirX == 0 && slideDirY == 0) {
		x = x + runSpeed*1.3*image_xscale;
	}
	
	// If sliding and attack is pressed while weapon drawn, lunge
	// Begin attack sequence if attack is pressed. Does not use timer as 
	//	lunge will continue so long as character is sliding
	if (inputAttack && !midAttack) {
		midAttack = true;
		image_index = 0;
	}
	
	if (midAttack) { //Anything else that should happen during lunge attack
		// Create damage hitbox to do damage
		
	}; 
	
	slideTimer--;
	// if opposite x direction is pressed, break from slide. 
	if ((slideDirX > 0 && inputLeft) || (slideDirX < 0 && inputRight)) {slideTimer = 0;}
	if (slideTimer == 0){ // Do once slide ends
		slideTimer--; 
		midAttack = false;
	}

} else { // Things to do while actually moving
	
	// Change item selected if not in use
	if (itemUseTimer < 0) {
		if (input1 == true) {itemSelection = 1}
		else if (input2 == true) {itemSelection = 2}
		else if (input3 == true) {itemSelection = 3}
		else if (input4 == true) {itemSelection = 4}
		else if (input5 == true) {itemSelection = 5}
	}
	
	if (itemUseTimer > 0) { // If using item
		if (itemUseTimer == itemUseFrames) {
			image_index = 0;
		}
		
		// implement item use 50% through using item
		if (itemUseTimer == round(itemUseFrames/2)) {
			if (itemCount[itemSelection-1] > 0) {scrUseItem();}
		}
		
		// Stop item usage if hit (if before half way, item is not used)
		
		
		itemUseTimer--;
		if (itemUseTimer == 0) {
			itemUseTimer--;
		}
	}
	
	if (itemUseTimer < 0) {	// Compute movement if not using item
		
		ScrPlayerMovement(); 
		
		// If you attack while idle/moving
		if (inputAttack && !midAttack) {
			midAttack = true;
			image_index = 0;
			attackDir = image_xscale;
			attackTimer = attackFrames;
		}
		if (attackTimer > 0) {
			
			attackTimer--;
			
			if (image_xscale != attackDir) { // Stop attack if change direction
				midAttack = false;
				attackTimer = 0;
			} 
			
			if (attackTimer == 0) { //at end of attack
				midAttack = false;
				attackTimer--;
			}
			
		}
	}
	
}

//show_debug_message(string(inputAttack) + ", " + string(inputAttackHold) + ", " + string(inputAttackRelease))
//show_debug_message(string(input1) + ", " + string(input2) + ", " + string(input3))

// Set correct sprites if not interacting (talking to NPC, in menu, etc.)
if (interacting == false) {
	ScrSpriteChoice()
}

//Keep the player in bounds.
if ( enterTimer < 0 && exitTimer < 0 )
{
	x = clamp( x, 0, room_width  );
	y = clamp( y, 0, room_height );
}

// Level up system
while (xp_total >= xp_level) {
	level++;
	xp_total = xp_total-xp_level;
	xp_level = xp_level*1.15; //Increase requirement by 15% each level
}
