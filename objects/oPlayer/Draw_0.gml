/// @description Insert description here
// You can write your code in this editor


weaponImageFrame = 0;
weaponXScale = 1;
weaponYScale = 1;
weaponColour = c_white;
weaponAlpha = 1;
	
itemXScale = 1;
	
// If scroll active, draw magic circle on ground beneath player. 
if (scrollActive) {
	itemFrame++;
	itemFrame = itemFrame % 30;
	draw_sprite(ScrollMagicCircle,floor(itemFrame/10),x,y+sprite_height/2);
}

if (slideTimer > 0 && midAttack) {	// Lunging
	
	weaponOffsetY = 11;
	weaponOffsetX = 9*image_xscale;
	weaponAngle = -90*image_xscale;

	} else if (slideTimer > 0 && !midAttack) { // sliding, not lunging
		
	if (image_index == 1) {
		weaponOffsetX = 13*image_xscale;
		weaponOffsetY = -10;
		weaponAngle = 180 - (40*image_xscale);
	} else {
		weaponOffsetX = -20*image_xscale;
		weaponOffsetY = 0;
		weaponAngle = 180 + (70*image_xscale);
	}
	
} else {							// Idle/running
	
	if (midAttack) { // Swinging weapon while running or idle
		
		if (image_index == 0) {
			weaponOffsetX = 16*image_xscale;
			weaponOffsetY = 2;
			weaponAngle = 100*image_xscale;
		} else if (image_index == 1) {
			weaponOffsetX = 16*image_xscale;
			weaponOffsetY = 2;
			weaponAngle = 95*image_xscale;
		} else if (image_index == 2) {
			weaponOffsetX = 8*image_xscale;
			weaponOffsetY = 13;
			weaponAngle = 290*image_xscale;
		} else if (image_index == 3) {
			weaponOffsetX = 8*image_xscale;
			weaponOffsetY = 13;
		weaponAngle = 280*image_xscale;
		} else if (image_index == 4) {
			weaponOffsetX = 8*image_xscale;
			weaponOffsetY = 13;
			weaponAngle = 270*image_xscale;
		} else if (image_index == 5) {
			weaponOffsetX = 8*image_xscale;
			weaponOffsetY = 13;
			weaponAngle = 270*image_xscale;
		}
		
	} else { // Not attacking, weapon on back. 
		
		weaponOffsetX = 13*image_xscale;
		weaponOffsetY = -20;
		weaponAngle = 180-(40*image_xscale);
		
		// if running, move slightly down for frames 1 and 4
		if (sprite_index == MKnightRun){
			if (image_index == 1 || image_index == 4) {
				weaponOffsetY += 2;
			}
		} else if (sprite_index == MKnightItemUse) {
			
			if (itemSelection == 1) { // Draw red potion
				itemType = RedPotion;
				itemX = x+(11*image_xscale);
				itemY = y+5;
			} else if (itemSelection == 2) { // Draw blue potion
				itemType = BluePotion;
				itemX = x+(11*image_xscale);
				itemY = y+5;
			} else if (itemSelection == 3) { 
				itemType = Scroll;
				itemX = x+(11*image_xscale);
				itemY = y+5;
				itemAngle = 0;
				itemXScale = image_xscale;
			}
			
			// Potion angle selector
			if (itemSelection <= 2) {
				if (image_index < 1 || image_index > 2) {
					itemAngle = 100*image_xscale;
				} else {
					itemAngle = 120*image_xscale;
				}
			}
			
			// Draw item to screen if you have any
			if (itemCount[itemSelection-1] > 0) {
				draw_sprite_ext(itemType,0,itemX,itemY,itemXScale,1,itemAngle,c_white,1)
			}
		}
	}
}

// Draw weapon sprite
draw_sprite_ext(weaponSelected,weaponImageFrame,x+weaponOffsetX,y+weaponOffsetY,weaponXScale,weaponYScale,weaponAngle,weaponColour,weaponAlpha);

// Draw weapon effects
if (slideTimer > 0 && midAttack) { // Lunge attack
	// draw sword sprite
	draw_sprite_ext(GreatswordLungeEffect,weaponImageFrame,x+weaponOffsetX,y+weaponOffsetY,weaponXScale,weaponYScale,weaponAngle,weaponColour,image_index/sprite_get_number(sprite_index));
	// place hitbox (can be present for as long as slide attacking)
	with (instance_create_layer(x+weaponOffsetX*1.2,y+weaponOffsetY,layer,oGreatswordLungeHitbox)) {
			image_angle = other.weaponAngle;
			image_xscale = 1;
			image_yscale = 1;
	}
}
if (slideTimer < 0 && midAttack && image_index > 2 && image_index < 6) { //Swing attack
	// draw sword sprite
	draw_sprite_ext(GreatswordSwingEffect,image_index-2,x+weaponOffsetX,y+weaponOffsetY-10,image_xscale,weaponYScale,weaponAngle,weaponColour,weaponAlpha);
	// place hitbox (but only during frames after sword has been swung). 
	with (instance_create_layer(x+weaponOffsetX*1.2,y+weaponOffsetY,layer,oGreatswordLungeHitbox)) {
		image_angle = other.weaponAngle;
		image_xscale = 1;
		image_yscale = 1;
	}
}



draw_self()

