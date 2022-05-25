// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ScrPlayerMovement(){

//show_debug_message(inputLeft)

if ( haltMovement ) { exit; }

if (followObject) { // Use this to make the player character follow a NPC somewhere. Stops other movement. 
	ScrPlayerFollowNPC(objToFollow,runSpeed); 
	exit;
} 

if (faceObject) { // Make the player face an object (can still move around)
	ScrPlayerFaceObject(objToFace);
}


// Start sliding, and keep sliding for timer. 
// Slide in direction faced, unless moving, then slide where you are moving. 
if (inputSlide) { //Sliding takes precedence over running. Cannot change direction when sliding. 
	
	// Reset values
	slideDirX = 0; 
	slideDirY = 0; 
	
	if (inputUp+inputDown > 0 && inputLeft+inputRight == 0) {
		// Do nothing, don't start sliding.
	} else {
		
		slideTimer = slideFrames;
		
		if (inputLeft) {slideDirX=-1; image_xscale=-1;} else if (inputRight) {slideDirX=1; image_xscale=1;};
		if (inputUp) {slideDirY=-1} else if (inputDown) {slideDirY=1};
		//slideDirX = inputRight-inputLeft; 
		//slideDirY = inputDown-inputUp;
	}
	
} else if (inputItemUse) { // If slide and item used on same frame, only slide. 
	itemUseTimer = itemUseFrames;
}

// Movement is not an else statement from movement because player should still move if they attempted 
//	to slide up or down. 
if (slideTimer < 0) { // Move Player. 
	
	if (inputLeft)	{
		x = x - runSpeed;
		if (!faceObject) {image_xscale = -1}
	} else if (inputRight)	{
		x = x + runSpeed;
		if (!faceObject) {image_xscale = 1}
	}
	if (inputUp)	{
		y = y - runSpeed;
	} else if (inputDown)	{
		y = y + runSpeed;
	} 
} 

}